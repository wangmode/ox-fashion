<?php
namespace wstmart\api\model;
use think\Exception;
use think\Model;
use wstmart\common\model\Str;
use think\facade\Cache;
use think\Validate;
use think\facade\Request;
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
 * 用户类
 */
use think\Db;
class Users extends Model {
    const APP_ID = 'ox-fashion';
    const AppSecret = 'ox-fashion0507';
    const EXPIRE_TIME = 604800;

    /**
     * 获取用户信息
     * @param $token
     * @return array|bool|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getUser($token)
    {
        $session = Cache::get($token);
        if(!$session){
            return [];
        }
        $userId = $session['userId'];
        $user_info = cache('userInfo'.$userId);
        if($user_info)return $user_info;
        $user_info = Users::where('userId',$userId)->find()->toArray();
        cache('userInfo'.$userId,$user_info,3600);
        return $user_info;
    }

    /**
     * 找回密码获取用户信息
     * @param $userPhone
     * @return array
     */
    public function getUserInfo($userPhone)
    {
        try{
            $info = $this->where([["loginName|userPhone",'=',$userPhone],['dataFlag','=',1]])->find();
            return shopReturn('用户信息！',1,$info);
        }catch (Exception $exception){
            return shopReturn('获取用户信息错误！',0);
        }
    }

    /**
     * @param $info
     * @param int $loginSrc
     * @return array
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function appLogin($info,$loginSrc=1){
        $password = $info['password'];
        $account = $info['account'];
        $rs = $this->where("loginName|userPhone",$account)
            ->where(["dataFlag"=>1, "userStatus"=>1])
            ->find();
        hook("beforeUserLogin",["user"=>&$rs]);
        if(!empty($rs)){
            if($rs['loginPwd']!=md5($password.$rs['loginSecret']))return shopReturn("密码错误");
            if($rs['userPhoto']=='')$rs['userPhoto'] = WSTConf('CONF.userLogo');
            $rs['userPhoto'] = formatUrl($rs['userPhoto'],2);
            unset($rs['loginPwd']);
            $userId = $rs['userId'];
            $ip = request()->ip();
            $update = ["lastTime"=>date('Y-m-d H:i:s'),"lastIP"=>$ip];
            $this->where(["userId"=>$userId])->update($update);

            //记录登录日志
            $data = array();
            $data["userId"] = $userId;
            $data["loginTime"] = date('Y-m-d H:i:s');
            $data["loginIp"] = $ip;
            $data['loginSrc'] = $loginSrc;
            Db::name('log_user_logins')->insert($data);
            $accessToken = $this->buildAccessToken(self::APP_ID,self::AppSecret);
            cache($accessToken, $rs, self::EXPIRE_TIME);
            hook('afterUserLogin',['user'=>$rs]);
            $rs['access_token'] = $accessToken;
            return shopReturn("登录成功",1,$rs);
        }else{
            return shopReturn("账户不存在！",0);
        }
    }

    /**
     * 快捷登录
     * @param $info
     * @param int $loginSrc
     * @return array
     */
    public function quickLogin($info,$loginSrc=1){
        $verify = session('VerifyCode_login_userPhone_Verify');
        if($verify !=  $info['code']){
            return shopReturn("短信验证码错误!");
        }
        $startTime = (int)session('VerifyCode_login_userPhone_Time');
        if((time()-$startTime)>120){
            return shopReturn("验证码已超过有效期!");
        }
        $loginName = session('VerifyCode_login_userPhone');
        if($info['loginName'] != $loginName){
            return shopReturn("注册手机号与验证手机号不一致!");
        }
        try{
            $rs = $this->where("loginName|userPhone",$info['loginName'])
                ->where(["dataFlag"=>1, "userStatus"=>1])
                ->find();
            hook("beforeUserLogin",["user"=>&$rs]);
            if(!empty($rs)){
                if($rs['userPhoto']=='')$rs['userPhoto'] = WSTConf('CONF.userLogo');
                $rs['userPhoto'] = formatUrl($rs['userPhoto'],2);
                unset($rs['loginPwd']);
                $userId = $rs['userId'];
                $ip = request()->ip();
                $update = ["lastTime"=>date('Y-m-d H:i:s'),"lastIP"=>$ip];
                $this->where(["userId"=>$userId])->update($update);

                //记录登录日志
                $data = array();
                $data["userId"] = $userId;
                $data["loginTime"] = date('Y-m-d H:i:s');
                $data["loginIp"] = $ip;
                $data['loginSrc'] = $loginSrc;
                Db::name('log_user_logins')->insert($data);
                $accessToken = $this->buildAccessToken(self::APP_ID,self::AppSecret);
                cache($accessToken, $rs, self::EXPIRE_TIME);
                hook('afterUserLogin',['user'=>$rs]);
                $rs['access_token'] = $accessToken;
                return shopReturn("登录成功",1,$rs);
            }else{
                return shopReturn("账户不存在！",0);
            }
        }catch (Exception $exception){
            return shopReturn($exception->getMessage(),0);
        }

    }


