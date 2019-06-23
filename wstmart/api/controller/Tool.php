<?php
namespace wstmart\api\controller;
use wstmart\api\model\Tools;
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
 * 公共控制器
 */

class Tool extends Base{
    //上传图片
    public function upload_pic(){
        try{
            $data = Tools::uploadPic(0);
            $this->response(1,'上传成功！',$data);
        }catch (Exception $exception){
            $this->response(0,$exception->getMessage());
        }
    }

}
