<?php
namespace wstmart\api\model;

use think\Db;
use think\Model;
use  wstmart\common\model\Carts as CCarts;
use think\facade\Request;
use think\facade\Validate;
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
 * 商品关注
 */
class Carts extends Model {
    protected $pk = 'cartId';

    /**
     * 加入购物车
     * @param $userId
     * @param $goodsId
     * @param $goodsSpecId
     * @param $cartNum
     * @param int $type     //1为立即购买
     * @return array
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function addCart($userId,$goodsId,$cartNum,$goodsSpecId=0,$type=0){
        $cartNum = ($cartNum>0)?$cartNum:1;
        //验证传过来的商品是否合法
        $chk = $this->checkGoodsSaleSpec($goodsId,$goodsSpecId);
        if($chk['code']==0)return $chk;
        //检测库存是否足够
        if($chk['data']['stock']<$cartNum)return shopReturn("加入购物车失败，商品库存不足", 0);
        //添加实物商品
        if($chk['data']['goodsType']==0){
            $goodsSpecId = $chk['data']['goodsSpecId'];
            $goods = $this->where(['userId'=>$userId,'goodsId'=>$goodsId,'goodsSpecId'=>$goodsSpecId])->select();
            if(count($goods)==0){
                $data = array();
                $data['userId'] = $userId;
                $data['goodsId'] = $goodsId;
                $data['goodsSpecId'] = $goodsSpecId;
                $data['isCheck'] = 1;
                $data['cartNum'] = $cartNum;
                $rs = $this->save($data);
            }else{
                $rs = $this->where(['userId'=>$userId,'goodsId'=>$goodsId,'goodsSpecId'=>$goodsSpecId])->setInc('cartNum',$cartNum);
            }
            if(false !==$rs){
                if($type==1){
                    $cartId = $this->where(['userId'=>$userId,'goodsId'=>$goodsId,'goodsSpecId'=>$goodsSpecId])->value('cartId');
                    $this->where("cartId = ".$cartId." and userId=".$userId)->setField('isCheck',1);
                    $this->where("cartId != ".$cartId." and userId=".$userId)->setField('isCheck',0);
                    $this->where(['cartId' =>$cartId,'userId'=>$userId])->setField('cartNum',$cartNum);
                }
                return shopReturn("添加成功", 1);
            }
        }else{
            //非实物商品
            $carts = [];
            $carts['goodsId'] = $goodsId;
            $carts['cartNum'] = $cartNum;
            session('TMP_CARTS',$carts);
            return shopReturn("添加成功", 1,['forward'=>'quickSettlement']);
        }
        return shopReturn("加入购物车失败", 0);
    }

    /**
     * 验证商品是否合法
     * @param $goodsId
     * @param $goodsSpecId
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function checkGoodsSaleSpec($goodsId,$goodsSpecId){
        $goods = model('Goods')->where(['goodsStatus'=>1,'dataFlag'=>1,'isSale'=>1,'goodsId'=>$goodsId])->field('goodsId,isSpec,goodsStock,goodsType')->find();
        if(empty($goods))return shopReturn("添加失败，无效的商品信息", 0);
        $goodsStock = (int)$goods['goodsStock'];
        //有规格的话查询规格是否正确
        if($goods['isSpec']==1){
            $specs = Db::name('goods_specs')->where(['goodsId'=>$goodsId,'dataFlag'=>1])->field('id,isDefault,specStock')->select();
            if(count($specs)==0){
                return shopReturn("添加失败，无效的商品信息", 0);
            }
            $defaultGoodsSpecId = 0;
            $defaultGoodsSpecStock = 0;
            $isFindSpecId = false;
            foreach ($specs as $key => $v){
                if($v['isDefault']==1){
                    $defaultGoodsSpecId = $v['id'];
                    $defaultGoodsSpecStock = (int)$v['specStock'];
                }
                if($v['id']==$goodsSpecId){
                    $goodsStock = (int)$v['specStock'];
                    $isFindSpecId = true;
                }
            }

            if($defaultGoodsSpecId==0)return shopReturn("添加失败，无效的商品信息", 0);//有规格却找不到规格的话就报错
            if(!$isFindSpecId)return shopReturn("", 1,['goodsSpecId'=>$defaultGoodsSpecId,'stock'=>$defaultGoodsSpecStock,'goodsType'=>$goods['goodsType']]);//如果没有找到的话就取默认的规格
            return shopReturn("", 1,['goodsSpecId'=>$goodsSpecId,'stock'=>$goodsStock,'goodsType'=>$goods['goodsType']]);
        }else{
            return shopReturn("", 1,['goodsSpecId'=>0,'stock'=>$goodsStock,'goodsType'=>$goods['goodsType']]);
        }
    }

    /**
     * 删除购物车里的商品
     * @param $userId
     * @param $id
     * @return array
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function delCart($userId,$id){
        $id = explode(',',WSTFormatIn(",",$id));
        $id = array_filter($id);
        $this->where("userId = ".$userId." and cartId in(".implode(',', $id).")")->delete();
        return shopReturn("删除成功", 1);
    }

    /**
     * 取消购物车商品选中状态
     * @param $goodsId
     * @param $goodsSpecId
     * @param $userId
     */
    public function disChkGoods($goodsId,$goodsSpecId,$userId){
        $this->save(['isCheck'=>0],['userId'=>$userId,'goodsId'=>$goodsId,'goodsSpecId'=>$goodsSpecId]);
    }

