<?php
namespace wstmart\home\controller;
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
 * 默认控制器
 */
class Login extends Base{
    protected $config = [
        'debug'            => true,//是否是在开发中调试模式
        'debug_app_key'       => '************', //融云开发环境下的key    仅供测试使用
        'debug_app_secret'    => 'D5Y4lpfcl6', //融云开发环境下的SECRET  仅供测试使用
        'app_key'       => '', //融云生产环境下的key
        'app_secret'    => '', //融云生产环境下的SECRET
    ];

    protected $app_key;
    protected $app_secret;
    public function _initialize()
    {
        //parent::_initialize(); // TODO: Change the autogenerated stub

        if ($this->config['debug'] == true){
            $this->app_key =$this->config['debug_app_key'];
            $this->app_secret=$this->config['debug_app_secret'];
        }else{
            $this->app_key =$this->config['app_key'];
            $this->app_secret=$this->config['app_secret'];
        }

    }

    /**
     * 通过用户名密码获取用户信息及融云Token
     * Power by Mikkle
     * QQ:776329498
     * @return \think\response\Json
     */
    public function getToken(){
        // 获取用户id
        $user=$this->getUid();
        if ($user['code']!=1001){
            return json($user);
        }
        $user = $user['data'];
        $user_info = $user->toArray();
        // 获取融云token
        $token=json_decode($this->getRongCloudToken($user['id'],$user['userid']));
        if (isset($token->code)){
            if ($token->code == 200){
                if ($user_info['r_token'] != $token->token){
                    $user_info['r_token'] =$token->token;
                    $user->update(['r_token'=>$token->token],['id'=>$user_info['id']]);
                }
            }else{
                return json(self::showReturnCodeWithOutData(1031,'网络错误'));
            }
        }
        return json(self::showReturnCode(1001,$user_info,'获取成功'));
    }

    private function getUid(){
        //数据库字段 网页字段转换
        $param = [
            'userid' => 'userid',
            'userpwd' => 'userpwd',
            'mobile' => 'mobile',
        ];
        $param_data = $this->buildParam($param);
        if (empty($param_data['userid'])&&empty($param_data['mobile'])) return self::showReturnCodeWithOutData(1003);
        $check_login = $this->doModelAction($param_data, 'base/Member.login', 'base/Member', 'checkLogin');
        if (!isset($check_login['code'])) $this->showReturnCodeWithSaveLog(1111);
        if ($check_login['code'] == 1001) {


        }
        return $check_login;

    }

    /**
     * 获取融云Token
     * Power by Mikkle
     * QQ:776329498
     * @param $user_id
     * @param $username
     * @param string $logo
     * @return mixed
     */
    private function getRongCloudToken($user_id,$username,$logo=''){
        $logo = empty($logo) ? 'http://www.rongcloud.cn/images/logo.png' : $logo;
        include_once( EXTEND_PATH.'/rongcloud/RongCloud.php');
        $rong_cloud = new \RongCloud($this->app_key,$this->app_secret);
        $result = $rong_cloud->user()->getToken($user_id, $username ,$logo);

        return $result;

    }


    /**
     * 发送手机短信验证码
     * #User: Mikkle
     * #Email:776329498@qq.com
     * #Date:
     * @param bool|false $mobile
     * @return 出错返回1003错误码和错误详情|返回错误码
     */
    public function sendRegSms($mobile=false){
        //    if (!$this->request->isAjax() ) return $this->showReturnCodeWithOutData(1002);

        if(!$mobile) $mobile=$this->request->param('mobile');
        if (empty($mobile)||!is_numeric($mobile)||strlen($mobile)!=11) return $this->showReturnCodeWithOutData(1003);
        //验证手机号码是否存在并且是唯一
        if ($this->checkMobileExist($mobile)) return $this->showReturnCodeWithOutData(1004,'此手机已存在,请更换号码或联系管理员');
        $data_mobile['mobile']=$mobile;
        if ( isset($result_mobile['code']) ) return  $result_mobile;
        if(!$this->checkRegSms($mobile)) return $this->showReturnCodeWithOutData(1003,'请勿一分钟内重复申请验证码');

        $req=$this->sendSmsCode($mobile);
        if ($req===true){
            return $this->showReturnCodeWithOutData(1001);
        }else{
            return $this->showReturnCodeWithOutData(1003,$req);
        }
    }

