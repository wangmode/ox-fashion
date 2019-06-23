<?php
namespace wstmart\api\controller;
use wstmart\api\model\Favorites;
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
 * 收藏控制器
 */
class Follow extends Base{
    public function __construct(){
        parent::__construct();
    }
	/**
	 * 关注的商品列表
	 */
	public function followList(){
        $Favorites = new Favorites();
        $userId = $this->getUserId();
        $pagesize = $this->request->param('pagesize',10,'intval');
        try{
            $data = $Favorites->listGoods($userId,$pagesize);
            $this->response(1,'关注商品',$data);
        }catch(\think\exception $e){
            $this->response(0,$e->getMessage());
        }
	}

	/**
	 * 取消关注
	 */
	public function cancel(){
		$Favorites = new Favorites();
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
        $userId = $this->getUserId();
        $id =$this->request->post('id/d');
        try{
            $rs = $Favorites->delFavorites($id,$userId);
            $this->response($rs);
        }catch(\think\exception $e){
            $this->response(0,$e->getMessage());
        }

	}
	/**
	 * 增加关注
	 */
	public function add(){
        $Favorites = new Favorites();
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
        $userId = $this->getUserId();
        $id =$this->request->post('id/d');
		$rs = $Favorites->addFavorites($id,$userId);
        $this->response($rs);
	}
}
