<?php
namespace wstmart\common\model;
use think\Db;
use Env;
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
class Str extends Base{
    /**
     * 生成UUID 单机使用
     * @access public
     * @return string
     */
    static public function uuid() {
        $charId = md5(uniqid(mt_rand(), true));
        $hyphen = chr(45);
        $uuid = chr(123)
            . substr($charId, 0, 8) . $hyphen
            . substr($charId, 8, 4) . $hyphen
            . substr($charId, 12, 4) . $hyphen
            . substr($charId, 16, 4) . $hyphen
            . substr($charId, 20, 12)
            . chr(125);

        return $uuid;
    }

    /**
     * 生成Guid主键
     * @return Boolean
     */
    static public function keyGen() {
        return str_replace('-', '', substr(self::uuid(), 1, -1));
    }
}
