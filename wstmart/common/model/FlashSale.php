<?php
namespace wstmart\common\model;
use think\Db;
use wstmart\common\model\Goods;
use wstmart\common\model\goodsSpecs;
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
 * 促销
 */
class FlashSale extends Base{
    protected $flashSale;//抢购活动模型
    protected $goods;//商品模型
    protected $goodsSpecs;//商品规格模型
    public function __construct($goods, $goodsSpecs)
    {
        parent::__construct();
        $this->goods = $goods;
        $this->goodsSpecs = $goodsSpecs;
        if($this->goodsSpecs){
            //活动商品有规格，规格和活动是一对一
            $this->flashSale = FlashSale::get($goodsSpecs['prom_id']);
        }else{
            //活动商品没有规格，活动和商品是一对一
            $this->flashSale = FlashSale::get($goods['prom_id']);
        }
        if ($this->flashSale) {
            //每次初始化都检测活动是否结束，如果失效就更新活动和商品恢复成普通商品
            if ($this->checkActivityIsEnd() && $this->flashSale['is_end'] == 0) {
                if($this->goodsSpecs){
                    goodsSpecs::save(['prom_type' => 0, 'prom_id' => 0]);
                    $where['goods_id'] = $this->goodsSpecs['goods_id'];
                    $where['prom_type'] = ['>',0];
                    $goodsPromCount = goodsSpecs::where($where)->count();
                    if($goodsPromCount == 0){
                        goods::where('id',$this->goodsSpecs['goods_id'])->update(['prom_type' => 0, 'prom_id' => 0]);
                    }
                    unset($this->specGoodsPrice);
                    $this->goodsSpecs = goodsSpecs::get($goodsSpecs['id']);
                }else{
                    goods::where('id',$this->flashSale['goods_id'])->update(['prom_type' => 0, 'prom_id' => 0]);
                }
                $this->flashSale->is_end = 1;
                $this->flashSale->save();
                unset($this->goods);
                $this->goods = Goods::get($goods['id']);
            }
        }
    }

    /**
     * 活动是否正在进行
     * @return bool
     */
    public function checkActivityIsAble(){
        if(empty($this->flashSale)){
            return false;
        }
        if(time() > $this->flashSale['start_time'] && time() < $this->flashSale['end_time'] && $this->flashSale['is_end'] == 0){
            return true;
        }
        return false;
    }

    /**
     * 活动是否结束
     * @return bool
     */
    public function checkActivityIsEnd(){
        if(empty($this->flashSale)){
            return true;
        }
        if($this->flashSale['buy_num'] >= $this->flashSale['goods_num']){
            return true;
        }
        if(time() > $this->flashSale['end_time']){
            return true;
        }
        return false;
    }

    /**
     * 获取用户抢购已购商品数量
     * @param $user_id
     * @return float|int
     */
    public function getUserFlashOrderGoodsNum($user_id){
        $orderWhere = [
            'user_id'=>$user_id,
            'order_status' => ['<>', 3],
            'add_time' => ['between', [$this->flashSale['start_time'], $this->flashSale['end_time']]]
        ];
        $order_id_arr = Db::name('order')->where($orderWhere)->getField('order_id', true);
        if ($order_id_arr) {
            $orderGoodsWhere = ['prom_id' => $this->flashSale['id'], 'prom_type' => 1, 'order_id' => ['in', implode(',', $order_id_arr)]];
            $goods_num = DB::name('order_goods')->where($orderGoodsWhere)->sum('goods_num');
            if($goods_num){
                return $goods_num;
            }else{
                return 0;
            }
        } else {
            return 0;
        }
    }

    /**
     * 获取用户剩余抢购商品数量
     * @author lxl 2017-5-11
     * @param $user_id|用户ID
     * @return mixed
     */
    public function getUserFlashResidueGoodsNum($user_id){
        $purchase_num = $this->getUserFlashOrderGoodsNum($user_id); //用户抢购已购商品数量
        $residue_num = $this->flashSale['goods_num'] - $this->flashSale['buy_num']; //剩余库存
        //限购》已购
        $residue_buy_limit = $this->flashSale['buy_limit'] - $purchase_num;
        if($residue_buy_limit > $residue_num){
            return $residue_num;
        }else{
            return $residue_buy_limit;
        }
    }

    /**
     * 获取单个抢购活动
     * @return static
     */
    public function getPromModel(){
        return $this->flashSale;
    }
    /**
     * 获取商品原始数据
     * @return static
     */
    public function getGoodsInfo()
    {
        return $this->goods;
    }

    /**
     * 获取商品转换活动商品的数据
     * @return static
     */
    public function getActivityGoodsInfo(){
        if($this->goodsSpecs){
            //活动商品有规格，规格和活动是一对一
            $activityGoods = $this->goodsSpecs;
            $activityGoods['market_price'] =$this->goodsSpecs['price'];
        }else{
            //活动商品没有规格，活动和商品是一对一
            $activityGoods = $this->goods;
            $activityGoods['market_price'] = $this->goods['shop_price'];
        }
        $activityGoods['shop_price']        = $this->flashSale['price'];
        $activityGoods['start_time']        = $this->flashSale['start_time'];
        $activityGoods['end_time']          = $this->flashSale['end_time'];
        return $activityGoods;
    }

    /**
     * 该活动是否已经失效
     */
    public function IsAble(){
        if(empty($this->flashSale)){
            return false;
        }
        if($this->flashSale['is_end'] == 1){
            return false;
        }
        if($this->flashSale['buy_num'] >= $this->flashSale['goods_num']){
            return false;
        }
        if(time() > $this->flashSale['end_time']){
            return false;
        }
        return true;
    }





}
