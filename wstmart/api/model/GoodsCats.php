<?php
namespace wstmart\api\model;
use think\Db;
use think\Model;

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
 * 商品分类类
 */
class GoodsCats extends Model {
	protected $pk = 'catId';

    /**
     * 获取列表
     * @param $parentId
     * @param int $isFloor
     * @return array|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
	public function listQuery($parentId,$isFloor = -1){
		$dbo = $this->where(['dataFlag'=>1,'isShow'=>1,'parentId'=>$parentId]);
		if($isFloor!=-1)$dbo->where('isFloor',$isFloor);
		return $dbo->order('catSort asc')->select();
	}


    /**
     * 获取店铺申请的商品分类
     */
    public function getShopApplyGoodsCats($shopId){
    	$ids = Db::name('cat_shops')->where(['shopId'=>$shopId])->column('catId');
    	return $this->getChildIds($ids);
    }

    /**
     * 据父分类获取其下所有子分类[包括自己]
     * @param $ids
     * @param array $data
     * @return array
     */
	public function getChildIds($ids,$data = []){
		$data = array_merge($data,$ids);
		$rs = $this->where([['dataFlag','=',1],['isShow','=',1],['parentId','in',$ids]])->column('catId');
        if(count($rs)>0){
            return $this->getChildIds($rs,$data);
        }else{
        	return $data;
        }
	}

    /**
     * 根据子分类获取其父级分类
     * @param $id
     * @param array $data
     * @return array
     */
	public function getParentIs($id,$data = array()){
		$data[] = $id;
		$parentId = $this->where('catId',$id)->value('parentId');
		if($parentId==0){
			krsort($data);
			return $data;
		}else{
			return $this->getParentIs($parentId, $data);
		}
	}
	public function getParentNames($id){
		if($id<=0)return [];
	    $ids = $this->getParentIs($id);
        $rs = Db::name('goodsCats')->where([['catId','in',$ids]])->field('catName')->order('catId desc')->select();
        $names = [];
        foreach($rs as $v){
            $names[] = $v['catName'];
        }
        return $names;
	}

    /**
     * 获取首页楼层
     * @return array|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getFloors(){
	    $cats1 = $this->where([['dataFlag','=',1],['isShow','=',1] ,['parentId','=',0],['isFloor','=',1]])
		             ->field("catName,catId,subTitle,catImg")->order('catSort')->limit(10)->select();
		if(!empty($cats1)){
			$ids = [];
			foreach ($cats1 as $key =>$v){
				$ids[] = $v['catId'];
			}
			$cats2 = [];
			$rs = $this->where([['dataFlag','=',1],['isShow','=',1],['parentId','in',$ids],['isFloor','=',1]])
				             ->field("parentId,catName,catId,subTitle")->order('catSort asc')->select();
			foreach ($rs as $key => $v){
				$cats2[$v['parentId']][] = $v;
			}
			foreach ($cats1 as $key =>$v){
				$cats1[$key]['children'] = (isset($cats2[$v['catId']]))?$cats2[$v['catId']]:[];
			}
		}
		return $cats1;
    }
}
