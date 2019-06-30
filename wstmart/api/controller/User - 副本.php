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
     * 手机验证码获取（找回密码）
     */
    public function getFindPhone(){
        session('WST_USER',session('findPass.userId'));
        if(session('findPass.userPhone')==''){
            $this->response(0,'你没有预留手机号码，请通过其他方式找回密码！');
        }
        $phoneVerify = rand(100000,999999);
        session('WST_USER',null);
        $rv = ['status'=>-1,'msg'=>'短信发送失败'];
        $tpl = WSTMsgTemplates('PHONE_FOTGET');
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $params = ['tpl'=>$tpl,'params'=>['VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
            $m = new LogSms();
            $rv = $m->sendSMS(0,session('findPass.userPhone'),$params,'getPhoneVerify',$phoneVerify);
        }
        if($rv['status']==1){
            // 记录发送短信的时间,用于验证是否过期
            session('REST_Time',time());
            $USER = [];
            $USER['phoneVerify'] = $phoneVerify;
            $USER['time'] = time();
            session('findPhone',$USER);
            return WSTReturn('短信发送成功!',1);
        }
        return $rv;
    }

    /**
     * 获取验证码（注册）
     */
    public function getPhoneVerifyCode($type = 1){
        $userPhone = Request::post('userPhone');
        if(!WSTIsPhone($userPhone)){
            $this->response(0,'手机号格式不正确');
        }
        $Users= new Users();
        $template = 'PHONE_USER_REGISTER_VERFIY';
        switch ($type){
            case 1://注册
                $rs = $Users->checkUserPhone($userPhone);
                if($rs)$this->response(0,'手机号已存在');
                $template = 'PHONE_USER_REGISTER_VERFIY';
                break;
            case 2:
                session('WST_USER',session('findPass.userId'));
                if(session('findPass.userPhone')==''){
                    $this->response(0,'你没有预留手机号码，请通过其他方式找回密码！');
                }
                $template = 'PHONE_FOTGET';
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
            }


        }
        if($rv['status']==1){
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
            //'token'          => 'require',
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
        //cache()
    }
		    
    /**
	 * 用户退出
	 */
	public function logout(){
		$rs = model('Users')->logout();
		return $rs;
	}
	
	
	/**
	 * 新用户注册
	 */
	public function register(){
		$Users = new Users();
		$rs = $Users->toRegister();
		return $rs;
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
                    return shopReturn('设置失败');
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
	 * 判断手机或邮箱是否存在
	 */
	public function checkLoginKey(){
		$m = new MUsers();
		if(input("post.loginName"))$val=input("post.loginName");
		if(input("post.userPhone"))$val=input("post.userPhone");
		if(input("post.userEmail"))$val=input("post.userEmail");
        $userId = (int)session('WST_USER.userId');
		$rs = WSTCheckLoginKey($val,$userId);
		if($rs["status"]==1){
			return array("ok"=>"");
		}else{
			return array("error"=>$rs["msg"]);
		}
	}
	
	/**
	 * 判断邮箱是否存在
	 */
	public function checkEmail(){
		$data = $this->checkLoginKey();
		if(isset($data['error']))$data['error'] = '对不起，该邮箱已存在';
		return $data;
	}
	
	/**
	 * 判断用户名是否存在/忘记密码
	 */
	public function checkFindKey(){
		$m = new MUsers();
		$userId = (int)session('WST_USER.userId');
		$rs = WSTCheckLoginKey(input("post.loginName"),$userId);
		if($rs["status"]==1){
			return array("error"=>"该用户不存在！");
		}else{
			return array("ok"=>"");
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
     * 修改手机页
     */
    public function editPhone(){
    	//获取用户信息
    	$userId = (int)session('WST_USER.userId');
    	$m = new MUsers();
    	$data = $m->getById($userId);
    	if($data['userPhone']!='')$data['userPhone'] = WSTStrReplace($data['userPhone'],'*',3);
    	$this->assign('data',$data);
    	$process = 'One';
    	$this->assign('process',$process);
    	if($data['userPhone']){
    		return $this->fetch('users/security/user_edit_phone');
    	}else{
    		return $this->fetch('users/security/user_phone');
    	}
    }


    /**
     * 绑定手机/获取验证码
     */
    public function getPhoneVerifyo(){
    	$userPhone = input("post.userPhone");
    	if(!WSTIsPhone($userPhone)){
    		return WSTReturn("手机号格式不正确!");
    		exit();
    	}
    	$rs = array();
    	$m = new MUsers();
    	$rs = WSTCheckLoginKey($userPhone,(int)session('WST_USER.userId'));
    	if($rs["status"]!=1){
    		return WSTReturn("手机号已存在!");
    		exit();
    	}
        $data = $m->getById(session('WST_USER.userId'));
    	$phoneVerify = rand(100000,999999);
        $rv = ['status'=>-1,'msg'=>'短信发送失败'];
        $tpl = WSTMsgTemplates('PHONE_EDIT');
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $params = ['tpl'=>$tpl,'params'=>['LOGIN_NAME'=>$data['loginName'],'VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
            $m = new LogSms();
            $rv = $m->sendSMS(0,$userPhone,$params,'getPhoneVerifyo',$phoneVerify);
        }
    	if($rv['status']==1){
    		$USER = [];
    		$USER['userPhone'] = $userPhone;
    		$USER['phoneVerify'] = $phoneVerify;
    		session('Verify_info',$USER);
    		session('Verify_userPhone_Time',time());
    		return WSTReturn('短信发送成功!',1);
    	}
    	return $rv;
    }

    /**
     * 绑定手机
     */
    public function getPhoneVerifyb(){
        $userPhone = input("post.userPhone");
        if(!WSTIsPhone($userPhone)){
            return WSTReturn("手机号格式不正确!");
            exit();
        }
        $rs = array();
        $m = new MUsers();
        $rs = WSTCheckLoginKey($userPhone,(int)session('WST_USER.userId'));
        if($rs["status"]!=1){
            return WSTReturn("手机号已存在!");
            exit();
        }
        $data = $m->getById(session('WST_USER.userId'));
        $phoneVerify = rand(100000,999999);
        $rv = ['status'=>-1,'msg'=>'短信发送失败'];
        $tpl = WSTMsgTemplates('PHONE_BIND');
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $params = ['tpl'=>$tpl,'params'=>['LOGIN_NAME'=>$data['loginName'],'VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
            $m = new LogSms();
            $rv = $m->sendSMS(0,$userPhone,$params,'getPhoneVerifyb',$phoneVerify);
        }
        if($rv['status']==1){
            $USER = [];
            $USER['userPhone'] = $userPhone;
            $USER['phoneVerify'] = $phoneVerify;
            session('Verify_info',$USER);
            session('Verify_userPhone_Time',time());
            return WSTReturn('短信发送成功!',1);
        }
        return $rv;
    }
    /**
     * 绑定手机
     */
    public function phoneEdito(){
    	$phoneVerify = input("post.Checkcode");
    	$process = input("post.process");
    	$timeVerify = session('Verify_userPhone_Time');
    	if(!session('Verify_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
    		return WSTReturn("地址已失效，请重新验证身份！");
    		exit();
    	}
   		if($phoneVerify==session('Verify_info.phoneVerify')){
   			$m = new MUsers();
   			$rs = $m->editPhone((int)session('WST_USER.userId'),session('Verify_info.userPhone'));
   			if($process=='Two'){
   				$rs['process'] = $process;
   			}else{
   				$rs['process'] = '0';
   			}
   			return $rs;
   		}
   		return WSTReturn("校验码不一致，请重新输入！");
    }
    public function editPhoneSu(){
    	$pr = input("get.pr");
    	$process = 'Three';
    	$this->assign('process',$process);
	    if($pr == 'Two'){
	    	return $this->fetch('users/security/user_edit_phone');
	    }else{
	    	return $this->fetch('users/security/user_phone');
	    }
    }
    /**
     * 获取验证码（修改手机/）
     */
    public function getPhoneVerifyt(){
    	$m = new MUsers();
    	$data = $m->getById(session('WST_USER.userId'));
    	$userPhone = $data['userPhone'];
    	$phoneVerify = rand(100000,999999);
        $rv = ['status'=>-1,'msg'=>'短信发送失败'];
        $tpl = WSTMsgTemplates('PHONE_EDIT');
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $params = ['tpl'=>$tpl,'params'=>['LOGIN_NAME'=>$data['loginName'],'VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
            $m = new LogSms();
            $rv = $m->sendSMS(0,$userPhone,$params,'getPhoneVerifyt',$phoneVerify);
        }
     	if($rv['status']==1){
	    	$USER = [];
	    	$USER['userPhone'] = $userPhone;
	    	$USER['phoneVerify'] = $phoneVerify;
	    	session('Verify_info2',$USER);
	    	session('Verify_userPhone_Time2',time());
	    	return WSTReturn('短信发送成功!',1);
    	}
    	return $rv;
    }
    /**
     * 修改手机
     */
    public function phoneEditt(){
    	$phoneVerify = input("post.Checkcode");
    	$timeVerify = session('Verify_userPhone_Time2');
    	if(!session('Verify_info2.phoneVerify') || time()>floatval($timeVerify)+10*60){
    		return WSTReturn("校验码已失效，请重新发送！");
    		exit();
    	}
    	if($phoneVerify==session('Verify_info2.phoneVerify')){
    		return WSTReturn("验证成功",1);
    	}
    	return WSTReturn("校验码不一致，请重新输入！",-1);
    }
    public function editPhoneSut(){
    	$process = 'Two';
    	$this->assign('process',$process);
    	if(session('Verify_info2.phoneVerify')){
    		return $this->fetch('users/security/user_edit_phone');
    	}
        $this->error('地址已失效，请重新验证身份');
    }
    /****************************************************** 忘记密码 **********************************************************/
    /**
     * 忘记支付密码
     */
    public function backPayPass(){
    	$m = new MUsers();
    	$userId = (int)session('WST_USER.userId');
    	$user = $m->getById($userId);
    	$userPhone = $user['userPhone'];
    	$user['userPhone'] = WSTStrReplace($user['userPhone'],'*',3);
    	$user['phoneType'] = empty($userPhone)?0:1;
    	$backType = (int)session('Type_backPaypwd');
    	$timeVerify = session('Verify_backPaypwd_Time');
    	$process = 'One';
    	$this->assign('data', $user);
    	$this->assign('process', $process);
    	return $this->fetch('users/security/user_edit_pay');
    }
    /**
     * 忘记支付密码：发送短信
     */
    public function  getphoneverifypay(){
    	$m = new MUsers();
    	$data = $m->getById(session('WST_USER.userId'));
    	$userPhone = $data['userPhone'];
    	$phoneVerify = rand(100000,999999);
    	$rv = ['status'=>-1,'msg'=>'短信发送失败'];
    	$tpl = WSTMsgTemplates('PHONE_FOTGET_PAY');
    	if( $tpl['tplContent']!='' && $tpl['status']=='1'){
    		$params = ['tpl'=>$tpl,'params'=>['LOGIN_NAME'=>$data['loginName'],'VERFIY_CODE'=>$phoneVerify,'VERFIY_TIME'=>10]];
    		$m = new LogSms();
    		$rv = $m->sendSMS(0,$userPhone,$params,'getPhoneVerifyt',$phoneVerify);
    	}
    	if($rv['status']==1){
    		$USER = [];
    		$USER['userPhone'] = $userPhone;
    		$USER['phoneVerify'] = $phoneVerify;
    		session('Verify_backPaypwd_info',$USER);
    		session('Verify_backPaypwd_Time',time());
    		return WSTReturn('短信发送成功!',1);
    	}
    	return $rv;
    }
    /**
     * 忘记支付密码：验证
     */
    public function payEditt(){
    	$payVerify = input("post.Checkcode");
    	$timeVerify = session('Verify_backPaypwd_Time');
    	if(!session('Verify_backPaypwd_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
    		return WSTReturn("校验码已失效，请重新发送！");
    		exit();
    	}
    	if($payVerify==session('Verify_backPaypwd_info.phoneVerify')){
    		return WSTReturn("验证成功",1);
    	}
    	return WSTReturn("校验码不一致，请重新输入！",-1);
    }
    public function editPaySut(){
    	$process = 'Two';
    	$this->assign('process',$process);
    	if(session('Verify_backPaypwd_info.phoneVerify')){
    		return $this->fetch('users/security/user_edit_pay');
    	}
    	$this->error('地址已失效，请重新验证身份');
    }
    /**
     * 忘记支付密码：设置
     */
    public function payEdito(){
    	$process = input("post.process");
    	$timeVerify = session('Verify_backPaypwd_Time');
    	if(!session('Verify_backPaypwd_info.phoneVerify') || time()>floatval($timeVerify)+10*60){
    		return WSTReturn("地址已失效，请重新验证身份！");
    		exit();
    	}
    	$m = new MUsers();
    	$rs = $m->resetbackPay();
    	if($process=='Two'){
    		$rs['process'] = $process;
    	}else{
    		$rs['process'] = '0';
    	}
    	return $rs;
    }
    /**
     * 忘记支付密码：完成
     */
    public function editPaySu(){
    	$pr = input("get.pr");
    	$process = 'Three';
    	$this->assign('process',$process);
    	if($pr == 'Two'){
    		return $this->fetch('users/security/user_edit_pay');
    	}else{
    		return $this->fetch('users/security/user_pay_pass');
    	}
    }
    /**
     * 忘记密码
     */
    public function forgetPass(){
    	return $this->fetch('forget_pass');
    }
    public function forgetPasst(){
    	if(time()<floatval(session('findPass.findTime'))+30*60){
	    	$userId = session('findPass.userId');
	    	$m = new MUsers();
	    	$info = $m->getById($userId);
	    	if($info['userPhone']!='')$info['userPhone'] = WSTStrReplace($info['userPhone'],'*',3);
	    	if($info['userEmail']!='')$info['userEmail'] = WSTStrReplace($info['userEmail'],'*',2,'@');
	    	$this->assign('forgetInfo',$info);
	    	return $this->fetch('forget_pass2');
    	}else{
    		$this->error('页面已过期！');
    	}
    }
    // 重置密码
    public function resetPass(){
         if(!session('findPass')){
            $this->error('连接已失效！',url('home/users/index'));
         }
        if(time()>floatval(session('REST_Time'))+30*60)$this->error('连接已失效！');
        return $this->fetch('forget_pass3');
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
    public function forgetPassf(){
    	return $this->fetch('forget_pass4');
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
     * 发送验证邮件/找回密码
     */
    public function getfindEmail(){
    	$code = rand(0,999999);
        $sendRs = ['status'=>-1,'msg'=>'邮件发送失败'];
        $tpl = WSTMsgTemplates('EMAIL_FOTGET');
        if( $tpl['tplContent']!='' && $tpl['status']=='1'){
            $find = ['${LOGIN_NAME}','${SEND_TIME}','${VERFIY_CODE}','${VERFIY_TIME}'];
            $replace = [session('findPass.loginName'),date('Y-m-d H:i:s'),$code,30];
            $sendRs = WSTSendMail(session('findPass.userEmail'),'密码重置',str_replace($find,$replace,$tpl['content']));
        }
        if($sendRs['status']==1){
            $uId = session('findPass.userId');
            session("findPass.key", $code);
            // 发起重置密码的时间;
            session('REST_Time',time());
            return WSTReturn("发送成功",1);
        }else{
            return WSTReturn($sendRs['msg'],-1);
        }
    }
    
    /**
     * 加载登录小窗口
     */
    public function toLoginBox(){
    	return $this->fetch('box_login');
    }

    /**
    * 跳去修改支付密码页
    */
    public function editPayPass(){
        $m = new MUsers();
        //获取用户信息
        $userId = (int)session('WST_USER.userId');
        $data = $m->getById($userId);
        $this->assign('data',$data);
        return $this->fetch('users/security/user_pay_pass');
    }
    /**
    * 修改支付密码
    */
    public function payPassEdit(){
        $userId = (int)session('WST_USER.userId');
        $m = new MUsers();
        $rs = $m->editPayPass($userId);
        return $rs;
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

