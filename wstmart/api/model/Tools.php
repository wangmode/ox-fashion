<?php
namespace wstmart\api\model;
use think\Model;
use think\Exception;
use think\facade\Env;
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
 * 地区类
 */
class Tools extends Model {
    /**
     * @param $fromType
     * @return array
     * @throws Exception
     */
    public static function uploadPic($fromType){
        $fileKey = key($_FILES);
        $dir = Input('param.dir');
        if($dir=='')throw new Exception('没有指定文件目录！');
        $dirs = WSTConf("CONF.wstUploads");
        if(!in_array($dir, $dirs))throw new Exception('非法文件目录！');
        // 上传文件
        $file = request()->file($fileKey);
        if($file===null)throw new Exception('上传文件不存在或超过服务器限制！');
        $rule = [
            'type'=>'image/png,image/gif,image/jpeg,image/x-ms-bmp',
            'ext'=>'jpg,jpeg,gif,png,bmp',
            'size'=>'2097152'
        ];
        $info = $file->validate($rule)->rule('uniqid')->move(Env::get('root_path').'upload/'.$dir."/".date('Y-m'));
        if($info){
            $filePath = $info->getPathname();
            $filePath = str_replace(Env::get('root_path'),'',$filePath);
            $filePath = str_replace('\\','/',$filePath);
            $imgSrc = $info->getFilename();
            $filePath = str_replace($imgSrc,'',$filePath);
            //原图路径
            $imageSrc = trim($filePath.$imgSrc,'/');
            //图片记录
            WSTRecordImages($imageSrc, (int)$fromType);
            //打开原图
            $image = \image\Image::open($imageSrc);
            //缩略图路径 手机版原图路径 手机版缩略图路径
            $thumbSrc = $mSrc = $mThumb = null;
            //手机版原图宽高
            $mWidth = min($image->width(),(int)input('mWidth',700));
            $mHeight = min($image->height(),(int)input('mHeight',700));
            //手机版缩略图宽高
            $mTWidth = min($image->width(),(int)input('mTWidth',250));
            $mTHeight = min($image->height(),(int)input('mTHeight',250));

            /****************************** 生成缩略图 *********************************/
            $isThumb = (int)input('isThumb');
            if($isThumb==1){
                //缩略图路径
                $thumbSrc = str_replace('.', '_thumb.', $imageSrc);
                $image->thumb((int)input('width',min(300,$image->width())), (int)input('height',min(300,$image->height())),2)->save($thumbSrc,$image->type(),90);
                //是否需要生成移动版的缩略图
                $suffix = WSTConf("CONF.wstMobileImgSuffix");
                if(!empty($suffix)){
                    $image = \image\Image::open($imageSrc);
                    $mSrc = str_replace('.',"$suffix.",$imageSrc);
                    $mThumb = str_replace('.', '_thumb.',$mSrc);
                    $image->thumb($mWidth, $mHeight)->save($mSrc,$image->type(),90);
                    $image->thumb($mTWidth, $mTHeight, 2)->save($mThumb,$image->type(),90);
                }
            }
            //判断是否有生成缩略图
            $thumbSrc = ($thumbSrc==null)?$info->getFilename():str_replace('.','_thumb.', $info->getFilename());
            $filePath = ltrim($filePath,'/');
            $info=null;
            $url = formatUrl($imageSrc,2);
            $rdata = ['status'=>1,'savePath'=>$filePath,'name'=>$imgSrc,'thumb'=>$thumbSrc,'url'=>$url];
            hook('afterUploadPic',['data'=>&$rdata,'isLocation'=>(int)input('isLocation')]);
            return $rdata;
        }else{
            //上传失败获取错误信息
            return $file->getError();
        }
    }
}