    /**
     * 计算出唯一的身份令牌
     * @param $appId
     * @param $appSecret
     * @return string
     */
    private function buildAccessToken($appId, $appSecret) {
        $preStr = $appSecret . $appId . time() . Str::keyGen();
        return md5($preStr);
    }

    /**
     * 检测手机号是否存在
     * @param $userPhone
     * @param int $userId
     * @return array|float|string
     */
    public function checkUserPhone($userPhone,$userId = 0){
        $dbo = $this->where(["dataFlag"=>1, "userPhone"=>$userPhone]);
        if($userId>0){
            $dbo->where("userId","<>",$userId);
        }
        return $dbo->count();
    }

    /**
     * 会员注册
     * @param int $loginSrc
     * @return array
     */
    public function toRegister($loginSrc = 0){
        $validate = new Validate([
            'loginName'          => 'mobile',
            'loginPwd'          => 'require',
            'reUserPwd'          => 'require',
            'mobileCode'          => 'require'
        ]);
        $validate->message([
            'loginName.mobile'          => '手机号格式错误!',
            'loginPwd.require'          => '密码请不要为空！',
            'reUserPwd.require'          => '重复密码请不要为空！',
            'mobileCode.require'          => '手机验证码不要为空！'
        ]);
        $data = Request::instance()->post();
        if (!$validate->check($data)) {
            shopReturn($validate->getError(),0);
        }
        $verify = session('VerifyCode_userPhone_Verify');
        if($verify != $data['mobileCode']){
            return shopReturn("短信验证码错误!");
        }
        $startTime = (int)session('VerifyCode_userPhone_Time');
        if((time()-$startTime)>120){
            return shopReturn("验证码已超过有效期!");
        }
        $loginName = session('VerifyCode_userPhone');
        if($data['loginName'] != $loginName){
            return shopReturn("注册手机号与验证手机号不一致!");
        }
        //检测账号是否存在
        $count = $this->where('loginName|userPhone',$data['loginName'])->count();
        if($count>0)return shopReturn("手机号已存在!");
        $decrypt_data = WSTRSA($data['loginPwd']);
        $decrypt_data2 = WSTRSA($data['reUserPwd']);
        if($decrypt_data['status']==1 && $decrypt_data2['status']==1){
            $data['loginPwd'] = $decrypt_data['data'];
            $data['reUserPwd'] = $decrypt_data2['data'];
        }else{
            return shopReturn('注册失败');
        }
        if($data['loginPwd'] != $data['reUserPwd']){
            return shopReturn("两次输入密码不一致!");
        }
        foreach ($data as $v){
            if($v ==''){
                return shopReturn("注册信息不完整!");
            }
        }

        //请允许手机号码注册
        $data['userPhone'] = $loginName;
        if($loginName=='')return shopReturn("注册失败!");//分派不了登录名
        $data['loginName'] = $loginName;
        unset($data['reUserPwd']);
        unset($data['protocol']);
        //检测账号，邮箱，手机是否存在
        $data["loginSecret"] = rand(1000,9999);
        $data['loginPwd'] = md5($data['loginPwd'].$data['loginSecret']);
        $data['userType'] = 0;
        $data['userName'] = '手机用户'.substr($data['userPhone'],-4);
        $data['userQQ'] = "";
        $data['userScore'] = 0;
        $data['createTime'] = date('Y-m-d H:i:s');
        $data['dataFlag'] = 1;
        Db::startTrans();
        try{
            $userId = $this->data($data)->save();
            if(false !== $userId){
                $data = array();
                $ip = request()->ip();
                $data['lastTime'] = date('Y-m-d H:i:s');
                $data['lastIP'] = $ip;
                $userId = $this->userId;
                $this->where(["userId"=>$userId])->update($data);
                //记录登录日志
                $data = array();
                $data["userId"] = $userId;
                $data["loginTime"] = date('Y-m-d H:i:s');
                $data["loginIp"] = $ip;
                $data['loginSrc'] = $loginSrc;
                Db::name('log_user_logins')->insert($data);
                $user = $this->get(['userId'=>$userId]);
                if($user['userPhoto']=='')$user['userPhoto'] = WSTConf('CONF.userLogo');
                $user['userPhoto'] = formatUrl($user['userPhoto']);
                $accessToken = $this->buildAccessToken(self::APP_ID,self::AppSecret);
                cache($accessToken, $user, self::EXPIRE_TIME);
                hook('afterUserRegist',['user'=>$user]);
                $rs['access_token'] = $accessToken;
                //发送消息
                $tpl = WSTMsgTemplates('USER_REGISTER');
                if( $tpl['tplContent']!='' && $tpl['status']=='1'){
                    $find = ['${LOGIN_NAME}','${MALL_NAME}'];
                    $replace = [$user['loginName'],WSTConf('CONF.mallName')];
                    WSTSendMsg($userId,str_replace($find,$replace,$tpl['tplContent']),['from'=>0,'dataId'=>0]);
                }
                Db::commit();
                return shopReturn("注册成功",1,$rs);
            }
        }catch (\Exception $e) {
            Db::rollback();
        }
        return shopReturn("注册失败!",0);
    }

