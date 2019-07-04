<?php
namespace wstmart\api\controller;
use think\Response;
use think\exception\HttpResponseException;
use wstmart\api\model\Users;
use think\Exception;
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
 * 基础控制器
 */
use think\Controller;
use think\Db;
use wstmart\util\Strs;
class Base extends Controller {
	public function __construct(){
		parent::__construct();
        $skip_array = ['login','register','get_verify','findpass','quick_login'];
        $action = $this->request->action();
        if(!in_array($action,$skip_array)){
            try {
                $this->_initUser();
            } catch(Exception $e){
                // 这是进行异常捕获
                $this->response(0,$e->getMessage());
            };
        }
	}

    /**
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    private function _initUser()
    {
        $token      = $this->request->param('token');
        if (empty($token)) {
            throw new Exception('缺少必要的参数：token', 0);
        }
        $this->token = $token;
        $user = Users::getUser($token);
        if(empty($user)){
            throw new Exception('用户未登录', -1);
        }
        $this->user     = $user;
        $this->userId   = $user['userId'];
    }

    /**
     * @param $code
     * @param string $msg
     * @param string $data
     * @param array $header
     */
    protected function response($code,$msg = '', $data = '', array $header = [])
    {
        if (is_array($code)) {
            $result = $code;
        }else{
            $result = [
                'code' => $code,
                'msg'  => $msg,
                'data' => $data,
            ];
        }
        $type                                   = 'json';
        $header['Access-Control-Allow-Origin']  = '*';
        $header['Access-Control-Allow-Methods'] = 'GET,POST,PATCH,PUT,DELETE,OPTIONS';
        $response                               = Response::create($result, $type)->header($header);
        throw new HttpResponseException($response);
    }

    /**
     * 获取当前用户信息
     * @return mixed
     */
    protected function getUser(){
        if (!$token = $this->request->param('token')) {
            $this->response(0,'缺少必要的参数：token', $data = '');
        }
        $user = [];
        try {
            if (!$user = Users::getUser($token)) {
                $this->response(0,'没有找到用户信息!', $data = '');
            }
        } catch(\Exception $e){
            $this->response(0,$e->getMessage());
        };
        return $user;
    }

    /**
     * 获取当前登录用户的id
     * @return int
     */
    public function getUserId()
    {
        if (empty($this->userId)) {
            $this->response(-1,'用户未登录!', $data = '');
        }
        return $this->userId;
    }


    public function getUserInfo()
    {
        if (empty($this->user)) {
            $this->response(-1,'用户未登录!', $data = '');
        }
        return $this->user;
    }


	/**
	 * 上传图片
	 */
	public function uploadPic(){
        $this->checkAuth();
		return WSTUploadPic(0);
	}
	/**
    * 编辑器上传文件
    */
    public function editorUpload(){
        $this->checkAuth();
        return WSTEditUpload(0);
    }
	
	/**
	 * 获取验证码
	 */
	public function getVerify(){
		WSTVerify();
	}

	// 登录验证方法--用户
    protected function checkAuth(){
       	$USER = session('WST_USER');
        if(empty($USER)){
        	if(request()->isAjax()){
        		die('{"status":-999,"msg":"您还未登录"}');
        	}else{
        		$this->redirect('home/users/login');
        		exit;
        	}
        }
    }

    /**
     * 计算出唯一的身份令牌
     * @param $appId
     * @param $appSecret
     * @return string
     */
    private function buildAccessToken($appId, $appSecret) {
        $preStr = $appSecret . $appId . time() . Strs::keyGen();
        return md5($preStr);
    }
}