<?php
namespace wstmart\api\controller;
use think\Db;
use think\Exception;
use wstmart\api\model\Goods as M;
use wstmart\common\model\Goods as CM;
use wstmart\common\model\Attributes as AT;
use wstmart\api\model\GoodsCats;
use think\Validate;
/**
 * ============================================================================
 * WSTMart多用户商城
 * 版权所有 2016-2066 广州商淘信息科技有限公司，并保留所有权利。
 * 官网地址:http://www.wstmart.net
 * 交流社区:http://bbs.shangtao.net
 * 联系QQ:153289970
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！未经本公司授权您只能在不用于商业目的的前提下对程序代码进行修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * 商品控制器
 */
class Goods extends Base{
    /**
     * 获取商品规格属性
     */
    public function getSpecAttrs(){
    	$m = new M();
    	return $m->getSpecAttrs();
    }
    /**
     * 进行商品搜索
     */
    public function search(){
    	//获取商品记录
    	$m = new M();
    	$data = [];
    	$data['isStock'] = Input('isStock/d');
    	$data['isNew'] = Input('isNew/d');
        $data['isFreeShipping'] = input('isFreeShipping/d');
    	$data['orderBy'] = Input('orderBy/d');
    	$data['order'] = Input('order/d',1);
    	$data['keyword'] = input('keyword');
    	$data['minPrice'] = Input('minPrice/d');
    	$data['maxPrice'] = Input('maxPrice/d');
        $data['areaId'] = (int)Input('areaId');
        $aModel = model('home/areas');

        // 获取地区
        $data['area1'] = $data['area2'] = $data['area3'] = $aModel->listQuery(); // 省级

        // 如果有筛选地区 获取上级地区信息

        if($data['areaId']!==0){
            $areaIds = $aModel->getParentIs($data['areaId']);
            /*
              2 => int 440000
              1 => int 440100
              0 => int 440106
            */
            $selectArea = [];
            $areaName = '';
            foreach($areaIds as $k=>$v){
                $a = $aModel->getById($v);
                $areaName .=$a['areaName'];
                $selectArea[] = $a;
            }
            // 地区完整名称
            $selectArea['areaName'] = $areaName;
            // 当前选择的地区
            $data['areaInfo'] = $selectArea;
            $data['area2'] = $aModel->listQuery($areaIds[2]); // 广东的下级

            $data['area3'] = $aModel->listQuery($areaIds[1]); // 广州的下级
        }


    	$data['goodsPage'] = $m->pageQuery();
    	return $this->fetch("goods_search",$data);
    }

