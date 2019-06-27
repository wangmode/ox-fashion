<?php
namespace wstmart\api\controller;
use wstmart\api\model\Orders;
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
 * 订单控制器
 */
class Order extends Base{

    /**
    * 提交订单
    */
	public function submit(){
        $validate = new Validate([
            'addressId'          => 'require'
        ]);
        $validate->message([
            'addressId.require'          => '缺少参数:addressId!'
        ]);

        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $userId = $this->getUserId();
		$Orders = new Orders();
		try{
            $rs = $Orders->submit($data['addressId'],$userId);
            $this->response($rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}

    //订单评价列表
	public function orderAppraise(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        $validate = new Validate([
            'orderId'          => 'require'
        ]);
        $validate->message([
            'orderId.require'          => '缺少参数:orderId!'
        ]);
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        try{
            $data = $Orders->getOrderInfoAndAppr($userId,$data['orderId']);
            $this->response(1,'评价列表！',$data);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
     * 待付款列表
     */
	function waitPay(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId,-2);
            $this->response(1,'订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
	 * 等待收货列表
	 */
    public function waitReceive(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId,[0,1]);
            $this->response(1,'订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}

    /**
     * 等全部订单
     */
    public function all(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId);
            $this->response(1,'全部订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
     * 待评价列表
     */
    public function  waitAppraise(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId,2,0);
            $this->response(1,'订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
     * 已完成订单列表
     */
    public function finish(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId,2,-1);
            $this->response(1,'订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    public function cancel_reason()
    {
        $reason = WSTDatas('ORDER_CANCEL');
        $this->response(1,'取消理由！',$reason);
    }

    /**
     * 用户取消订单
     */
    public function cancellation(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        $rs = $Orders->cancel($userId);
        return $rs;
    }

	/**
	 * 已取消订单waitPay
	 */
    public function cancel(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->userOrdersByPage($userId,-1,-1);
            $this->response(1,'订单列表',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}
	/**
	 * 用户拒收订单
	 */
	public function reject(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        try{
            $rs = $Orders->reject($userId);
            $this->response($rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}

    public function reject_reason()
    {
        $reason = WSTDatas('ORDER_REJECT');
        $this->response(1,'拒绝理由！',$reason);
	}

    /**
     * 提醒发货
     */
    public function noticeDeliver(){
        $Orders = new Orders();
        $userId = $this->getUserId();
        $this->response($Orders->noticeDeliver($userId));
    }


	/**
	 * 用户-拒收/退款列表
	 */
	public function abnormal(){
        $this->assign("p",(int)input("p"));
		$this->checkAuth();
		return $this->fetch('users/orders/list_abnormal');
	}
	/**
	 * 获取用户拒收/退款列表
	 */
    public function abnormalByPage(){
    	$this->checkAuth();
		$m = new M();
		$rs = $m->userOrdersByPage([-3]);
		return WSTReturn("", 1,$rs);
	}


	/**
	 * 用户收货
	 */
	public function receive(){
		$Orders = new Orders();
        $validate = new Validate([
            'orderId'          => 'require'
        ]);
        $validate->message([
            'orderId.require'          => '缺少参数:orderId!'
        ]);
        $userId = $this->getUserId();
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        try{
            $rs = $Orders->receive($data['orderId'],$userId);
            $this->response($rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}

    /**
     * 订单详情
     */
    public function detail(){
        $Orders = new Orders();
        $validate = new Validate([
            'orderId'          => 'require'
        ]);
        $validate->message([
            'orderId.require'          => '缺少参数:orderId!'
        ]);
        $userId = $this->getUserId();
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        try{
            $rs = $Orders->getByView($data['orderId'],$userId);
            $this->response(1,'订单详情！',$rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

	/**
	* 设置完成评价
	*/
	public function complateAppraise($orderId){
		$this->checkAuth();
		$Orders = new Orders();
		return $Orders->complateAppraise($orderId);
	}

}
