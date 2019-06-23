<?php
namespace wstmart\api\model;
use think\Model;
use wstmart\api\model\Areas;
use wstmart\common\validate\UserAddress as Validate;
use think\Db;
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
 * 用户地址
 */
class UserAddress extends Model{
    
    protected $pk = 'addressId';

    /**
     * 获取收货地址列表
     * @param $userId
     * @return array|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
      public function listAddress($userId){
         $where = ['userId'=>(int)$userId,'dataFlag'=>1];
         $rs = $this->order('isDefault asc, addressId desc')->where($where)->select();
         $areaIds = [];
         $areaMaps = [];
         foreach ($rs as $key => $v){
         	 $tmp = explode('_',$v['areaIdPath']);
         	 foreach ($tmp as $vv){
         		if($vv=='')continue;
         	    if(!in_array($vv,$areaIds))$areaIds[] = $vv;
         	 }
         	 $rs[$key]['areaId2'] = $tmp[1];
         }
         if(!empty($areaIds)){
	         $areas = Areas::where([['areaId','in',$areaIds],['isShow','=',1],['dataFlag','=',1]])->field('areaId,areaName')->select();
	         foreach ($areas as $v){
	         	 $areaMaps[$v['areaId']] = $v['areaName'];
	         }
	         foreach ($rs as $key => $v){
	         	$tmp = explode('_',$v['areaIdPath']);
	         	$areaNames = [];
                $isFind = true;
		        foreach ($tmp as $vv){
	         		if($vv=='')continue;
                    if(!isset($areaMaps[$vv])){
                        $isFind = false;
                        continue;
                    }
	         	    $areaNames[] = $areaMaps[$vv];
	            }
                if($isFind){
    	         	$rs[$key]['areaName'] = implode('',$areaNames);
    	         	$rs[$key]['areaName1'] = $areaMaps[$v['areaId2']];
                }
	         }
             $tmp = [];
             for($i=count($rs)-1;$i>=0;$i--){
                if(isset($rs[$i]['areaName']))$tmp[] = $rs[$i];
             }
             $rs = $tmp;
         }
         return $rs;
      }

    /**
     * 获取地址信息
     * @param $id
     * @param $userId
     * @return array|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getAddressById($id, $userId){
    	$rs = $this->get(['addressId'=>$id,'userId'=>$userId,'dataFlag'=>1]);
        if(empty($rs))return [];
        $areaIds = [];
        $areaMaps = [];
        $tmp = explode('_',$rs['areaIdPath']);
        $rs['areaId2'] = $tmp[1];
        foreach ($tmp as $vv){
         	if($vv=='')continue;
         	if(!in_array($vv,$areaIds))$areaIds[] = $vv;
        }
        if(!empty($areaIds)){
	         $areas = Areas::where([['areaId','in',$areaIds],['isShow','=',1],['dataFlag','=',1]])->field('areaId,areaName')->select();
	         foreach ($areas as $v){
	         	 $areaMaps[$v['areaId']] = $v['areaName'];
	         }
	         $tmp = explode('_',$rs['areaIdPath']);
	         $areaNames = [];
		     foreach ($tmp as $vv){
	         	 if($vv=='')continue;
                 if(!isset($areaMaps[$vv]))return [];
	         	 $areaNames[] = $areaMaps[$vv];
	         	 $rs['areaName'] = implode('',$areaNames);
	         }
         }
        return $rs;
    }

    /**
     * 新增收货地址
     * @param $data
     * @return array
     */
    public function addAddress($data){
        unset($data['addressId']);
        $data['createTime'] = date('Y-m-d H:i:s');
        // 检测是否存在下级地区
        $Areas  = new Areas();
        $hasChild = $Areas->hasChild($data['areaId']);
        if($hasChild)return shopReturn('请选择完整的地区信息',0);
        $areaIds = $Areas->getParentIs($data['areaId']);
        if(!empty($areaIds))$data['areaIdPath'] = implode('_',$areaIds)."_";
        $validate = new Validate;
        if (!$validate->scene('add')->check($data)) {
        	return shopReturn($validate->getError());
        }else{
        	$result = $this->allowField(true)->save($data);
        }
        if(false !== $result){
            //修改默认地址
            if($data['isDefault']==1){
            	$this->where("addressId != $this->addressId and userId=".$data['userId'])->setField('isDefault',0);
            }
            return shopReturn("新增成功", 1,['addressId'=>$this->addressId]);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 编辑收货地址
     * @param $userId
     * @param $data
     * @return array
     */
    public function editAddress($userId,$data){
        // 检测是否存在下级地区
        $Areas  = new Areas();
        $hasChild = $Areas->hasChild($data['areaId']);
        if($hasChild)return shopReturn('请选择完整的地区信息',0);
        $areaIds = $Areas->getParentIs($data['areaId']);
        if(!empty($areaIds))$data['areaIdPath'] = implode('_',$areaIds)."_";
        $validate = new Validate;
        if (!$validate->scene('edit')->check($data)) {
        	return shopReturn($validate->getError());
        }else{
        	$result = $this->allowField(true)->save($data,['addressId'=>$data['addressId'],'userId'=>$userId]);
        }
        //修改默认地址
        if($data['isDefault']==1)
          $this->where("addressId != $data[addressId] and userId=".$userId)->setField('isDefault',0);
        if(false !== $result){
            return shopReturn("编辑成功", 1);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 删除收货地址
     * @param $userId
     * @param $address_id
     * @return array
     */
    public function delAddress($userId,$address_id){
        $data = [];
        $data['dataFlag'] = -1;
        $result = $this->update($data,['addressId'=>$address_id,'userId'=>$userId]);
        if(false !== $result){
            return shopReturn("删除成功", 1);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 设置为默认地址
     * @param $userId
     * @param $id
     * @return array
     */
    public function setDefault($userId,$id){
        $this->where([['addressId','<>',$id],['userId','=',$userId]])->setField('isDefault',0);
        $rs = $this->where("addressId = $id and userId=".$userId)->setField('isDefault',1);
        if(false !== $rs){
            return shopReturn("设置成功", 1);
        }else{
            return shopReturn($this->getError(),0);
        }
    }

    /**
     * 获取默认地址
     * @param $userId
     * @return array|null|\PDOStatement|string|Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getDefaultAddress($userId){
    	$where = ['userId'=>$userId,'dataFlag'=>1];
        $rs = $this->where($where)->order('isDefault desc,addressId desc')->find();
        if(empty($rs))return [];
        $areaIds = [];
        $areaMaps = [];
        $tmp = explode('_',$rs['areaIdPath']);
        $rs['areaId2'] = $tmp[1];
        foreach ($tmp as $vv){
         	if($vv=='')continue;
         	if(!in_array($vv,$areaIds))$areaIds[] = $vv;
        }
        if(!empty($areaIds)){
	         $areas = Db::name('areas')->where([['areaId','in',$areaIds],['isShow','=',1],['dataFlag','=',1]])->field('areaId,areaName')->select();
	         foreach ($areas as $v){
	         	 $areaMaps[$v['areaId']] = $v['areaName'];
	         }
	         $tmp = explode('_',$rs['areaIdPath']);
	         $areaNames = [];
		     foreach ($tmp as $vv){
	         	 if($vv=='')continue;
                 if(!isset($areaMaps[$vv]))return [];
	         	 $areaNames[] = $areaMaps[$vv];
	         	 $rs['areaName'] = implode('',$areaNames);
	         }
         }
         return $rs;
    }
}