    /**
     * 获取商品列表
     */
    public function lists(){
    	$catId = (int)Input('cat/d');
        $goodsCatIds = [];
        if($catId>0){
            $goodsCatIds = model('GoodsCats')->getParentIs($catId);
        }
    	reset($goodsCatIds);
    	//填充参数
    	$data = [];
    	$data['catId'] = $catId;
    	$data['isStock'] = Input('isStock/d');
    	$data['isNew'] = Input('isNew/d');
        $data['isFreeShipping'] = input('isFreeShipping/d');
    	$data['orderBy'] = Input('orderBy/d');
    	$data['order'] = Input('order/d',1);
    	$data['minPrice'] = Input('minPrice');
    	$data['maxPrice'] = Input('maxPrice');
    	$data['attrs'] = [];

        $data['areaId'] = (int)Input('areaId');
        $aModel = model('home/areas');

        // 分类信息
        $catInfo = Db::name("goods_cats")->field("seoTitle,seoKeywords,seoDes,catListTheme")->where(['catId'=>$catId,'dataFlag'=>1])->find();
        $this->assign("catInfo",$catInfo);
    	$brandIds = Input('brand');
        $bgIds = [];// 品牌下的商品Id
        $data['brandFilter'] = model('Brands')->goodsListQuery((int)current($goodsCatIds));
        if(!empty($brandIds))$bgIds = model('Brands')->getGoodsIds($brandIds);
    	$data['price'] = Input('price');
    	//封装当前选中的值
    	$selector = [];
    	//处理品牌
        $brandIds = explode(',',$brandIds);
        $bIds = $brandNames = [];
        foreach($brandIds as $bId){
        	if($bId>0){
        		foreach ($data['brandFilter'] as $key =>$v){
        			if($v['brandId']==$bId){
                        array_push($bIds, $v['brandId']);
                        array_push($brandNames, $v['brandName']);
                    }
        		}
                $selector[] = ['id'=>join(',',$bIds),'type'=>'brand','label'=>"品牌","val"=>join('、',$brandNames)];
            }
        }
        // 当前是否有品牌筛选
        if(!empty($selector)){
            $_s[] = $selector[count($selector)-1];
            $selector = $_s;
            unset($data['brandFilter']);
        }
        $data['brandId'] = Input('brand');

    	//处理价格
    	if($data['minPrice']!='' && $data['maxPrice']!=''){
    		$selector[] = ['id'=>0,'type'=>'price','label'=>"价格","val"=>$data['minPrice']."-".$data['maxPrice']];
    	}
        if($data['minPrice']!='' && $data['maxPrice']==''){
        	$selector[] = ['id'=>0,'type'=>'price','label'=>"价格","val"=>$data['maxPrice']."以上"];
    	}
        if($data['minPrice']=='' && $data['maxPrice']!=''){
        	$selector[] = ['id'=>0,'type'=>'price','label'=>"价格","val"=>"0-".$data['maxPrice']];
    	}
    	//处理已选属性
        $at = new AT();
    	$goodsFilter = $at->listQueryByFilter($catId);
    	$ngoodsFilter = [];

        if(!empty($bgIds))$goodsFilter = model('Attributes')->getAttribute($bgIds);// 存在品牌筛选
        // 当前无筛选条件,取出分类下所有属性
        foreach ($goodsFilter as $key =>$v){
            //if(!in_array($v['attrId'],$vs))
                $ngoodsFilter[] = $v;
        }

    	$data['selector'] = $selector;
        $attrs = [];
        foreach ($ngoodsFilter as $k => $val) {
           $result = array_unique($ngoodsFilter[$k]['attrVal']);
           $ngoodsFilter[$k]['attrVal'] = $result;
        }
    	$data['goodsFilter'] = $ngoodsFilter;
    	//获取商品记录
    	$m = new M();
    	$data['priceGrade'] = $m->getPriceGrade($goodsCatIds);
    	$data['goodsPage'] = $m->pageQuery($goodsCatIds);
        $catPaths = model('goodsCats')->getParentNames($catId);

        $data['catNamePath'] = '全部商品分类';
        if(!empty($catPaths))$data['catNamePath'] = implode(' - ',$catPaths);
        $this->response(1,'商品列表',$data);

    }

    /**
     * 查看商品详情
     */
    public function detail(){
        $userId = $this->getUserId();
        $validate = new Validate([
            'goodsId'          => 'require',
        ]);
        $validate->message([
            'goodsId.require'          => '商品id格式错误!',
        ]);
        $data = $this->request->param();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $m = new M();
        try{
            $goods = $m->getBySale(input('goodsId/d',0),$userId);
        }catch(\Exception $e){
            $this->response(0,$e->getMessage());
        }
        if(!empty($goods)){
            $history = cookie("history_goods");
            $history = is_array($history)?$history:[];
            array_unshift($history, (string)$goods['goodsId']);
            $history = array_values(array_unique($history));

            if(!empty($history)){
                cookie("history_goods",$history,25920000);
            }
            $goods['goodsDesc'] = formatUrl($goods['goodsDesc'],1);
            $this->response(1,'商品详情',$goods);
        }else{
            $this->response(0,'商品不存在');
        }
    }

    /**
     * 获取商品属性
     */
    public function get_spec()
    {
        $validate = new Validate([
            'goodsId'          => 'require',
        ]);
        $validate->message([
            'goodsId.require'          => '商品id格式错误!',
        ]);
        $data = $this->request->param();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $m = new M();
        $re = $m->getSpec($data['goodsId']);
        $this->response($re);
    }

    /**
     * 分享
     */
    public function share()
    {
        $validate = new Validate([
            'goodsId'          => 'require',
        ]);
        $validate->message([
            'goodsId.require'          => '商品id格式错误!',
        ]);
        $data = $this->request->param();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $m = new M();
        $re= $m->shareInfo();
        $this->response($re);
    }

    //分类列表
    public function catsList(){
        $GoodsCats = new GoodsCats();
        try{
            $category = $GoodsCats->getFloors();
            $this->response(1,'商品分类',$category);
        }catch (Exception $e){
            $this->response(1,'获取商品分类错误！'.$e->getMessage());
        }
    }

	/**
	 * 获取商品浏览记录
	 */
	public function historyByGoods(){
		$rs = model('Tags')->historyByGoods(8);
		return WSTReturn('',1,$rs);
	}

}
