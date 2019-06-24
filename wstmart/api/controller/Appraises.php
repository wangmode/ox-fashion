<?php
namespace wstmart\api\controller;
use think\Request;
use wstmart\api\model\GoodsAppraises;
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
 * 评价控制器
 */
class Appraises extends Base{
	// 评价列表
	public function lists(){
		$GoodsAppraises = new GoodsAppraises();
        $userId = $this->getUserId();
        try{
            $rs = $GoodsAppraises->userAppraise($userId);
            $this->response($rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }

	}
	/**
	* 添加评价
	*/
	public function add(){
		$m = new M();
		$rs = $m->add();
		return $rs;

	}
	/**
	* 根据商品id取评论
	*/
	public function getById(){
        $GoodsAppraises = new GoodsAppraises();
        try{
            $rs = $GoodsAppraises->getById();
            $this->response($rs);
        }catch (\think\exception $exception){
            $this->response(0,$exception->getMessage());
        }
	}


}