    /**
     * 重置用户密码
     */
    public function resetPass(){
        if(time()>floatval(session('REST_Time'))+30*60){
            return shopReturn("页面已失效！", 0);
        }
        $reset_userId = (int)session('REST_userId');
        if($reset_userId==0){
            return shopReturn("无效的用户！", 0);
        }
        try{
            $user = $this->where(["dataFlag"=>1,"userStatus"=>1,"userId"=>$reset_userId])->find();
            if(empty($user)){
                return shopReturn("无效的用户！", 0);
            }
        }catch (Exception $exception){
            return shopReturn($exception->getMessage(), 0);
        }

        $loginPwd = Request::post('loginPwd');
        $decrypt_data = WSTRSA($loginPwd);
        if($decrypt_data['status']==1){
            $loginPwd = $decrypt_data['data'];
        }else{
            return shopReturn('修改失败');
        }
        if(trim($loginPwd)==''){
            return shopReturn("无效的密码！", -1);
        }
        $data['loginPwd'] = md5($loginPwd.$user["loginSecret"]);
        $rc = $this->update($data,['userId'=>$reset_userId]);
        if(false !== $rc){
            session('REST_userId',null);
            session('REST_Time',null);
            session('REST_success',null);
            session('findPass',null);
            return shopReturn("修改成功", 1);
        }else{
            return shopReturn("修改失败！", 0);
        }
    }

    /**
     * 修改密码
     * @param $id
     * @throws Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function editPass($id){
        $data = Request::instance()->post();
        $validate = new Validate([
            'oldPass'          => 'require',
            'newPass'          => 'require',
            'reNewPass'        => 'require'
        ]);
        $validate->message([
            'newPass.require'          => '新密码不要为空!',
            'oldPass.require'          => '旧密码不要为空！',
            'reNewPass.require'        => '重复密码请不要为空！',
        ]);

        if (!$validate->check($data)) {
            throw new Exception($validate->getError());
        }
        $newPass        = $data['newPass'];
        $reNewPass      = $data['reNewPass'];
        if($newPass!=$reNewPass){
            throw new Exception('两次输入密码不一致！');
        }
        $decrypt_data = WSTRSA($newPass);
        if($decrypt_data['status'] != 1){
            throw new Exception('修改失败！');
        }
        $newPass = $decrypt_data['data'];
        $rs = $this->where('userId='.$id)->find();
        //核对密码
        if($rs['loginPwd']){
            $oldPass = $data['oldPass'];
            $decrypt_data2 = WSTRSA($oldPass);
            if($decrypt_data2['status'] != 1){
                throw new Exception('修改失败！');
            }
            $oldPass = $decrypt_data2['data'];
            if($rs['loginPwd'] != md5($oldPass.$rs['loginSecret'])){
                throw new Exception('原始密码错误！');
            }
            $data["loginPwd"] = md5($newPass.$rs['loginSecret']);
            $rs = $this->update($data,['userId'=>$id]);
            if(false !== $rs){
                hook("afterEditPass",["userId"=>$id]);
            }else{
                throw new Exception($this->getError());
            }
        }else{
            $data["loginPwd"] = md5($newPass.$rs['loginSecret']);
            $rs = $this->update($data,['userId'=>$id]);
            if(false !== $rs){
                hook("afterEditPass",["userId"=>$id]);
            }else{
                throw new Exception($this->getError());
            }
        }
    }

    /**
     * 编辑资料
     * @param $Id
     * @throws Exception
     */
    public function edit($Id){
        $data = Request::instance()->post();
        WSTAllow($data,'userName,userId,userPhoto,userSex');
        Db::startTrans();
        try{
            if(isset($data['userPhoto']) && $data['userPhoto']!='')
                WSTUseImages(0, $Id, $data['userPhoto'],'users','userPhoto');
            $result = $this->allowField(true)->save($data,['userId'=>$Id]);
            if(false !== $result){
                $USER = cache('userInfo'.$Id);
                if(isset($data['userName']) && $data['userName']!='')$USER['userName'] = $data['userName'];
                if(isset($data['userPhoto']) && $data['userPhoto']!='')$USER['userPhoto'] = $data['userPhoto'];
                if(isset($data['userSex']) && $data['userSex']!='')$USER['userSex'] = $data['userSex'];
                cache('userInfo'.$Id,$USER,3600);
                if(isset($data['userPhoto']) && file_exists(WSTRootPath()."/".$data['userPhoto'])){
                    $str = explode('/',$data['userPhoto']);
                    $name = $str[count($str)-1];
                    array_pop($str);
                    $filePath = implode('/',$str);
                    $rdata = ['status'=>1,'savePath'=>$filePath."/",'name'=>$name];
                    hook('afterUploadPic',['data'=>&$rdata]);
                }
                Db::commit();
            }
        }catch (Exception $e) {
            Db::rollback();
            throw new Exception('编辑失败'.$e->getMessage());
        }
    }

