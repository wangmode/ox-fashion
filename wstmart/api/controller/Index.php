<?php
namespace wstmart\api\controller;
use wstmart\common\model\Tags;
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
 */
class Index extends Base{
    public function recommend_list(){
        $Tags = new Tags();
        $goods = $Tags->listGoods('recom',0,10);
        foreach ($goods as $kk=>$vv){
            $goods[$kk]['goodsImg'] = formatUrl($vv['goodsImg'],2);
        }
        $this->response(1,'推荐商品！',$goods);
    }

    //新品列表
    public function new_list(){
        $Tags = new Tags();
        $goods = $Tags->listGoods('new',0,10);
        foreach ($goods as $kk=>$vv){
            $goods[$kk]['goodsImg'] = formatUrl($vv['goodsImg'],2);
        }
        $this->response(1,',新品列表！',$goods);
    }

    public function chosen_list(){
        $data = [];
        $Tags = new Tags();
        //精选热门
        $hot_ad_list =  $Tags->listAds('index-hot',1,0);
        $hot['ad'] = formatUrl($hot_ad_list[0]['adFile'],2);
        $goods_hot = $Tags->listGoods('hot',0,10);
        foreach ($goods_hot as $kk=>$vv){
            $goods_hot[$kk]['goodsImg'] = formatUrl($vv['goodsImg'],2);
        }
        $hot['list'] = $goods_hot;
        $data[] = $hot;
        //精选上新
        $new_ad_list =  $Tags->listAds('index-new',1,0);
        $new['ad'] = formatUrl($new_ad_list[0]['adFile'],2);
        $goods_new = $Tags->listGoods('new',0,10);
        foreach ($goods_new as $k=>$v){
            $goods_new[$k]['goodsImg'] = formatUrl($v['goodsImg'],2);
        }
        $new['list'] = $goods_new;
        $data[] = $new;
        $this->response(1,'精选',$data);
    }

    //精品列表
//    public function best_list(){
//        $Tags = new Tags();
//        $goods = $Tags->listGoods('best',0,10);
//        foreach ($goods as $kk=>$vv){
//            $goods[$kk]['goodsImg'] = formatUrl($vv['goodsImg'],2);
//        }
//        $this->response(1,',大牌精选！',$goods);
//    }

    //大牌精选
    public function brand_list(){
        $Tags = new Tags();
        $list= $Tags->listBrand(0,10,7200);
        foreach ($list as $kk=>$vv){
            $list[$kk]['brandImg'] = formatUrl($vv['brandImg'],2);
        }
        $this->response(1,',大牌精选！',$list);
    }

    //首页轮播图
    public function gallery_list(){
        $Tags = new Tags();
        $gallery =  $Tags->listAds('ads-index',3,0);
        foreach ($gallery as $k=>$v){
//            $dir = '';
//            if($v['adURL']){
//                $goodsId = Db::name('goods')->where('goodsSn',$v['adURL'])->value('goodsId');
//                $dir = '/pages/common/goodsDetail/detail?goodsId='.$goodsId;
//            }
//            $gallery[$k]['adURL'] = $dir;
            $gallery[$k]['adFile'] = formatUrl($v['adFile'],2);
        }
        $this->response(1,',轮播图！',$gallery);
    }


}
