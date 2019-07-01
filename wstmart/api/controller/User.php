<?php
namespace wstmart\api\controller;
use think\Exception;
use think\facade\Request;
use wstmart\api\model\Users;
use wstmart\common\model\Users as CUsers;
use wstmart\common\model\LogSms;
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
 * 用户控制器
 */
class User extends Base{
    public function index(){
        $user = $this->getUserInfo();
        $this->response(1,'用户信息',$user);
    }

    public function password(){
        $userId = $this->getUserId();
        $Users = new Users();
        try{
            $Users->editPass($userId);
            $this->response(1,'修改成功！');
        }catch (Exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
     * 获取验证码
     */
    public function getPhoneVerifyCode(){
        $Users= new Users();
        $type = Request::post('type',1);
        switch ($type){
            case 1://注册
                $userPhone = Request::post('userPhone');
                if(!WSTIsPhone($userPhone))$this->response(0,'手机号格式不正确');
                $rs = $Users->checkUserPhone($userPhone);
                if($rs)$this->response(0,'手机号已存在');
                $template = 'PHONE_USER_REGISTER_VERFIY';
                break;
            case 2://忘记密码
                session('WST_USER',session('findPass.userId'));
                $userPhone = session('findPass.userPhone');
                if($userPhone == ''){
                    $this->response(0,'你没有预留手机号码，请通过其他方式找回密码！');
                }
                $template = 'PHONE_FOTGET';
                break;
            case 3://修改手机号
                $data = $this->getUser();
                $userPhone = $data['userPhone'];
                $template = 'PHONE_EDIT';
                break;
            case 4://支付密码
                $data = $this->getUser();
                $userPhone = $data['userPhone'];
                $template = 'PHONE_FOTGET_PAY';
                break;
            case 5://绑定手机
                $userPhone = Request::post('userPhone');
                if(!WSTIsPhone($userPhone))$this->response(0,'手机号格式不正确');
                $rs = $Users->checkUserPhone($userPhone);
                if($rs)$this->response(0,'手机号已存在');
                $template = 'PHONE_BIND';
                break;
            default:
                $userPhone = Request::post('userPhone');
                if(!WSTIsPhone($userPhone))$this->response(0,'手机号格式不正确');
                $rs = $Users->checkUserPhone($userPhone);
                if($rs)$this->response(0,'手机号已存在');
                $template = 'PHONE_USER_REGISTER_VERFIY';
                break;
        }
        $phoneVerify = rand(100000,999999);
        $rv = ['status'=>-1,'msg'=>'短信发送失败'];
        $tpl = WSTMsgTemplates($template);
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $params = ['tpl'=>$tpl,'params'=>['MALL_NAME'=>WSTConf("CONF.mallName"),'VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
            $m = new LogSms();
            $rv = $m->sendSMS(0,$userPhone,$params,'getPhoneVerify',$phoneVerify);
        }
        if($rv['status']==1){
            switch ($type){
                case 1://注册
                    session('VerifyCode_userPhone',$userPhone);
                    session('VerifyCode_userPhone_Verify',$phoneVerify);
                    session('VerifyCode_userPhone_Time',time());
                    break;
                case 2:
                    // 记录发送短信的时间,用于验证是否过期
                    session('REST_Time',time());
                    $USER = [];
                    $USER['phoneVerify'] = $phoneVerify;
                    $USER['time'] = time();
                    session('findPhone',$USER);
                    break;
                case 3:
                    $USER = [];
                    $USER['userPhone'] = $userPhone;
                    $USER['phoneVerify'] = $phoneVerify;
                    session('Verify_info2',$USER);
                    session('Verify_userPhone_Time2',time());
                    break;
                case 4:
                    $USER = [];
                    $USER['userPhone'] = $userPhone;
                    $USER['phoneVerify'] = $phoneVerify;
                    session('Verify_backPaypwd_info',$USER);
                    session('Verify_backPaypwd_Time',time());
                    break;
                case 5://绑定手机
                    $USER = [];
                    $USER['userPhone'] = $userPhone;
                    $USER['phoneVerify'] = $phoneVerify;
                    session('Verify_info',$USER);
                    session('Verify_userPhone_Time',time());
                    break;
                default:
                    session('VerifyCode_userPhone',$userPhone);
                    session('VerifyCode_userPhone_Verify',$phoneVerify);
                    session('VerifyCode_userPhone_Time',time());
                    break;
            }
            $this->response(1,'短信发送成功！',['verify'=>$phoneVerify]);
        }else{
            $this->response(0,$rv['msg']);
        }
    }


    /**
     * 用户自动登录
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function login()
    {
        $model = new Users();
        $validate = new Validate([
            'account'          => 'require',
            'password'         => 'require',
        ]);
        $validate->message([
            'account.require'          => '缺少参数:account!',
            'password.require'          => '缺少参数:password!',
        ]);
        $data = $this->request->param();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
        $re = $model->appLogin($data);
        $this->response($re);
    }

    function checkLogin(){
        $validate = new Validate([
            'token'          => 'require',
        ]);
        $validate->message([
            'code.require'          => '缺少参数:token!',
        ]);
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->response(0,$validate->getError());
        }
    }
	
	
	/**
	 * 新用户注册
	 */
	public function register(){
		$Users = new Users();
		$rs = $Users->toRegister();
		$this->response($rs);
	}

    /**
     *  找回密码
     */
    public function findPass()
    {
        $user = new Users();
        $step = Request::post('step');
        switch ($step) {
            case 1:
                $loginName = Request::post('loginName');
                $re = $user->getUserInfo($loginName);
                if(!$re['code']){
                    $this->response($re);
                }
                $info = $re['data'];
                session('findPass',array('userId'=>$info['userId'],'loginName'=>$loginName,'userPhone'=>$info['userPhone'],'userEmail'=>$info['userEmail'],'loginSecret'=>$info['loginSecret'],'findTime'=>time()));
                $this->response(1,"操作成功");
                break;
            case 2:
                $phoneVerify = Request::post('Checkcode');
                if(!$phoneVerify){
                    return shopReturn('校验码不能为空!',0);
                }
                $re =  $this->checkFindPhone($phoneVerify);
                $this->response($re);
                break;
            case 3:
                $resetPass = session('REST_success');
                if($resetPass != 1)$this->error("页面已失效!");
                $loginPwd = Request::post('loginPwd');
                $repassword = Request::post('repassword');
                $decrypt_data = WSTRSA($loginPwd);
                $decrypt_data2 = WSTRSA($repassword);
                if($decrypt_data['status']==1 && $decrypt_data2['status']==1){
                    $loginPwd = $decrypt_data['data'];
                    $repassword = $decrypt_data2['data'];
                }else{
                    return shopReturn('设置失败',0);
                }
                if ($loginPwd == $repassword) {
                    $Users = new Users();
                    $re = $Users->resetPass();
                    $this->response($re);
                }else{
                    $this->response(0,'两次密码不同！');
                }
                break;
            default :
                $this->response(0,'页面已过期！');
                break;
        }
    }


	/**
    * 修改个人资料
    */
    public function toEdit(){
        $Users = new Users();
        $id = $this->getUserId();
        try{
            $rs = $Users->edit($id);
            $this->response(1,'操作成功！');
        }catch (Exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

    /**
     * 绑定手机
     */
    public function phoneUpdate(){
        $phoneVerify = Request::post('Checkcode');
    	$timeVerify = session('Verify_userPhone_Time');
    	$user_id = $this->getUserId();
    	if(!session('Verify_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
            $this->response(0,'页面已失效，请重新验证身份！');
    	}
   		if($phoneVerify==session('Verify_info.phoneVerify')){
   			$Users = new Users();
   			$rs = $Users->editPhone($user_id,session('Verify_info.userPhone'));
            $this->response($rs);
   		}
        $this->response(0,"校验码不一致，请重新输入！");
    }

    /**
     * 修改手机
     */
    public function phoneEdit(){
        $phoneVerify = Request::post('Checkcode');
    	$timeVerify = session('Verify_userPhone_Time2');
    	if(!session('Verify_info2.phoneVerify') || time()>floatval($timeVerify)+10*60){
    	    $this->response(0,"校验码已失效，请重新发送！");
    	}
    	if($phoneVerify==session('Verify_info2.phoneVerify')){
            $this->response(1,"校验证成功！");
    	}
        $this->response(0,"校验码不一致，请重新输入！");
    }
    /**********************忘记密码 ************************/
    /**
     * 忘记支付密码：验证
     */
    public function payValidate(){
        $payVerify = Request::post('Checkcode');
    	$timeVerify = session('Verify_backPaypwd_Time');
    	if(!session('Verify_backPaypwd_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
            $this->response(0,"校验码已失效，请重新发送！");
    	}
    	if($payVerify==session('Verify_backPaypwd_info.phoneVerify')){
            $this->response(1,"验证成功！");
    	}
        $this->response(0,"校验码不一致，请重新输入！");
    }

    /**
     * 忘记支付密码：设置
     */
    public function payReSet(){
    	$timeVerify = session('Verify_backPaypwd_Time');
    	if(!session('Verify_backPaypwd_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
    	    $this->response(0,"地址已失效，请重新验证身份！");
    	}
    	$userId = $this->getUserId();
    	$Users = new Users();
    	$rs = $Users->resetPay($userId);
        $this->response($rs);
    }

    // 验证校验码
    public function forgetPasss(){
        if(!session('findPass')){
            $this->error('连接已失效！');
         }
        if(time()>floatval(session('REST_Time'))+30*60)$this->error('连接已失效！');
        $USER = session('findPass');
        if(empty($USER) && $USER['userId']!=''){
            $this->error('请在同一浏览器操作！');
        }
        $USER = session('findPass');
        if(empty($USER) && $USER['userId']!=''){
            $this->expire('请在同一浏览器操作！');
        }
        $uId = session('findPass.userId');
        $key = session("findPass.key");
        // 验证邮箱中的验证码
        $secretCode = input('secretCode');
        if($key==$secretCode){
            session('REST_userId',$uId);
            session('REST_success','1');
            return WSTReturn('验证成功',1);
        }else{
            return WSTReturn('校验码错误',-1);
        }
    }
    


    /**
     * 手机验证码检测
     * -1 错误，1正确
     * @param $phoneVerify
     * @return array
     */
    public function checkFindPhone($phoneVerify){
    	if(!session('findPhone.phoneVerify') || time()>floatval(session('findPhone.time'))+10*60){
            return shopReturn("校验码已失效，请重新发送！");
        }
        if (session('findPhone.phoneVerify') == $phoneVerify ) {
            $userId = session('findPass.userId');
            if(!empty($userId)){
                session('REST_userId',$userId);
                session('REST_success','1');
                return shopReturn('验证通过',1);
            }
            return shopReturn('无效用户',0);
        }
        return shopReturn('校验码错误!',0);
    }

    /**
    * 修改支付密码
    */
    public function payPassEdit(){
        $userId = $this->getUserId();
        $Users = new Users();
        $rs = $Users->editPayPass($userId);
        $this->response($rs);
    }

    /**
     * 获取用户金额
     */
    public function getUserMoney(){
        $m = new MUsers();
        $rs = $m->getFieldsById((int)session('WST_USER.userId'),'userMoney,lockMoney,rechargeMoney,payPwd');
        $rs['isSetPayPwd'] = ($rs['payPwd']=='')?0:1;
        $rs['isDraw'] = ((float)WSTConf('CONF.drawCashUserLimit')<=$rs['userMoney'])?1:0;
        unset($rs['payPwd']);
        return WSTReturn('',1,$rs);
    }
}

