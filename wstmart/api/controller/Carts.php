<?php
namespace wstmart\api\controller;
use wstmart\api\model\Carts as M;
use wstmart\common\model\Payments as PM;
use think\Validate;
use think\Exception;
use wstmart\api\model\UserAddress;
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
 * 购物车控制器
 */
class Carts extends Base{
	//protected $beforeActionList = ['checkAuth'];
    /**
    * 加入购物车
    */
	public function add(){
		$m = new M();
		$info = $this->request->post();
        $validate = new Validate([
            'goodsId'          => 'number',
            'cartNum'          => 'number',
        ]);
        $validate->message([
            'goodsId.number'          => '商品id格式错误!',
            'cartNum.number'          => '商品数量格式错误!',
        ]);
        if (!$validate->check($info)) {
            $this->response(0,$validate->getError());
        }
        $goodsSpecId = 0;
        if(isset($info['goodsSpecId'])){
            $goodsSpecId = $info['goodsSpecId'];
        }
        try{
            $userId = $this->getUserId();
            $rs = $m->addCart($userId,$info['goodsId'],$info['cartNum'],$goodsSpecId);
            $this->response($rs);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
	}

    public function settlement(){
        $m = new M();
        //获取一个用户地址
        $userAddress = new UserAddress();
        $userId = $this->getUserId();
        $address = $userAddress->getDefaultAddress($userId);

        //获取省份
        //$areas = model('Areas')->listQuery();
        //$this->assign('areaList',$areas);
        //获取支付方式
        $pm = new PM();
        $payments = $pm->getByGroup('1');
        $carts = $m->getCarts(true,$userId);
        if(empty($carts['carts'])){
            $this->response(0,'Sorry~您还未选择商品。。。');
        }
        hook("homeControllerCartsSettlement",["carts"=>$carts,"payments"=>&$payments]);

        //$this->assign('carts',$carts);
        //$this->assign('payments',$payments);
        $shopFreight = 0;
        foreach ($carts['carts'] as $k=>$v){
            if($v['isFreeShipping']){
                $freight = 0;
            }else{
                if(!empty($address)){
                    $freight = WSTOrderFreight($v['shopId'],$address['areaId2']);
                }else{
                    $freight = 0;
                }
            }
            $shopFreight = $shopFreight + $freight;
        }
        $data['address'] = $address;
        $data['carts'] = $carts;
        $data['payments'] = $payments;
        $data['shopFreight'] = $shopFreight;
        $this->response(1,'结算信息！',$data);
    }

    /**
     * 购物车列表
     */
	public function lists(){
        $m = new M();
        try{
            $userId = $this->getUserId();
            $list = $m->getCartInfo($userId,false);
            $rs['code'] = 1;
            $rs['msg'] = '购物车列表！';
            $rs['data'] = $list;
            $this->response($rs);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
    }
	
	/**
	 * 计算运费、积分和总商品价格
	 */
	public function getCartMoney(){
		$m = new M();
        $userId = $this->getUserId();
        try{
            $re = $m->getQuickCartMoney($userId);
            $this->response($re);
        }catch (Exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}

	/**
	 * 修改购物车商品状态
	 */
	public function changeCartGoods(){
		$m = new M();
        try{
            $userId = $this->getUserId();
            $rs = $m->changeCartGoods($userId);
            $this->response($rs);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
	}

	/**
	 * 批量修改购物车商品状态
	 */
	public function batchChangeCartGoods(){
        $m = new M();
        try{
            $userId = $this->getUserId();
            $rs = $m->batchChangeCartGoods($userId);
            $this->response($rs);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
	}

    public function del_cart()
    {
        $m = new M();
        $validate = new Validate([
            'id'          => 'require',
        ]);
        $validate->message([
            'id.require'          => '缺少参数:id!',
        ]);
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        try{
            $userId = $this->getUserId();
            $rs = $m->delCart($userId,$data['id']);
            $this->response($rs);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
	}
}
