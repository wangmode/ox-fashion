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

    public function quickLogin($info,$loginSrc=1){
        $code = $info['code'];
        $account = $info['account'];
        $rs = $this->where("loginName|userPhone",$account)
            ->where(["dataFlag"=>1, "userStatus"=>1])
            ->find();
        hook("beforeUserLogin",["user"=>&$rs]);
        if(!empty($rs)){
            //if($rs['loginPwd']!=md5($password.$rs['loginSecret']))return shopReturn("密码错误");
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
     */
    public function toRegister($loginSrc = 0){
        $validate = new Validate([
            'loginName'          => 'mobile',
            'loginPwd'          => 'require',
            'reUserPwd'          => 'require'
        ]);
        $validate->message([
            'loginName.mobile'          => '手机号格式错误!',
            'loginPwd.require'          => '密码请不要为空！',
            'reUserPwd.require'          => '重复密码请不要为空！',
        ]);
        $data = Request::instance()->post();
        if (!$validate->check($data)) {
            shopReturn($validate->getError(),0);
        }

        $startTime = (int)session('VerifyCode_userPhone_Time');
        if((time()-$startTime)>120){
            return shopReturn("验证码已超过有效期!");
        }
        $loginName = session('VerifyCode_userPhone');
        if($data['loginName']!=$loginName){
            return shopReturn("注册手机号与验证手机号不一致!");
        }
        //检测账号是否存在
        $crs = WSTCheckLoginKey($loginName);
        if($crs['status']!=1)return $crs;
        $decrypt_data = WSTRSA($data['loginPwd']);
        $decrypt_data2 = WSTRSA($data['reUserPwd']);
        if($decrypt_data['status']==1 && $decrypt_data2['status']==1){
            $data['loginPwd'] = $decrypt_data['data'];
            $data['reUserPwd'] = $decrypt_data2['data'];
        }else{
            return WSTReturn('注册失败');
        }
        if($data['loginPwd']!=$data['reUserPwd']){
            return WSTReturn("两次输入密码不一致!");
        }
        foreach ($data as $v){
            if($v ==''){
                return WSTReturn("注册信息不完整!");
            }
        }
        $mobileCode = input("post.mobileCode");
        //请允许手机号码注册
        $data['userPhone'] = $loginName;
        $verify = session('VerifyCode_userPhone_Verify');
        if($mobileCode=="" || $verify != $mobileCode){
            return WSTReturn("短信验证码错误!");
        }
        $loginName = WSTRandomLoginName($loginName);

        if($loginName=='')return WSTReturn("注册失败!");//分派不了登录名
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
        $wxOpenId = session('WST_WX_OPENID');
        if($wxOpenId){
            $data['wxOpenId'] = session('WST_WX_OPENID');
            $userinfo = session('WST_WX_USERINFO');
            if($userinfo){
                $nickname = json_encode($userinfo['nickname']);
                $nickname = preg_replace("/\\\u[ed][0-9a-f]{3}\\\u[ed][0-9a-f]{3}/","*",$nickname);//替换成*
                $nickname = json_decode($nickname);
                if($nickname=="") $nickname = "微信用户";
                $data['userName'] = $nickname;
                $data['userSex'] = $userinfo['sex'];
                $data['userPhoto'] = $userinfo['headimgurl'];
                // 保存unionId【若存在】 详见 unionId说明 https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140839
                $data['wxUnionId'] = isset($userinfo['unionid'])?$userinfo['unionid']:'';
            }
        }
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
                session('WST_USER',$user);
                //注册成功后执行钩子
                hook('afterUserRegist',['user'=>$user]);
                //发送消息
                $tpl = WSTMsgTemplates('USER_REGISTER');
                if( $tpl['tplContent']!='' && $tpl['status']=='1'){
                    $find = ['${LOGIN_NAME}','${MALL_NAME}'];
                    $replace = [$user['loginName'],WSTConf('CONF.mallName')];
                    WSTSendMsg($userId,str_replace($find,$replace,$tpl['tplContent']),['from'=>0,'dataId'=>0]);
                }
                Db::commit();
                return WSTReturn("注册成功",1);
            }
        }catch (\Exception $e) {
            Db::rollback();
        }
        return WSTReturn("注册失败!");
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
}