    /**
     * 绑定手机
     * @param $userId
     * @param $userPhone
     * @return array
     */
    public function editPhone($userId,$userPhone){
        $data = array();
        $data["userPhone"] = $userPhone;
        $rs = $this->update($data,['userId'=>$userId]);
        if(false !== $rs){
            return shopReturn("绑定成功", 1);
        }else{
            return shopReturn($this->getError(),-1);
        }
    }

    /**
     * 重置用户支付密码
     * @param $userId
     * @return array
     */
    public function resetPay($userId){
        $timeVerify = session('Verify_backPaypwd_Time');
        if(time()>floatval($timeVerify)+10*60){
            session('Type_backPaypwd',null);
            return shopReturn("校验码已失效，请重新验证！");
        }
        $data = array();
        $data["payPwd"] = input("post.newPass");
        $decrypt_data = WSTRSA($data["payPwd"]);
        if($decrypt_data['status']==1){
            $data["payPwd"] = $decrypt_data['data'];
        }else{
            return shopReturn('修改失败');
        }
        if(!$data["payPwd"]){
            return shopReturn('支付密码不能为空',0);
        }
        try{
            $rs = $this->where('userId='.$userId)->find();
        }catch (Exception $exception){
            return shopReturn($exception->getMessage(),0);
        }
        $data["payPwd"] = md5($data["payPwd"].$rs['loginSecret']);
        $rs = $this->update($data,['userId'=>$userId]);
        if(false !== $rs){
            session('Type_backPaypwd',null);
            session('Verify_backPaypwd_info',null);
            session('Verify_backPaypwd_Time',null);
            return shopReturn("支付密码设置成功", 1);
        }else{
            return shopReturn("支付密码修改失败",0);
        }
    }

    /**
     * 修改用户支付密码
     * @param $userId
     * @return array
     */
    public function editPayPass($userId){
        $data = array();
        $newPass = Request::post('newPass');
        $reNewPass  = Request::post('reNewPass');
        $decrypt_data = WSTRSA($newPass);
        if($decrypt_data['status'] == 1){
            $newPass = $decrypt_data['data'];
        }else{
            return shopReturn('修改失败',0);
        }
        if(!$newPass){
            return shopReturn('支付密码不能为空',0);
        }
        try{
            $rs = $this->where('userId='.$userId)->find();
        }catch (Exception $exception){
            return shopReturn($exception->getMessage(),0);
        }
        if($newPass != $reNewPass){
            return shopReturn('两次输入密码不一致！',0);
        }
        //核对密码
        if($rs['payPwd']){
            $oldPass = Request::post('oldPass');
            $decrypt_data2 = WSTRSA($oldPass);
            if($decrypt_data2['status']==1){
                $oldPass = $decrypt_data2['data'];
            }else{
                return shopReturn('修改失败');
            }
            if($rs['payPwd']==md5($oldPass.$rs['loginSecret'])){
                $data["payPwd"] = md5($newPass.$rs['loginSecret']);
                $rs = $this->update($data,['userId'=>$userId]);
                if(false !== $rs){
                    return shopReturn("支付密码修改成功", 1);
                }else{
                    return shopReturn("支付密码修改失败",0);
                }
            }else{
                return shopReturn('原始支付密码错误',0);
            }
        }else{
            $data["payPwd"] = md5($newPass.$rs['loginSecret']);
            $rs = $this->update($data,['userId'=>$userId]);
            if(false !== $rs){
                return shopReturn("支付密码设置成功", 1);
            }else{
                return shopReturn("支付密码修改失败",0);
            }
        }
    }
}