    /**
     * 检测手机验证码并获取融云Token
     * Power by Mikkle
     * QQ:776329498
     * @param bool|false $mobile
     * @param bool|false $code
     * @return 出错返回1003错误码和错误详情|array
     */
    public function regAction($mobile=false,$code=false,$userpwd = false){
        //  if (!$this->request->isAjax() ) return $this->showReturnCodeWithOutData(1002);

        //验证手机号码是否存在并且是唯一
        if (empty($mobile)) $mobile=$this->request->param('mobile');
        if (empty($code)) $code=$this->request->param('code');
        if (empty($userpwd)) $userpwd=$this->request->param('userpwd');
        $data_mobile=['mobile'=>$mobile,'code'=>$code,'userpwd'=>$userpwd];
        $result_mobile=$this->validate($data_mobile,'base/Member.reg');
        if ( true!==$result_mobile ) return $this->showReturnCodeWithOutData(1003,$result_mobile);
        if ($this->checkMobileExist($mobile)) return $this->showReturnCodeWithOutData(1004,'此手机已存在,请更换号码或联系管理员');

        if (!$this->checkRegSms($mobile,$code)){
            return $this->showReturnCodeWithOutData(1010,'请求的验证码错误!');
        }else{
            $reg_data = [
                'mobile'=>$mobile,
                'userpwd'=>$userpwd,
                'r_token'=>null,
            ];
            $model_user = new Member();
            $new_user = $model_user ->reg($reg_data);

            $user_info = $model_user->toArray();
            // 获取token
            $token=json_decode($this->getRongCloudToken($user_info['id'],$user_info['userid']));
            if (isset($token->code)){
                if ($token->code == 200){
                    if ($user_info['r_token'] != $token->token){
                        $user_info['r_token'] =$token->token;
                        $new_user->update(['r_token'=>$token->token],['id'=>$user_info['id']]);
                    }
                }else{
                    return json(self::showReturnCodeWithOutData(1031,'网络错误'));
                }
            }
            return json(self::showReturnCode(1001,$user_info,'注册成功'));
        }
    }


    /**
     * 判断手机是否存在
     * Power by Mikkle
     * QQ:776329498
     * @param string $mobile
     * @return bool
     */
    private function checkMobileExist($mobile=''){

        $model = new Member();
        $return = $model->checkMobileExist($mobile);
        return $return;
    }


    /**
     * Ucpaas短信接口
     * Power by Mikkle
     * QQ:776329498
     * @param bool|false $mobile
     * @return bool
     */
    protected function sendSmsCode($mobile = false)
    {
        if (!$mobile) return false;
        $code = rand(10000, 99999);
        $templateId ='38484';//验证码模版

        $req = controller('base/Ucpaas')->sendSms($mobile,$templateId,$code);

        if ($req === true) {
            $data_cache = [
                'mobile' => $mobile,
                'code' => (string)$code,
                'times' => time() + 60,
            ];
            $this->setRegSmsCache($data_cache);
            return true;
        } else {
            return $req;
        }

    }

    /**
     * 检测手机短信验证码
     * #User: Mikkle
     * #Email:776329498@qq.com
     * #Date:
     * @param $mobile
     * @param bool|false $code
     * @return bool
     */
    protected function checkRegSms($mobile, $code = false)
    {
        if (!$mobile) return false;
        if ($code === false) {   //判断60秒以内是否重复发送
            if (!Cache::has('sms_' . $mobile)) return true;
            if (Cache::get('sms_' . $mobile)['times'] > time()) {
                return false;
            } else {
                return true;
            }
        } else {  //判断验证码是否输入正确
            if (!Cache::has('sms_' . $mobile)) return false;
            if (Cache::get('sms_' . $mobile)['code'] == $code) {
                return true;
            } else {
                return false;
            }
        }
    }

    /**
     * 设置手机短息验证码缓存
     * #User: Mikkle
     * #Email:776329498@qq.com
     * #Date:
     * @param $data_cache
     */
    protected function setRegSmsCache($data_cache)
    {
        Cache::set('sms_' . $data_cache['mobile'], $data_cache, 300);
    }
}