    /**
     * 获取购物车列表
     * @param bool $isSettlement
     * @param int $userId
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCarts($isSettlement = false, $userId=0){
        $where = [];
        $where['c.userId'] = $userId;
        $prefix = config('database.prefix');
        if($isSettlement)$where['c.isCheck'] = 1;
        $rs = Db::table($prefix.'carts')
            ->alias([$prefix.'carts'=>'c',$prefix.'goods' => 'g',$prefix.'shops' => 's',$prefix.'goods_specs' => 'gs'])
            ->join($prefix.'goods','c.goodsId=g.goodsId','inner')
            ->join($prefix.'shops','s.shopId=g.shopId','left')
            ->join($prefix.'goods_specs','c.goodsSpecId=gs.id','left')
            ->where($where)
            ->field('c.goodsSpecId,c.cartId,s.userId,s.shopId,s.shopName,g.goodsId,s.shopQQ,shopWangWang,g.goodsName,g.shopPrice,g.goodsStock,g.isSpec,gs.specPrice,gs.specStock,g.goodsImg,c.isCheck,gs.specIds,c.cartNum,g.goodsCatId,g.isFreeShipping')
            ->select();
        $carts = [];
        $goodsIds = [];
        $goodsTotalNum = 0;
        $goodsTotalMoney = 0;
        foreach ($rs as $key =>$v){
            if(!isset($carts[$v['shopId']]['goodsMoney']))$carts[$v['shopId']]['goodsMoney'] = 0;
            if(!isset($carts[$v['shopId']]['isFreeShipping']))$carts[$v['shopId']]['isFreeShipping'] = true;
            //勿删！为插件促销活动做准备接口
            $v['promotion'] = [];//商品优惠活动
            $carts[$v['shopId']]['promotion'] = [];//店铺优惠活动
            $carts[$v['shopId']]['promotionMoney'] = 0;//店铺要优惠的金额
            //----------------------------
            $carts[$v['shopId']]['shopId'] = $v['shopId'];
            $carts[$v['shopId']]['shopName'] = $v['shopName'];
            $carts[$v['shopId']]['shopQQ'] = $v['shopQQ'];
            $carts[$v['shopId']]['userId'] = $v['userId'];
            //如果店铺一旦不包邮了，那么就不用去判断商品是否包邮了
            if($v['isFreeShipping']==0 && $carts[$v['shopId']]['isFreeShipping'])$carts[$v['shopId']]['isFreeShipping'] = false;
            $carts[$v['shopId']]['shopWangWang'] = $v['shopWangWang'];
            if($v['isSpec']==1){
                $v['shopPrice'] = $v['specPrice'];
                $v['goodsStock'] = $v['specStock'];
            }
            //判断能否购买，预设allowBuy值为10，为将来的各种情况预留10个情况值，从0到9
            $v['allowBuy'] = 10;
            if($v['goodsStock']<=0){
                $v['allowBuy'] = 0;//库存不足
            }else if($v['goodsStock']<$v['cartNum']){
                //$v['allowBuy'] = 1;//库存比购买数小
                $v['cartNum'] = $v['goodsStock'];
            }
            //如果是结算的话，则要过滤了不符合条件的商品
            if($isSettlement && $v['allowBuy']!=10){
                $this->disChkGoods($v['goodsId'],(int)$v['goodsSpecId'],(int)session('WST_USER.userId'));
                continue;
            }
            if($v['isCheck']==1){
                $carts[$v['shopId']]['goodsMoney'] = $carts[$v['shopId']]['goodsMoney'] + $v['shopPrice'] * $v['cartNum'];
                $goodsTotalMoney = $goodsTotalMoney + $v['shopPrice'] * $v['cartNum'];
                $goodsTotalNum++;
            }
            $v['specNames'] = [];
            unset($v['shopName']);
            $carts[$v['shopId']]['list'][] = $v;
            if(!in_array($v['goodsId'],$goodsIds))$goodsIds[] = $v['goodsId'];
        }

        //加载规格值
        if(count($goodsIds)>0){
            $specs = DB::name('spec_items')->alias('s')->join('__SPEC_CATS__ sc','s.catId=sc.catId','left')
                ->where([['s.goodsId','in',$goodsIds],['s.dataFlag','=',1]])->field('catName,itemId,itemName')->select();
            if(count($specs)>0){
                $specMap = [];
                foreach ($specs as $key =>$v){
                    $specMap[$v['itemId']] = $v;
                }
                foreach ($carts as $key =>$shop){
                    foreach ($shop['list'] as $skey =>$v){
                        $strName = [];
                        if($v['specIds']!=''){
                            $str = explode(':',$v['specIds']);
                            foreach ($str as $vv){
                                if(isset($specMap[$vv]))$strName[] = $specMap[$vv];
                            }
                        }
                        $carts[$key]['list'][$skey]['specNames'] = $strName;
                    }
                }
            }
        }
        //过滤无效店铺
        foreach($carts as $key => $v){
            if(!isset($v['list']))unset($carts[$key]);
        }
        $cartData = ['carts'=>$carts,'goodsTotalMoney'=>$goodsTotalMoney,'goodsTotalNum'=>$goodsTotalNum,'promotionMoney'=>0];
        //店铺优惠活动监听
        hook("afterQueryCarts",["carts"=>&$cartData,'isSettlement'=>$isSettlement,'isVirtual'=>false,'uId'=>$userId]);
        return $cartData;
    }

    /**
     * 获取购物车商品列表
     * @param int $userId
     * @param bool $isSettlement
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCartInfo($userId = 0,$isSettlement = false){
        $where = [];
        $where['c.userId'] = $userId;
        if($isSettlement)$where['c.isCheck'] = 1;
        $rs = $this->alias('c')->join('__GOODS__ g','c.goodsId=g.goodsId','inner')
            ->join('__GOODS_SPECS__ gs','c.goodsSpecId=gs.id','left')
            ->where($where)
            ->field('c.goodsSpecId,c.cartId,g.goodsId,g.goodsName,g.shopPrice,g.goodsStock,g.isSpec,gs.specPrice,gs.specStock,g.goodsImg,c.isCheck,gs.specIds,c.cartNum')
            ->select();
        $goodsIds = [];
        $goodsTotalMoney = 0;
        $goodsTotalNum = 0;
        foreach ($rs as $key =>$v){
            if(!in_array($v['goodsId'],$goodsIds))$goodsIds[] = $v['goodsId'];
            if($v['isSpec']==1){
                $v['shopPrice'] = $v['specPrice'];
                $v['goodsStock'] = $v['specStock'];
            }
            if($v['goodsStock']<$v['cartNum']){
                $v['cartNum'] = $v['goodsStock'];
            }
            $goodsTotalMoney = $goodsTotalMoney + $v['shopPrice'] * $v['cartNum'];
            //$rs[$key]['goodsImg'] = WSTImg($v['goodsImg']);
            $rs[$key]['goodsImg'] = formatUrl($v['goodsImg'],2);
        }
        //加载规格值
        if(count($goodsIds)>0){
            $specs = DB::name('spec_items')->alias('s')->join('__SPEC_CATS__ sc','s.catId=sc.catId','left')
                ->where([['s.goodsId','in',$goodsIds],['s.dataFlag','=',1]])->field('itemId,itemName')->select();
            if(count($specs)>0){
                $specMap = [];
                foreach ($specs as $key =>$v){
                    $specMap[$v['itemId']] = $v;
                }
                foreach ($rs as $key =>$v){
                    $strName = [];
                    if($v['specIds']!=''){
                        $str = explode(':',$v['specIds']);
                        foreach ($str as $vv){
                            if(isset($specMap[$vv]))$strName[] = $specMap[$vv]['itemName'];
                        }
                    }
                    $rs[$key]['specNames'] = $strName;
                }
            }
        }
        $goodsTotalNum = count($rs);
        return ['list'=>$rs,'goodsTotalMoney'=>sprintf("%.2f", $goodsTotalMoney),'goodsTotalNum'=>$goodsTotalNum];
    }

    /**
     * 修改购物车商品状态
     * @param $userId
     * @return array
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function changeCartGoods($userId){
        $info = Request::post();
        $validate = Validate::make([
            'isCheck'           => 'require|in:0,1',
            'buyNum'            => 'require|min:1',
            'cart_id'           => 'require',
        ]);
        $validate->message([
            'isCheck.require'           => 'isCheck必填!',
            'isCheck.in'                => 'isCheck格式错误!',
            'buyNum.require'             => '商品数量格式错误!',
            'buyNum.min'                => '商品数量格式错误!',
            'cart_id.require'           => 'id格式错误!',
        ]);
        if (!$validate->check($info)) {
            throw new Exception($validate->getError(), 0);
        }
        if($info['buyNum']<1)$info['buyNum'] = 1;
        $data = [];
        $data['isCheck'] = $info['isCheck'];
        $data['cartNum'] =  $info['buyNum'];
        $this->where(['userId'=>$userId,'cartId'=>$info['cart_id']])->update($data);
        return shopReturn("操作成功", 1);
    }

    /**
     * 批量修改购物车商品状态
     * @param $userId
     * @return array
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function batchChangeCartGoods($userId){
        $info = Request::post();
        $validate = Validate::make([
            'isCheck'       => 'require|in:0,1',
            'ids'           => 'require',
        ]);
        $validate->message([
            'isCheck.require'           => 'isCheck必填!',
            'isCheck.in'                => 'isCheck格式错误!',
            'ids.require'               => 'id格式错误!',
        ]);
        if (!$validate->check($info)) {
            throw new Exception($validate->getError(), 0);
        }
        $ids = explode(',',WSTFormatIn(',',$info['ids']));
        $isCheck = $info['isCheck']==1?1:0;
        $this->where([['cartId','in',$ids],['userId','=',$userId]])->update(['isCheck'=>$isCheck]);
        return shopReturn("操作成功", 1);
    }

    /**
     * 算购物车价格
     * @param $userId
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCartMoney($userId){
        $data = ['shops'=>[],'totalMoney'=>0,'totalGoodsMoney'=>0];
        $areaId = input('post.areaId2/d',-1);
        //计算各店铺运费及金额
        $deliverType = (int)input('deliverType');
        $carts = $this->getCarts(true,$userId);
        foreach ($carts['carts'] as $key =>$v){
            $shopFreight = 0;
            if($v['isFreeShipping']){
                $data['shops'][$v['shopId']]['freight'] = 0;
            }else{
                if($areaId>0){
                    $shopFreight = ($deliverType==1)?0:WSTOrderFreight($v['shopId'],$areaId);
                }else{
                    $shopFreight = 0;
                }
                $data['shops'][$v['shopId']]['freight'] = $shopFreight;
            }
            $data['shops'][$v['shopId']]['oldGoodsMoney'] = $v['goodsMoney'];
            $data['shops'][$v['shopId']]['goodsMoney'] = $v['goodsMoney']+$shopFreight-$v['promotionMoney'];
            $data['totalGoodsMoney'] += $v['goodsMoney']-$v['promotionMoney'];
            $data['totalMoney'] += $v['goodsMoney'] + $shopFreight-$v['promotionMoney'];
        }
        //此处放钩子计算商家使用优惠券后的金额-根据优惠券ID计算
        hook("afterCalculateCartMoney",["data"=>&$data,'carts'=>$carts,'isVirtual'=>false,'uId'=>$userId]);
        $data['totalGoodsMoney'] = ($data['totalGoodsMoney']>$data['totalMoney'])?$data['totalMoney']:$data['totalGoodsMoney'];
        $data['maxScore'] = 0;
        $data['maxScoreMoney'] = 0;
        $data['useScore'] = 0;
        $data['scoreMoney'] = 0;
        //计算最大可用积分
        $maxScoreMoney = $data['totalGoodsMoney'];
        $maxScore = WSTScoreToMoney($data['totalGoodsMoney'],true);
        //最大可用积分不能大于用户积分
        $user = model('users')->getFieldsById($userId,'userScore');
        if($maxScore>$user['userScore']){
            $maxScore = $user['userScore'];
            $maxScoreMoney = WSTScoreToMoney($maxScore);
        }
        $data['maxScore'] = $maxScore;
        $data['maxScoreMoney'] = $maxScoreMoney;
        //判断是否使用积分
        $isUseScore = (int)input('isUseScore');
        if($isUseScore==1){
            //不能比用户积分还多
            $useScore = (int)input('useScore');
            if($useScore>$maxScore)$useScore = $maxScore;
            $data['useScore'] = $useScore;
            $data['scoreMoney'] = WSTScoreToMoney($useScore);
        }
        $data['realTotalMoney'] = WSTPositiveNum($data['totalMoney'] - $data['scoreMoney']);
        return shopReturn('购物车价格！',1,$data);
    }

}
