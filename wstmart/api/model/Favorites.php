<?php
namespace wstmart\api\model;
use think\Db;
use  wstmart\common\model\Favorites as CFavorites;
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
class Favorites extends CFavorites{
    /**
     * 关注商品列表
     * @param $userId
     * @param $pagesize
     * @return array
     * @throws \think\exception\DbException
     */
    function listGoods($userId,$pagesize){
        $page = $this->alias('f')
            ->join('__GOODS__ g','g.goodsId = f.targetId','left')
            ->join('__SHOPS__ s','s.shopId = g.shopId','left')
            ->field('f.favoriteId,f.targetId,g.goodsId,g.goodsName,g.goodsImg,g.shopPrice,g.marketPrice,g.saleNum,g.appraiseNum,s.shopId,s.shopName')
            ->where(['f.userId'=> $userId,'favoriteType'=> 0])
            ->order('f.favoriteId desc')
            ->paginate($pagesize)->toArray();
        return $page;
    }
    /**
     * 取消关注
     * @param $id
     * @param $type
     * @param $userId
     * @return array
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function delFavorites($id,$userId,$type=0){
        $ids = explode(',',$id);
        if(empty($ids))return shopReturn("取消失败", 0);
        $rs = $this->where([['favoriteId','in',$ids],['favoriteType','=',$type],['userId','=',$userId]])->delete();
        if(false !== $rs){
            return shopReturn("取消成功", 1);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 新增关注
     * @param $id
     * @param int $type
     * @param $userId
     * @return array
     */
    public function addFavorites($id,$userId,$type=0){
        //判断记录是否存在
        if($type==0){
            $c = Db::name('goods')->where(['goodsStatus'=>1,'dataFlag'=>1,'goodsId'=>$id])->count();
            $isFind = ($c>0);
        }else{
            $c = Db::name('shops')->where(['shopStatus'=>1,'dataFlag'=>1,'shopId'=>$id])->count();
            $isFind = ($c>0);
        }
        if(!$isFind)return shopReturn("关注失败，无效的关注对象!", 0);
        $data = [];
        $data['userId'] = $userId;
        $data['favoriteType'] = $type;
        $data['targetId'] = $id;
        //判断是否已关注
        $rc = $this->where($data)->count();
        if($rc>0)return shopReturn("关注成功", 1);
        $data['createTime'] = date('Y-m-d H:i:s');
        $rs = $this->save($data);
        if(false !== $rs){
            return shopReturn("关注成功", 1,['fId'=>$this->favoriteId]);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 关注数
     * @param $id
     * @param $type
     * @return float|string
     */
    public function followNum($id,$type){
        return $this->where(['favoriteType'=>$type,'targetId'=>$id])->count();
    }
}
