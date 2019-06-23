<?php
namespace wstmart\api\controller;
use wstmart\api\model\UserAddress;
use think\Validate;
use think\Exception;
use wstmart\api\model\Areas;
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
 * 用户地址控制器
 */

class Address extends Base{
    //protected $beforeActionList = ['checkAuth'];
    /**
    * 设置为默认地址
    */
    public function setDefault(){
        $userAddress = new UserAddress();
        $userId = $this->getUserId();
        $validate = new Validate([
            'id'          => 'require'
        ]);
        $validate->message([
            'id.require'          => '缺少参数:id!'
        ]);
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $re = $userAddress->setDefault($userId,$data['id']);
        $this->response($re);
    }

    /**
    * 获取地址信息
    */
    public function lists(){
        $userId = $this->getUserId();
        $userAddress = new UserAddress();
        try{
            $list = $userAddress->listAddress($userId);
            $this->response(1,'收货地址！',$list);
        }catch(Exception $e){
            $this->response(0,$e->getMessage());
        }
    }
    /**
     * 添加收货地址
     */
    public function add(){
        $userId = $this->getUserId();
        $userAddress = new UserAddress();
        $data = $this->request->param();
        $data['userId'] = $userId;
        $re = $userAddress->addAddress($data);
        $this->response($re);
    }


    /**
     * 获取地区信息
     */
    public function area(){
        try{
            $Areas = new Areas();
            $area = cache('city_info');
            if (empty($area)) {
                $area = $Areas->getTree(0);
                cache('city_info', $area);
            }
            $this->response(1,'地区列表！',$area);
        }catch (Exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

	/**
    * 修改收货地址
    */
    public function toEdit(){
        $userId = $this->getUserId();
        $userAddress = new UserAddress();
        $data = $this->request->param();
        $re = $userAddress->editAddress($userId,$data);
        $this->response($re);
    }
    /**
    * 删除地址
    */
    public function del(){
        $userId = $this->getUserId();
        $userAddress = new UserAddress();
        $address_id = $this->request->param('address_id','');
        if(!$address_id){
            $this->response(0,'地址id请不要为空');
        }
        $re = $userAddress->delAddress($userId,$address_id);
        $this->response($re);
    }
    
    /**
     * 获取用户地址
     */
    public function getById(){
        $userId = $this->getUserId();
        $userAddress = new UserAddress();
        $address_id = $this->request->param('address_id','');
        if(!$address_id){
            $this->response(0,'地址id请不要为空');
        }
        try{
            $re = $userAddress->getAddressById($userId,$address_id);
            $this->response(1,'用户地址',$re);
        }catch (\Exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }
}
