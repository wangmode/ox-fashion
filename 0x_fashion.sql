/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 0x_fashion

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-16 00:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ox_accreds
-- ----------------------------
DROP TABLE IF EXISTS `ox_accreds`;
CREATE TABLE `ox_accreds` (
  `accredId` int(11) NOT NULL AUTO_INCREMENT,
  `accredName` varchar(50) NOT NULL,
  `accredImg` varchar(150) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`accredId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_accreds
-- ----------------------------
INSERT INTO `ox_accreds` VALUES ('1', '七天无条件退款', 'upload/accreds/2019-02/5c6f74197968c.png', '1', '2019-02-22 12:01:30');
INSERT INTO `ox_accreds` VALUES ('2', '消保认证商家', 'upload/accreds/2019-02/5c6f74289d057.png', '1', '2019-02-22 12:01:45');

-- ----------------------------
-- Table structure for ox_addons
-- ----------------------------
DROP TABLE IF EXISTS `ox_addons`;
CREATE TABLE `ox_addons` (
  `addonId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `createTime` datetime NOT NULL COMMENT '安装时间',
  `dataFlag` tinyint(4) DEFAULT '1',
  `isConfig` tinyint(4) DEFAULT '0',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`addonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_addons
-- ----------------------------

-- ----------------------------
-- Table structure for ox_ads
-- ----------------------------
DROP TABLE IF EXISTS `ox_ads`;
CREATE TABLE `ox_ads` (
  `adId` int(11) NOT NULL AUTO_INCREMENT,
  `adPositionId` int(11) NOT NULL DEFAULT '0',
  `adFile` varchar(150) NOT NULL,
  `adName` varchar(100) NOT NULL,
  `adURL` varchar(255) DEFAULT NULL,
  `adStartDate` date NOT NULL,
  `adEndDate` date NOT NULL,
  `adSort` int(11) NOT NULL DEFAULT '0',
  `adClickNum` int(11) NOT NULL DEFAULT '0',
  `positionType` tinyint(4) DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adId`),
  KEY `adPositionId` (`adPositionId`,`adStartDate`,`adEndDate`),
  KEY `adPositionId_2` (`adPositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_ads
-- ----------------------------
INSERT INTO `ox_ads` VALUES ('40', '290', 'upload/adspic/2017-06/59520643d6c51.jpg', '商家入驻广告', null, '2016-01-01', '2066-01-01', '0', '0', '1', '1', '2017-06-29 14:48:17', null);
INSERT INTO `ox_ads` VALUES ('41', '290', 'upload/adspic/2017-06/5952047b41189.jpg', '商家入驻广告', null, '2016-01-01', '2066-01-01', '0', '0', '1', '1', '2017-06-29 14:48:17', null);
INSERT INTO `ox_ads` VALUES ('42', '307', 'upload/adspic/2019-01/5c36f8cb6a589.jpg', '111', '', '2019-01-01', '2023-01-31', '0', '0', '1', '1', '2019-01-10 15:48:36', '111');
INSERT INTO `ox_ads` VALUES ('43', '308', 'upload/adspic/2019-01/5c36f8de66f2f.jpg', '1111', '', '2019-01-01', '2025-02-06', '0', '0', '1', '1', '2019-01-10 15:48:52', '111');
INSERT INTO `ox_ads` VALUES ('44', '34', 'upload/adspic/2019-02/5c6fbbca43a13.png', '轮播广告', '', '2015-12-01', '2030-02-28', '0', '0', '1', '1', '2019-02-22 17:07:43', '轮播广告');
INSERT INTO `ox_ads` VALUES ('45', '34', 'upload/adspic/2019-02/5c6fbbf11ed19.png', '轮播广告', '', '2016-02-01', '2030-02-22', '0', '0', '0', '1', '2019-02-22 17:08:14', '轮播广告');
INSERT INTO `ox_ads` VALUES ('46', '34', 'upload/adspic/2019-02/5c6fbc05a2740.png', '轮播广告', '', '2016-01-01', '2030-02-22', '0', '0', '1', '1', '2019-02-22 17:08:41', '轮播广告');
INSERT INTO `ox_ads` VALUES ('47', '34', 'upload/adspic/2019-02/5c6fbc2de1c27.png', '轮播广告', '', '2016-02-01', '2030-02-28', '0', '0', '1', '1', '2019-02-22 17:09:13', '轮播广告');
INSERT INTO `ox_ads` VALUES ('48', '95', 'upload/adspic/2019-02/5c6fbc65742f0.jpg', '资讯上方广告', '', '2016-02-04', '2030-02-22', '0', '0', '1', '1', '2019-02-22 17:10:09', '资讯上方广告');
INSERT INTO `ox_ads` VALUES ('49', '296', 'upload/adspic/2019-02/5c6fbcd873592.png', '品牌街下方左侧广告', '', '2015-02-07', '2030-02-28', '0', '0', '1', '1', '2019-02-22 17:12:03', '品牌街下方左侧广告');
INSERT INTO `ox_ads` VALUES ('50', '303', 'upload/adspic/2019-02/5c70ee16d1ccc.png', '1F', '', '2017-02-01', '2031-02-28', '0', '0', '1', '1', '2019-02-23 14:54:30', '1F');
INSERT INTO `ox_ads` VALUES ('51', '315', 'upload/adspic/2019-02/5c70ee4fb9342.png', '2F', '', '2016-02-03', '2028-02-25', '0', '0', '1', '1', '2019-02-23 14:55:20', '2F');
INSERT INTO `ox_ads` VALUES ('53', '304', 'upload/adspic/2019-02/5c70ee704a548.png', '3F', '', '2016-02-01', '2031-08-29', '0', '0', '1', '1', '2019-02-23 14:56:05', '3F');
INSERT INTO `ox_ads` VALUES ('54', '316', 'upload/adspic/2019-02/5c70ef013db4a.png', '4F', '', '2016-12-08', '2030-02-27', '0', '0', '1', '1', '2019-02-23 14:58:23', '4F');
INSERT INTO `ox_ads` VALUES ('55', '305', 'upload/adspic/2019-02/5c70ef403a30d.png', '5F', '', '2016-02-02', '2029-02-28', '0', '0', '1', '1', '2019-02-23 14:59:21', '5F');
INSERT INTO `ox_ads` VALUES ('56', '317', 'upload/adspic/2019-02/5c70ef627ae0d.png', '6F', '', '2017-01-02', '2029-02-28', '0', '0', '1', '1', '2019-02-23 14:59:56', '6F');
INSERT INTO `ox_ads` VALUES ('57', '306', 'upload/adspic/2019-02/5c70ef9b78be8.png', '7F', '', '2016-02-02', '2028-02-29', '0', '0', '1', '1', '2019-02-23 15:00:51', '7F');
INSERT INTO `ox_ads` VALUES ('58', '318', 'upload/adspic/2019-02/5c70efba204e1.png', '8F', '', '2016-02-02', '2030-03-05', '0', '0', '1', '1', '2019-02-23 15:01:23', '8F');

-- ----------------------------
-- Table structure for ox_ad_positions
-- ----------------------------
DROP TABLE IF EXISTS `ox_ad_positions`;
CREATE TABLE `ox_ad_positions` (
  `positionId` int(11) NOT NULL AUTO_INCREMENT,
  `positionType` tinyint(4) NOT NULL DEFAULT '0',
  `positionName` varchar(100) NOT NULL,
  `positionWidth` int(11) NOT NULL DEFAULT '0',
  `positionHeight` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `positionCode` varchar(20) DEFAULT NULL,
  `apSort` int(11) NOT NULL,
  PRIMARY KEY (`positionId`),
  KEY `dataFlag` (`positionType`) USING BTREE,
  KEY `positionCode` (`positionCode`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_ad_positions
-- ----------------------------
INSERT INTO `ox_ad_positions` VALUES ('34', '1', '首页轮播广告', '1920', '420', '1', 'ads-index', '99');
INSERT INTO `ox_ad_positions` VALUES ('35', '1', '首页顶部广告', '1200', '100', '1', 'index-top-ads', '99');
INSERT INTO `ox_ad_positions` VALUES ('63', '1', '首页分层1F顶部广告', '1200', '110', '1', 'ads-1-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('69', '1', '首页分层3F顶部广告', '1200', '110', '1', 'ads-3-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('75', '1', '首页分层5F顶部广告', '1200', '110', '1', 'ads-5-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('81', '1', '首页分层7F顶部广告', '1200', '110', '1', 'ads-7-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('95', '1', '首页资讯上方广告', '210', '128', '1', 'index-art', '99');
INSERT INTO `ox_ad_positions` VALUES ('290', '1', '商家入驻广告', '1920', '350', '1', 'ads-shop-apply', '99');
INSERT INTO `ox_ad_positions` VALUES ('291', '1', '首页广告墙左上', '448', '237', '1', 'wall-left-top', '99');
INSERT INTO `ox_ad_positions` VALUES ('292', '1', '首页广告墙左下', '448', '237', '1', 'wall-left-bottom', '99');
INSERT INTO `ox_ad_positions` VALUES ('293', '1', '首页广告墙中间', '292', '480', '1', 'wall-center', '99');
INSERT INTO `ox_ad_positions` VALUES ('294', '1', '首页广告墙右上', '448', '237', '1', 'wall-right-top', '99');
INSERT INTO `ox_ad_positions` VALUES ('295', '1', '首页广告墙右下', '448', '237', '1', 'wall-right-bottom', '99');
INSERT INTO `ox_ad_positions` VALUES ('296', '1', '爱上团购替换广告', '329', '500', '1', 'rbnh-left-ads', '99');
INSERT INTO `ox_ad_positions` VALUES ('297', '1', '自营店铺1f广告', '1200', '320', '1', 'self-shop-f1', '99');
INSERT INTO `ox_ad_positions` VALUES ('298', '1', '自营店铺2f广告', '1200', '320', '1', 'self-shop-f2', '99');
INSERT INTO `ox_ad_positions` VALUES ('299', '1', '自营店铺3f广告', '1200', '320', '1', 'self-shop-f3', '99');
INSERT INTO `ox_ad_positions` VALUES ('300', '1', '自营店铺4f广告', '1200', '320', '1', 'self-shop-f4', '99');
INSERT INTO `ox_ad_positions` VALUES ('301', '1', '自营店铺5f广告', '1200', '320', '1', 'self-shop-f5', '99');
INSERT INTO `ox_ad_positions` VALUES ('302', '1', '自营店铺6f广告', '1200', '320', '1', 'self-shop-f6', '99');
INSERT INTO `ox_ad_positions` VALUES ('303', '1', '1F楼层左侧背景图', '240', '560', '1', 'index-floor-left-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('304', '1', '3F楼层左侧背景图', '240', '560', '1', 'index-floor-left-3', '99');
INSERT INTO `ox_ad_positions` VALUES ('305', '1', '5F楼层左侧背景图', '240', '560', '1', 'index-floor-left-5', '99');
INSERT INTO `ox_ad_positions` VALUES ('306', '1', '7F楼层左侧背景图', '240', '560', '1', 'index-floor-left-7', '99');
INSERT INTO `ox_ad_positions` VALUES ('307', '1', '用户登录背景广告', '1920', '480', '1', 'ads-login-user', '99');
INSERT INTO `ox_ad_positions` VALUES ('308', '1', '商家登录背景广告', '1920', '480', '1', 'ads-login-shop', '99');
INSERT INTO `ox_ad_positions` VALUES ('309', '1', '首页分层2F顶部广告', '1200', '110', '1', 'ads-2-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('310', '1', '首页分层4F顶部广告', '1200', '110', '1', 'ads-4-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('311', '1', '首页分层6F顶部广告', '1200', '110', '1', 'ads-6-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('312', '1', '首页分层8F顶部广告', '1200', '110', '1', 'ads-8-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('313', '1', '首页分层9F顶部广告', '1200', '110', '1', 'ads-9-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('314', '1', '首页分层10F顶部广告', '1200', '110', '1', 'ads-10-1', '99');
INSERT INTO `ox_ad_positions` VALUES ('315', '1', '2F楼层左侧背景图', '1200', '110', '1', 'index-floor-left-2', '99');
INSERT INTO `ox_ad_positions` VALUES ('316', '1', '4F楼层左侧背景图', '240', '560', '1', 'index-floor-left-4', '99');
INSERT INTO `ox_ad_positions` VALUES ('317', '1', '6F楼层左侧背景图', '240', '560', '1', 'index-floor-left-6', '99');
INSERT INTO `ox_ad_positions` VALUES ('318', '1', '8F楼层左侧背景图', '240', '560', '1', 'index-floor-left-8', '99');
INSERT INTO `ox_ad_positions` VALUES ('319', '1', '9F楼层左侧背景图', '240', '560', '1', 'index-floor-left-9', '99');
INSERT INTO `ox_ad_positions` VALUES ('320', '1', '10F楼层左侧背景图', '240', '560', '1', 'index-floor-left-10', '99');

-- ----------------------------
-- Table structure for ox_areas
-- ----------------------------
DROP TABLE IF EXISTS `ox_areas`;
CREATE TABLE `ox_areas` (
  `areaId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `areaName` varchar(100) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `areaSort` int(11) NOT NULL DEFAULT '0',
  `areaKey` char(10) DEFAULT NULL,
  `areaType` tinyint(4) NOT NULL DEFAULT '1',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`areaId`),
  KEY `isShow` (`isShow`,`dataFlag`),
  KEY `areaType` (`areaType`),
  KEY `parentId` (`parentId`)
) ENGINE=InnoDB AUTO_INCREMENT=820304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_areas
-- ----------------------------
INSERT INTO `ox_areas` VALUES ('2', '0', '北京市', '1', '0', 'B', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('3', '0', '安徽省', '1', '0', 'A', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('4', '0', '福建省', '1', '0', 'F', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('5', '0', '甘肃省', '1', '0', 'G', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('6', '0', '广东省', '1', '0', 'G', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('7', '0', '广西壮族自治区', '1', '0', 'G', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('8', '0', '贵州省', '1', '0', 'G', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('9', '0', '海南省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('10', '0', '河北省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('11', '0', '河南省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('12', '0', '黑龙江省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('13', '0', '湖北省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('14', '0', '湖南省', '1', '0', 'H', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('15', '0', '吉林省', '1', '0', 'J', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('16', '0', '江苏省', '1', '0', 'J', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('17', '0', '江西省', '1', '0', 'J', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('18', '0', '辽宁省', '1', '0', 'L', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('19', '0', '内蒙古自治区', '1', '0', 'N', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('20', '0', '宁夏回族自治区', '1', '0', 'N', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('21', '0', '青海省', '1', '0', 'Q', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('22', '0', '山东省', '1', '0', 'S', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('23', '0', '山西省', '1', '0', 'S', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('24', '0', '陕西省', '1', '0', 'S', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('25', '0', '上海市', '1', '0', 'S', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('26', '0', '四川省', '1', '0', 'S', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('27', '0', '天津市', '1', '0', 'T', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('28', '0', '西藏自治区', '1', '0', 'X', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('29', '0', '新疆维吾尔自治区', '1', '0', 'X', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('30', '0', '云南省', '1', '0', 'Y', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('31', '0', '浙江省', '1', '0', 'Z', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('32', '0', '重庆市', '1', '0', 'C', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('33', '0', '香港特别行政区', '1', '0', 'X', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('34', '0', '澳门特别行政区', '1', '0', 'A', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('35', '0', '台湾省', '1', '0', 'T', '0', '1', null);
INSERT INTO `ox_areas` VALUES ('36', '3', '安庆市', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('37', '3', '蚌埠市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('38', '3', '巢湖市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('39', '3', '池州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('40', '3', '滁州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('41', '3', '阜阳市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('42', '3', '淮北市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('43', '3', '淮南市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('44', '3', '黄山市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('45', '3', '六安市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('46', '3', '马鞍山市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('47', '3', '宿州市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('48', '3', '铜陵市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('49', '3', '芜湖市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('50', '3', '宣城市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('51', '3', '亳州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('52', '2', '北京', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('53', '4', '福州市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('54', '4', '龙岩市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('55', '4', '南平市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('56', '4', '宁德市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('57', '4', '莆田市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('58', '4', '泉州市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('59', '4', '三明市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('60', '4', '厦门市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('61', '4', '漳州市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('62', '5', '兰州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('63', '5', '白银市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('64', '5', '定西市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('65', '5', '甘南藏族自治州', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('66', '5', '嘉峪关', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('67', '5', '金昌市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('68', '5', '酒泉市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('69', '5', '临夏回族自治州', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('70', '5', '陇南市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('71', '5', '平凉市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('72', '5', '庆阳市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('73', '5', '天水市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('74', '5', '武威市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('75', '5', '张掖市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('76', '6', '广州市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('77', '6', '深圳市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('78', '6', '潮州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('79', '6', '东莞市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('80', '6', '佛山市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('81', '6', '河源市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('82', '6', '惠州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('83', '6', '江门市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('84', '6', '揭阳市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('85', '6', '茂名市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('86', '6', '梅州市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('87', '6', '清远市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('88', '6', '汕头市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('89', '6', '汕尾市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('90', '6', '韶关市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('91', '6', '阳江市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('92', '6', '云浮市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('93', '6', '湛江市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('94', '6', '肇庆市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('95', '6', '中山市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('96', '6', '珠海市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('97', '7', '南宁市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('98', '7', '桂林市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('99', '7', '百色市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('100', '7', '北海市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('101', '7', '崇左市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('102', '7', '防城港市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('103', '7', '贵港市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('104', '7', '河池市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('105', '7', '贺州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('106', '7', '来宾市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('107', '7', '柳州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('108', '7', '钦州市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('109', '7', '梧州市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('110', '7', '玉林市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('111', '8', '贵阳市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('112', '8', '安顺市', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('113', '8', '毕节市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('114', '8', '六盘水市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('115', '8', '黔东南苗族侗族自治州', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('116', '8', '黔西南布依族苗族自治州', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('117', '8', '黔南布依族苗族自治州', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('118', '8', '铜仁', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('119', '8', '遵义', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('120', '9', '海口市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('121', '9', '三亚市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('122', '9', '白沙黎族自治县', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('123', '9', '保亭黎族苗族自治县', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('124', '9', '昌江黎族自治县', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('125', '9', '澄迈县', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('126', '9', '定安县', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('127', '9', '东方市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('128', '9', '乐东黎族自治县', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('129', '9', '临高县', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('130', '9', '陵水黎族自治县', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('131', '9', '琼海市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('132', '9', '琼中黎族苗族自治县', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('133', '9', '屯昌县', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('134', '9', '万宁市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('135', '9', '文昌市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('136', '9', '五指山市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('137', '9', '儋州市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('138', '10', '石家庄市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('139', '10', '保定市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('140', '10', '沧州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('141', '10', '承德市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('142', '10', '邯郸市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('143', '10', '衡水市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('144', '10', '廊坊市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('145', '10', '秦皇岛市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('146', '10', '唐山市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('147', '10', '邢台市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('148', '10', '张家口市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('149', '11', '郑州市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('150', '11', '洛阳市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('151', '11', '开封市', '1', '0', 'K', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('152', '11', '安阳市', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('153', '11', '鹤壁市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('154', '11', '济源市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('155', '11', '焦作市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('156', '11', '南阳市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('157', '11', '平顶山市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('158', '11', '三门峡市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('159', '11', '商丘市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('160', '11', '新乡市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('161', '11', '信阳市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('162', '11', '许昌市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('163', '11', '周口市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('164', '11', '驻马店市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('165', '11', '漯河市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('166', '11', '濮阳市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('167', '12', '哈尔滨市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('168', '12', '大庆市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('169', '12', '大兴安岭地区', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('170', '12', '鹤岗市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('171', '12', '黑河市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('172', '12', '鸡西市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('173', '12', '佳木斯市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('174', '12', '牡丹江市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('175', '12', '七台河市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('176', '12', '齐齐哈尔市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('177', '12', '双鸭山市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('178', '12', '绥化市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('179', '12', '伊春市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('180', '13', '武汉市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('181', '13', '仙桃市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('182', '13', '鄂州市', '1', '0', 'E', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('183', '13', '黄冈市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('184', '13', '黄石市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('185', '13', '荆门市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('186', '13', '荆州市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('187', '13', '潜江市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('188', '13', '神农架林区', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('189', '13', '十堰市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('190', '13', '随州市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('191', '13', '天门市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('192', '13', '咸宁市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('193', '13', '襄樊市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('194', '13', '孝感市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('195', '13', '宜昌市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('196', '13', '恩施土家族苗族自治州', '1', '0', 'E', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('197', '14', '长沙市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('198', '14', '张家界市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('199', '14', '常德市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('200', '14', '郴州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('201', '14', '衡阳市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('202', '14', '怀化市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('203', '14', '娄底市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('204', '14', '邵阳市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('205', '14', '湘潭市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('206', '14', '湘西土家族苗族自治州', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('207', '14', '益阳市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('208', '14', '永州市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('209', '14', '岳阳市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('210', '14', '株洲市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('211', '15', '长春市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('212', '15', '吉林市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('213', '15', '白城市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('214', '15', '白山市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('215', '15', '辽源市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('216', '15', '四平市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('217', '15', '松原市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('218', '15', '通化市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('219', '15', '延边朝鲜族自治州', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('220', '16', '南京市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('221', '16', '苏州市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('222', '16', '无锡市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('223', '16', '常州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('224', '16', '淮安市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('225', '16', '连云港市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('226', '16', '南通市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('227', '16', '宿迁市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('228', '16', '泰州市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('229', '16', '徐州市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('230', '16', '盐城市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('231', '16', '扬州市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('232', '16', '镇江市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('233', '17', '南昌市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('234', '17', '抚州市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('235', '17', '赣州市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('236', '17', '吉安市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('237', '17', '景德镇市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('238', '17', '九江市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('239', '17', '萍乡市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('240', '17', '上饶市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('241', '17', '新余市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('242', '17', '宜春市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('243', '17', '鹰潭市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('244', '18', '沈阳市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('245', '18', '大连市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('246', '18', '鞍山市', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('247', '18', '本溪市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('248', '18', '朝阳市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('249', '18', '丹东市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('250', '18', '抚顺市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('251', '18', '阜新市', '1', '0', 'F', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('252', '18', '葫芦岛市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('253', '18', '锦州市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('254', '18', '辽阳市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('255', '18', '盘锦市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('256', '18', '铁岭市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('257', '18', '营口市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('258', '19', '呼和浩特市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('259', '19', '阿拉善盟', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('260', '19', '巴彦淖尔盟', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('261', '19', '包头市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('262', '19', '赤峰市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('263', '19', '鄂尔多斯市', '1', '0', 'E', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('264', '19', '呼伦贝尔市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('265', '19', '通辽市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('266', '19', '乌海市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('267', '19', '乌兰察布市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('268', '19', '锡林郭勒盟', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('269', '19', '兴安盟', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('270', '20', '银川市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('271', '20', '固原市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('272', '20', '石嘴山市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('273', '20', '吴忠市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('274', '20', '中卫市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('275', '21', '西宁市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('276', '21', '果洛藏族自治州', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('277', '21', '海北藏族自治州', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('278', '21', '海东市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('279', '21', '海南藏族自治州', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('280', '21', '海西蒙古族藏族自治州', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('281', '21', '黄南藏族自治州', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('282', '21', '玉树藏族自治州', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('283', '22', '济南市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('284', '22', '青岛市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('285', '22', '滨州市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('286', '22', '德州市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('287', '22', '东营市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('288', '22', '菏泽市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('289', '22', '济宁市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('290', '22', '莱芜市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('291', '22', '聊城市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('292', '22', '临沂市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('293', '22', '日照市', '1', '0', 'R', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('294', '22', '泰安市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('295', '22', '威海市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('296', '22', '潍坊市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('297', '22', '烟台市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('298', '22', '枣庄市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('299', '22', '淄博市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('300', '23', '太原市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('301', '23', '长治市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('302', '23', '大同市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('303', '23', '晋城市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('304', '23', '晋中市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('305', '23', '临汾市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('306', '23', '吕梁市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('307', '23', '朔州市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('308', '23', '忻州市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('309', '23', '阳泉市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('310', '23', '运城市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('311', '24', '西安市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('312', '24', '安康市', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('313', '24', '宝鸡市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('314', '24', '汉中市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('315', '24', '商洛市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('316', '24', '铜川市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('317', '24', '渭南市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('318', '24', '咸阳市', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('319', '24', '延安市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('320', '24', '榆林市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('321', '25', '上海', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('322', '26', '成都市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('323', '26', '绵阳市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('324', '26', '阿坝藏族羌族自治州', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('325', '26', '巴中市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('326', '26', '达州市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('327', '26', '德阳市', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('328', '26', '甘孜藏族自治州', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('329', '26', '广安市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('330', '26', '广元市', '1', '0', 'G', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('331', '26', '乐山市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('332', '26', '凉山彝族自治州', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('333', '26', '眉山市', '1', '0', 'M', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('334', '26', '南充市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('335', '26', '内江市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('336', '26', '攀枝花', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('337', '26', '遂宁市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('338', '26', '雅安市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('339', '26', '宜宾市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('340', '26', '资阳市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('341', '26', '自贡市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('342', '26', '泸州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('343', '27', '天津', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('344', '28', '拉萨市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('345', '28', '阿里地区', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('346', '28', '昌都市', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('347', '28', '林芝市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('348', '28', '那曲地区', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('349', '28', '日喀则市', '1', '0', 'R', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('350', '28', '山南市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('351', '29', '乌鲁木齐市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('352', '29', '阿克苏地区', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('353', '29', '阿拉尔', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('354', '29', '巴音郭楞蒙古自治州', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('355', '29', '博尔塔拉蒙古自治州', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('356', '29', '昌吉回族自治州', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('357', '29', '哈密市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('358', '29', '和田地区', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('359', '29', '喀什地区', '1', '0', 'K', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('360', '29', '克拉玛依市', '1', '0', 'K', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('361', '29', '克孜勒苏柯尔克孜自治州', '1', '0', 'K', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('362', '29', '石河子', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('363', '29', '图木舒克', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('364', '29', '吐鲁番市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('365', '29', '五家渠市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('366', '29', '伊犁哈萨克自治州', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('367', '30', '昆明市', '1', '0', 'K', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('368', '30', '怒江傈僳族自治州', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('369', '30', '普洱市', '1', '0', 'P', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('370', '30', '丽江市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('371', '30', '保山市', '1', '0', 'B', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('372', '30', '楚雄彝族自治州', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('373', '30', '大理白族自治州', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('374', '30', '德宏傣族景颇族自治州', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('375', '30', '迪庆藏族自治州', '1', '0', 'D', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('376', '30', '红河哈尼族彝族自治州', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('377', '30', '临沧市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('378', '30', '曲靖市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('379', '30', '文山壮族苗族自治州', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('380', '30', '西双版纳傣族自治州', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('381', '30', '玉溪市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('382', '30', '昭通市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('383', '31', '杭州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('384', '31', '湖州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('385', '31', '嘉兴市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('386', '31', '金华市', '1', '0', 'J', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('387', '31', '丽水市', '1', '0', 'L', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('388', '31', '宁波市', '1', '0', 'N', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('389', '31', '绍兴市', '1', '0', 'S', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('390', '31', '台州市', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('391', '31', '温州市', '1', '0', 'W', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('392', '31', '舟山市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('393', '31', '衢州市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('394', '32', '重庆', '1', '0', 'C', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('395', '33', '香港', '1', '0', 'X', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('396', '34', '澳门', '1', '0', 'A', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('397', '35', '台湾', '1', '0', 'T', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('398', '36', '迎江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('399', '36', '大观区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('400', '36', '宜秀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('401', '36', '桐城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('402', '36', '怀宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('403', '36', '枞阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('404', '36', '潜山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('405', '36', '太湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('406', '36', '宿松县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('407', '36', '望江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('408', '36', '岳西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('409', '37', '中市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('410', '37', '东市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('411', '37', '西市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('412', '37', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('413', '37', '怀远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('414', '37', '五河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('415', '37', '固镇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('416', '38', '居巢区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('417', '38', '庐江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('418', '38', '无为县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('419', '38', '含山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('420', '38', '和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('421', '39', '贵池区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('422', '39', '东至县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('423', '39', '石台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('424', '39', '青阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('425', '40', '琅琊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('426', '40', '南谯区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('427', '40', '天长市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('428', '40', '明光市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('429', '40', '来安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('430', '40', '全椒县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('431', '40', '定远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('432', '40', '凤阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('433', '41', '蚌山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('434', '41', '龙子湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('435', '41', '禹会区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('436', '41', '淮上区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('437', '41', '颍州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('438', '41', '颍东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('439', '41', '颍泉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('440', '41', '界首市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('441', '41', '临泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('442', '41', '太和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('443', '41', '阜南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('444', '41', '颖上县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('445', '42', '相山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('446', '42', '杜集区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('447', '42', '烈山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('448', '42', '濉溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('449', '43', '田家庵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('450', '43', '大通区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('451', '43', '谢家集区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('452', '43', '八公山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('453', '43', '潘集区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('454', '43', '凤台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('455', '44', '屯溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('456', '44', '黄山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('457', '44', '徽州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('458', '44', '歙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('459', '44', '休宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('460', '44', '黟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('461', '44', '祁门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('462', '45', '金安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('463', '45', '裕安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('464', '45', '寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('465', '45', '霍邱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('466', '45', '舒城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('467', '45', '金寨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('468', '45', '霍山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('469', '46', '雨山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('470', '46', '花山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('471', '46', '金家庄区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('472', '46', '当涂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('473', '47', '埇桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('474', '47', '砀山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('475', '47', '萧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('476', '47', '灵璧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('477', '47', '泗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('478', '48', '铜官山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('479', '48', '狮子山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('480', '48', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('481', '48', '铜陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('482', '49', '镜湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('483', '49', '弋江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('484', '49', '鸠江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('485', '49', '三山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('486', '49', '芜湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('487', '49', '繁昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('488', '49', '南陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('489', '50', '宣州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('490', '50', '宁国市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('491', '50', '郎溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('492', '50', '广德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('493', '50', '泾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('494', '50', '绩溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('495', '50', '旌德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('496', '51', '涡阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('497', '51', '蒙城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('498', '51', '利辛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('499', '51', '谯城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('500', '52', '东城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('501', '52', '西城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('502', '52', '海淀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('503', '52', '朝阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('504', '52', '崇文区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('505', '52', '宣武区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('506', '52', '丰台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('507', '52', '石景山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('508', '52', '房山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('509', '52', '门头沟区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('510', '52', '通州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('511', '52', '顺义区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('512', '52', '昌平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('513', '52', '怀柔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('514', '52', '平谷区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('515', '52', '大兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('516', '52', '密云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('517', '52', '延庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('518', '53', '鼓楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('519', '53', '台江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('520', '53', '仓山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('521', '53', '马尾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('522', '53', '晋安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('523', '53', '福清市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('524', '53', '长乐市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('525', '53', '闽侯县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('526', '53', '连江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('527', '53', '罗源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('528', '53', '闽清县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('529', '53', '永泰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('530', '53', '平潭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('531', '54', '新罗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('532', '54', '漳平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('533', '54', '长汀县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('534', '54', '永定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('535', '54', '上杭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('536', '54', '武平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('537', '54', '连城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('538', '55', '延平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('539', '55', '邵武市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('540', '55', '武夷山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('541', '55', '建瓯市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('542', '55', '建阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('543', '55', '顺昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('544', '55', '浦城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('545', '55', '光泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('546', '55', '松溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('547', '55', '政和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('548', '56', '蕉城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('549', '56', '福安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('550', '56', '福鼎市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('551', '56', '霞浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('552', '56', '古田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('553', '56', '屏南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('554', '56', '寿宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('555', '56', '周宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('556', '56', '柘荣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('557', '57', '城厢区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('558', '57', '涵江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('559', '57', '荔城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('560', '57', '秀屿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('561', '57', '仙游县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('562', '58', '鲤城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('563', '58', '丰泽区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('564', '58', '洛江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('565', '58', '清濛开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('566', '58', '泉港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('567', '58', '石狮市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('568', '58', '晋江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('569', '58', '南安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('570', '58', '惠安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('571', '58', '安溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('572', '58', '永春县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('573', '58', '德化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('574', '58', '金门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('575', '59', '梅列区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('576', '59', '三元区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('577', '59', '永安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('578', '59', '明溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('579', '59', '清流县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('580', '59', '宁化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('581', '59', '大田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('582', '59', '尤溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('583', '59', '沙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('584', '59', '将乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('585', '59', '泰宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('586', '59', '建宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('587', '60', '思明区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('588', '60', '海沧区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('589', '60', '湖里区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('590', '60', '集美区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('591', '60', '同安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('592', '60', '翔安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('593', '61', '芗城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('594', '61', '龙文区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('595', '61', '龙海市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('596', '61', '云霄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('597', '61', '漳浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('598', '61', '诏安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('599', '61', '长泰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('600', '61', '东山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('601', '61', '南靖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('602', '61', '平和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('603', '61', '华安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('604', '62', '皋兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('605', '62', '城关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('606', '62', '七里河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('607', '62', '西固区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('608', '62', '安宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('609', '62', '红古区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('610', '62', '永登县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('611', '62', '榆中县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('612', '63', '白银区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('613', '63', '平川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('614', '63', '会宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('615', '63', '景泰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('616', '63', '靖远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('617', '64', '临洮县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('618', '64', '陇西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('619', '64', '通渭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('620', '64', '渭源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('621', '64', '漳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('622', '64', '岷县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('623', '64', '安定区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('624', '64', '安定区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('625', '65', '合作市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('626', '65', '临潭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('627', '65', '卓尼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('628', '65', '舟曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('629', '65', '迭部县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('630', '65', '玛曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('631', '65', '碌曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('632', '65', '夏河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('633', '66', '嘉峪关市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('634', '67', '金川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('635', '67', '永昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('636', '68', '肃州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('637', '68', '玉门市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('638', '68', '敦煌市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('639', '68', '金塔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('640', '68', '瓜州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('641', '68', '肃北', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('642', '68', '阿克塞', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('643', '69', '临夏市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('644', '69', '临夏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('645', '69', '康乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('646', '69', '永靖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('647', '69', '广河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('648', '69', '和政县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('649', '69', '东乡族自治县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('650', '69', '积石山', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('651', '70', '成县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('652', '70', '徽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('653', '70', '康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('654', '70', '礼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('655', '70', '两当县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('656', '70', '文县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('657', '70', '西和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('658', '70', '宕昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('659', '70', '武都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('660', '71', '崇信县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('661', '71', '华亭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('662', '71', '静宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('663', '71', '灵台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('664', '71', '崆峒区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('665', '71', '庄浪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('666', '71', '泾川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('667', '72', '合水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('668', '72', '华池县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('669', '72', '环县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('670', '72', '宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('671', '72', '庆城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('672', '72', '西峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('673', '72', '镇原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('674', '72', '正宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('675', '73', '甘谷县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('676', '73', '秦安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('677', '73', '清水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('678', '73', '秦州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('679', '73', '麦积区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('680', '73', '武山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('681', '73', '张家川', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('682', '74', '古浪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('683', '74', '民勤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('684', '74', '天祝', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('685', '74', '凉州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('686', '75', '高台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('687', '75', '临泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('688', '75', '民乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('689', '75', '山丹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('690', '75', '肃南', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('691', '75', '甘州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('692', '76', '从化区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('693', '76', '天河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('695', '76', '白云区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('696', '76', '海珠区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('697', '76', '荔湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('698', '76', '越秀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('699', '76', '黄埔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('700', '76', '番禺区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('701', '76', '花都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('702', '76', '增城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('703', '76', '南沙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('705', '77', '福田区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('706', '77', '罗湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('707', '77', '南山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('708', '77', '宝安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('709', '77', '龙岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('710', '77', '盐田区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('711', '78', '湘桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('712', '78', '潮安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('713', '78', '饶平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('714', '79', '南城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('715', '79', '东城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('716', '79', '万江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('717', '79', '莞城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('718', '79', '石龙镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('719', '79', '虎门镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('720', '79', '麻涌镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('721', '79', '道滘镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('722', '79', '石碣镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('723', '79', '沙田镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('724', '79', '望牛墩镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('725', '79', '洪梅镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('726', '79', '茶山镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('727', '79', '寮步镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('728', '79', '大岭山镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('729', '79', '大朗镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('730', '79', '黄江镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('731', '79', '樟木头', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('732', '79', '凤岗镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('733', '79', '塘厦镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('734', '79', '谢岗镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('735', '79', '厚街镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('736', '79', '清溪镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('737', '79', '常平镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('738', '79', '桥头镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('739', '79', '横沥镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('740', '79', '东坑镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('741', '79', '企石镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('742', '79', '石排镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('743', '79', '长安镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('744', '79', '中堂镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('745', '79', '高埗镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('746', '80', '禅城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('747', '80', '南海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('748', '80', '顺德区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('749', '80', '三水区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('750', '80', '高明区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('751', '81', '东源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('752', '81', '和平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('753', '81', '源城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('754', '81', '连平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('755', '81', '龙川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('756', '81', '紫金县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('757', '82', '惠阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('758', '82', '惠城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('759', '82', '大亚湾', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('760', '82', '博罗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('761', '82', '惠东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('762', '82', '龙门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('763', '83', '江海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('764', '83', '蓬江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('765', '83', '新会区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('766', '83', '台山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('767', '83', '开平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('768', '83', '鹤山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('769', '83', '恩平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('770', '84', '榕城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('771', '84', '普宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('772', '84', '揭东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('773', '84', '揭西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('774', '84', '惠来县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('775', '85', '茂南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('776', '85', '茂港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('777', '85', '高州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('778', '85', '化州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('779', '85', '信宜市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('780', '85', '电白县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('781', '86', '梅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('782', '86', '梅江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('783', '86', '兴宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('784', '86', '大埔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('785', '86', '丰顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('786', '86', '五华县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('787', '86', '平远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('788', '86', '蕉岭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('789', '87', '清城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('790', '87', '英德市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('791', '87', '连州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('792', '87', '佛冈县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('793', '87', '阳山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('794', '87', '清新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('795', '87', '连山', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('796', '87', '连南', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('797', '88', '南澳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('798', '88', '潮阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('799', '88', '澄海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('800', '88', '龙湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('801', '88', '金平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('802', '88', '濠江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('803', '88', '潮南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('804', '89', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('805', '89', '陆丰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('806', '89', '海丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('807', '89', '陆河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('808', '90', '曲江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('809', '90', '浈江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('810', '90', '武江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('811', '90', '曲江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('812', '90', '乐昌市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('813', '90', '南雄市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('814', '90', '始兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('815', '90', '仁化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('816', '90', '翁源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('817', '90', '新丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('818', '90', '乳源', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('819', '91', '江城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('820', '91', '阳春市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('821', '91', '阳西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('822', '91', '阳东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('823', '92', '云城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('824', '92', '罗定市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('825', '92', '新兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('826', '92', '郁南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('827', '92', '云安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('828', '93', '赤坎区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('829', '93', '霞山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('830', '93', '坡头区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('831', '93', '麻章区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('832', '93', '廉江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('833', '93', '雷州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('834', '93', '吴川市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('835', '93', '遂溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('836', '93', '徐闻县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('837', '94', '肇庆市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('838', '94', '高要市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('839', '94', '四会市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('840', '94', '广宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('841', '94', '怀集县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('842', '94', '封开县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('843', '94', '德庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('844', '95', '石岐街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('845', '95', '东区街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('846', '95', '西区街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('847', '95', '环城街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('848', '95', '中山港街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('849', '95', '五桂山街道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('850', '96', '香洲区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('851', '96', '斗门区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('852', '96', '金湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('853', '97', '邕宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('854', '97', '青秀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('855', '97', '兴宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('856', '97', '良庆区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('857', '97', '西乡塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('858', '97', '江南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('859', '97', '武鸣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('860', '97', '隆安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('861', '97', '马山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('862', '97', '上林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('863', '97', '宾阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('864', '97', '横县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('865', '98', '秀峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('866', '98', '叠彩区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('867', '98', '象山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('868', '98', '七星区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('869', '98', '雁山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('870', '98', '阳朔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('871', '98', '临桂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('872', '98', '灵川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('873', '98', '全州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('874', '98', '平乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('875', '98', '兴安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('876', '98', '灌阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('877', '98', '荔浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('878', '98', '资源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('879', '98', '永福县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('880', '98', '龙胜', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('881', '98', '恭城', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('882', '99', '右江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('883', '99', '凌云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('884', '99', '平果县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('885', '99', '西林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('886', '99', '乐业县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('887', '99', '德保县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('888', '99', '田林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('889', '99', '田阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('890', '99', '靖西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('891', '99', '田东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('892', '99', '那坡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('893', '99', '隆林', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('894', '100', '海城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('895', '100', '银海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('896', '100', '铁山港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('897', '100', '合浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('898', '101', '江州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('899', '101', '凭祥市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('900', '101', '宁明县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('901', '101', '扶绥县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('902', '101', '龙州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('903', '101', '大新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('904', '101', '天等县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('905', '102', '港口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('906', '102', '防城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('907', '102', '东兴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('908', '102', '上思县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('909', '103', '港北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('910', '103', '港南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('911', '103', '覃塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('912', '103', '桂平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('913', '103', '平南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('914', '104', '金城江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('915', '104', '宜州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('916', '104', '天峨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('917', '104', '凤山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('918', '104', '南丹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('919', '104', '东兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('920', '104', '都安', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('921', '104', '罗城', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('922', '104', '巴马', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('923', '104', '环江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('924', '104', '大化', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('925', '105', '八步区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('926', '105', '钟山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('927', '105', '昭平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('928', '105', '富川', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('929', '106', '兴宾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('930', '106', '合山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('931', '106', '象州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('932', '106', '武宣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('933', '106', '忻城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('934', '106', '金秀', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('935', '107', '城中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('936', '107', '鱼峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('937', '107', '柳北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('938', '107', '柳南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('939', '107', '柳江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('940', '107', '柳城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('941', '107', '鹿寨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('942', '107', '融安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('943', '107', '融水', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('944', '107', '三江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('945', '108', '钦南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('946', '108', '钦北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('947', '108', '灵山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('948', '108', '浦北县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('949', '109', '万秀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('950', '109', '蝶山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('951', '109', '长洲区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('952', '109', '岑溪市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('953', '109', '苍梧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('954', '109', '藤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('955', '109', '蒙山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('956', '110', '玉州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('957', '110', '北流市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('958', '110', '容县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('959', '110', '陆川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('960', '110', '博白县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('961', '110', '兴业县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('962', '111', '南明区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('963', '111', '云岩区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('964', '111', '花溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('965', '111', '乌当区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('966', '111', '白云区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('967', '111', '小河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('968', '111', '金阳新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('969', '111', '新天园区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('970', '111', '清镇市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('971', '111', '开阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('972', '111', '修文县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('973', '111', '息烽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('974', '112', '西秀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('975', '112', '关岭', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('976', '112', '镇宁', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('977', '112', '紫云', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('978', '112', '平坝县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('979', '112', '普定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('980', '113', '毕节市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('981', '113', '大方县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('982', '113', '黔西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('983', '113', '金沙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('984', '113', '织金县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('985', '113', '纳雍县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('986', '113', '赫章县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('987', '113', '威宁', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('988', '114', '钟山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('989', '114', '六枝特区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('990', '114', '水城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('991', '114', '盘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('992', '115', '凯里市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('993', '115', '黄平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('994', '115', '施秉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('995', '115', '三穗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('996', '115', '镇远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('997', '115', '岑巩县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('998', '115', '天柱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('999', '115', '锦屏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1000', '115', '剑河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1001', '115', '台江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1002', '115', '黎平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1003', '115', '榕江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1004', '115', '从江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1005', '115', '雷山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1006', '115', '麻江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1007', '115', '丹寨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1008', '116', '都匀市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1009', '116', '福泉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1010', '116', '荔波县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1011', '116', '贵定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1012', '116', '瓮安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1013', '116', '独山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1014', '116', '平塘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1015', '116', '罗甸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1016', '116', '长顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1017', '116', '龙里县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1018', '116', '惠水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1019', '116', '三都', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1020', '117', '兴义市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1021', '117', '兴仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1022', '117', '普安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1023', '117', '晴隆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1024', '117', '贞丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1025', '117', '望谟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1026', '117', '册亨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1027', '117', '安龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1028', '118', '铜仁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1029', '118', '江口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1030', '118', '石阡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1031', '118', '思南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1032', '118', '德江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1033', '118', '玉屏', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1034', '118', '印江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1035', '118', '沿河', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1036', '118', '松桃', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1037', '118', '万山特区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1038', '119', '红花岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1039', '119', '务川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1040', '119', '道真县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1041', '119', '汇川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1042', '119', '赤水市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1043', '119', '仁怀市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1044', '119', '遵义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1045', '119', '桐梓县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1046', '119', '绥阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1047', '119', '正安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1048', '119', '凤冈县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1049', '119', '湄潭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1050', '119', '余庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1051', '119', '习水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1052', '119', '道真', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1053', '119', '务川', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1054', '120', '秀英区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1055', '120', '龙华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1056', '120', '琼山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1057', '120', '美兰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1058', '137', '市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1059', '137', '洋浦开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1060', '137', '那大镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1061', '137', '王五镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1062', '137', '雅星镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1063', '137', '大成镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1064', '137', '中和镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1065', '137', '峨蔓镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1066', '137', '南丰镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1067', '137', '白马井镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1068', '137', '兰洋镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1069', '137', '和庆镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1070', '137', '海头镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1071', '137', '排浦镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1072', '137', '东成镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1073', '137', '光村镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1074', '137', '木棠镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1075', '137', '新州镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1076', '137', '三都镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1077', '137', '其他', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1078', '138', '长安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1079', '138', '桥东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1080', '138', '桥西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1081', '138', '新华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1082', '138', '裕华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1083', '138', '井陉矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1084', '138', '高新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1085', '138', '辛集市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1086', '138', '藁城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1087', '138', '晋州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1088', '138', '新乐市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1089', '138', '鹿泉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1090', '138', '井陉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1091', '138', '正定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1092', '138', '栾城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1093', '138', '行唐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1094', '138', '灵寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1095', '138', '高邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1096', '138', '深泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1097', '138', '赞皇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1098', '138', '无极县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1099', '138', '平山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1100', '138', '元氏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1101', '138', '赵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1102', '139', '新市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1103', '139', '南市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1104', '139', '北市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1105', '139', '涿州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1106', '139', '定州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1107', '139', '安国市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1108', '139', '高碑店市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1109', '139', '满城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1110', '139', '清苑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1111', '139', '涞水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1112', '139', '阜平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1113', '139', '徐水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1114', '139', '定兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1115', '139', '唐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1116', '139', '高阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1117', '139', '容城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1118', '139', '涞源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1119', '139', '望都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1120', '139', '安新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1121', '139', '易县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1122', '139', '曲阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1123', '139', '蠡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1124', '139', '顺平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1125', '139', '博野县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1126', '139', '雄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1127', '140', '运河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1128', '140', '新华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1129', '140', '泊头市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1130', '140', '任丘市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1131', '140', '黄骅市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1132', '140', '河间市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1133', '140', '沧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1134', '140', '青县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1135', '140', '东光县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1136', '140', '海兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1137', '140', '盐山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1138', '140', '肃宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1139', '140', '南皮县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1140', '140', '吴桥县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1141', '140', '献县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1142', '140', '孟村', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1143', '141', '双桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1144', '141', '双滦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1145', '141', '鹰手营子矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1146', '141', '承德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1147', '141', '兴隆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1148', '141', '平泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1149', '141', '滦平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1150', '141', '隆化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1151', '141', '丰宁', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1152', '141', '宽城', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1153', '141', '围场', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1154', '142', '从台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1155', '142', '复兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1156', '142', '邯山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1157', '142', '峰峰矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1158', '142', '武安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1159', '142', '邯郸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1160', '142', '临漳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1161', '142', '成安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1162', '142', '大名县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1163', '142', '涉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1164', '142', '磁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1165', '142', '肥乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1166', '142', '永年县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1167', '142', '邱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1168', '142', '鸡泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1169', '142', '广平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1170', '142', '馆陶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1171', '142', '魏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1172', '142', '曲周县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1173', '143', '桃城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1174', '143', '冀州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1175', '143', '深州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1176', '143', '枣强县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1177', '143', '武邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1178', '143', '武强县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1179', '143', '饶阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1180', '143', '安平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1181', '143', '故城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1182', '143', '景县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1183', '143', '阜城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1184', '144', '安次区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1185', '144', '广阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1186', '144', '霸州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1187', '144', '三河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1188', '144', '固安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1189', '144', '永清县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1190', '144', '香河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1191', '144', '大城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1192', '144', '文安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1193', '144', '大厂', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1194', '145', '海港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1195', '145', '山海关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1196', '145', '北戴河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1197', '145', '昌黎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1198', '145', '抚宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1199', '145', '卢龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1200', '145', '青龙', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1201', '146', '路北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1202', '146', '路南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1203', '146', '古冶区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1204', '146', '开平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1205', '146', '丰南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1206', '146', '丰润区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1207', '146', '遵化市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1208', '146', '迁安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1209', '146', '滦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1210', '146', '滦南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1211', '146', '乐亭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1212', '146', '迁西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1213', '146', '玉田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1214', '146', '唐海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1215', '147', '桥东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1216', '147', '桥西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1217', '147', '南宫市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1218', '147', '沙河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1219', '147', '邢台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1220', '147', '临城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1221', '147', '内丘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1222', '147', '柏乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1223', '147', '隆尧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1224', '147', '任县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1225', '147', '南和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1226', '147', '宁晋县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1227', '147', '巨鹿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1228', '147', '新河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1229', '147', '广宗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1230', '147', '平乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1231', '147', '威县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1232', '147', '清河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1233', '147', '临西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1234', '148', '桥西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1235', '148', '桥东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1236', '148', '宣化区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1237', '148', '下花园区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1238', '148', '宣化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1239', '148', '张北县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1240', '148', '康保县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1241', '148', '沽源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1242', '148', '尚义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1243', '148', '蔚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1244', '148', '阳原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1245', '148', '怀安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1246', '148', '万全县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1247', '148', '怀来县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1248', '148', '涿鹿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1249', '148', '赤城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1250', '148', '崇礼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1251', '149', '金水区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1252', '149', '邙山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1253', '149', '二七区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1254', '149', '管城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1255', '149', '中原区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1256', '149', '上街区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1257', '149', '惠济区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1258', '149', '郑东新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1259', '149', '经济技术开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1260', '149', '高新开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1261', '149', '出口加工区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1262', '149', '巩义市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1263', '149', '荥阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1264', '149', '新密市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1265', '149', '新郑市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1266', '149', '登封市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1267', '149', '中牟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1268', '150', '西工区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1269', '150', '老城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1270', '150', '涧西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1271', '150', '瀍河回族区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1272', '150', '洛龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1273', '150', '吉利区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1274', '150', '偃师市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1275', '150', '孟津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1276', '150', '新安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1277', '150', '栾川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1278', '150', '嵩县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1279', '150', '汝阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1280', '150', '宜阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1281', '150', '洛宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1282', '150', '伊川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1283', '151', '鼓楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1284', '151', '龙亭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1285', '151', '顺河回族区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1286', '151', '金明区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1287', '151', '禹王台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1288', '151', '杞县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1289', '151', '通许县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1290', '151', '尉氏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1291', '151', '开封县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1292', '151', '兰考县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1293', '152', '北关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1294', '152', '文峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1295', '152', '殷都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1296', '152', '龙安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1297', '152', '林州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1298', '152', '安阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1299', '152', '汤阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1300', '152', '滑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1301', '152', '内黄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1302', '153', '淇滨区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1303', '153', '山城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1304', '153', '鹤山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1305', '153', '浚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1306', '153', '淇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1307', '154', '济源市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1308', '155', '解放区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1309', '155', '中站区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1310', '155', '马村区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1311', '155', '山阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1312', '155', '沁阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1313', '155', '孟州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1314', '155', '修武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1315', '155', '博爱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1316', '155', '武陟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1317', '155', '温县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1318', '156', '卧龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1319', '156', '宛城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1320', '156', '邓州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1321', '156', '南召县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1322', '156', '方城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1323', '156', '西峡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1324', '156', '镇平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1325', '156', '内乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1326', '156', '淅川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1327', '156', '社旗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1328', '156', '唐河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1329', '156', '新野县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1330', '156', '桐柏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1331', '157', '新华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1332', '157', '卫东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1333', '157', '湛河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1334', '157', '石龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1335', '157', '舞钢市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1336', '157', '汝州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1337', '157', '宝丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1338', '157', '叶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1339', '157', '鲁山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1340', '157', '郏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1341', '158', '湖滨区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1342', '158', '义马市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1343', '158', '灵宝市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1344', '158', '渑池县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1345', '158', '陕县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1346', '158', '卢氏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1347', '159', '梁园区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1348', '159', '睢阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1349', '159', '永城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1350', '159', '民权县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1351', '159', '睢县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1352', '159', '宁陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1353', '159', '虞城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1354', '159', '柘城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1355', '159', '夏邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1356', '160', '卫滨区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1357', '160', '红旗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1358', '160', '凤泉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1359', '160', '牧野区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1360', '160', '卫辉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1361', '160', '辉县市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1362', '160', '新乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1363', '160', '获嘉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1364', '160', '原阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1365', '160', '延津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1366', '160', '封丘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1367', '160', '长垣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1368', '161', '浉河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1369', '161', '平桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1370', '161', '罗山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1371', '161', '光山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1372', '161', '新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1373', '161', '商城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1374', '161', '固始县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1375', '161', '潢川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1376', '161', '淮滨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1377', '161', '息县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1378', '162', '魏都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1379', '162', '禹州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1380', '162', '长葛市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1381', '162', '许昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1382', '162', '鄢陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1383', '162', '襄城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1384', '163', '川汇区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1385', '163', '项城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1386', '163', '扶沟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1387', '163', '西华县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1388', '163', '商水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1389', '163', '沈丘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1390', '163', '郸城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1391', '163', '淮阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1392', '163', '太康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1393', '163', '鹿邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1394', '164', '驿城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1395', '164', '西平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1396', '164', '上蔡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1397', '164', '平舆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1398', '164', '正阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1399', '164', '确山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1400', '164', '泌阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1401', '164', '汝南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1402', '164', '遂平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1403', '164', '新蔡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1404', '165', '郾城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1405', '165', '源汇区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1406', '165', '召陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1407', '165', '舞阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1408', '165', '临颍县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1409', '166', '华龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1410', '166', '清丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1411', '166', '南乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1412', '166', '范县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1413', '166', '台前县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1414', '166', '濮阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1415', '167', '道里区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1416', '167', '南岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1417', '167', '动力区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1418', '167', '平房区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1419', '167', '香坊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1420', '167', '太平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1421', '167', '道外区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1422', '167', '阿城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1423', '167', '呼兰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1424', '167', '松北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1425', '167', '尚志市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1426', '167', '双城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1427', '167', '五常市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1428', '167', '方正县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1429', '167', '宾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1430', '167', '依兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1431', '167', '巴彦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1432', '167', '通河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1433', '167', '木兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1434', '167', '延寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1435', '168', '萨尔图区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1436', '168', '红岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1437', '168', '龙凤区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1438', '168', '让胡路区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1439', '168', '大同区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1440', '168', '肇州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1441', '168', '肇源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1442', '168', '林甸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1443', '168', '杜尔伯特', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1444', '169', '呼玛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1445', '169', '漠河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1446', '169', '塔河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1447', '170', '兴山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1448', '170', '工农区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1449', '170', '南山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1450', '170', '兴安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1451', '170', '向阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1452', '170', '东山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1453', '170', '萝北县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1454', '170', '绥滨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1455', '171', '爱辉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1456', '171', '五大连池市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1457', '171', '北安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1458', '171', '嫩江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1459', '171', '逊克县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1460', '171', '孙吴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1461', '172', '鸡冠区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1462', '172', '恒山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1463', '172', '城子河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1464', '172', '滴道区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1465', '172', '梨树区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1466', '172', '虎林市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1467', '172', '密山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1468', '172', '鸡东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1469', '173', '前进区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1470', '173', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1471', '173', '向阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1472', '173', '东风区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1473', '173', '同江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1474', '173', '富锦市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1475', '173', '桦南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1476', '173', '桦川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1477', '173', '汤原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1478', '173', '抚远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1479', '174', '爱民区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1480', '174', '东安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1481', '174', '阳明区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1482', '174', '西安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1483', '174', '绥芬河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1484', '174', '海林市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1485', '174', '宁安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1486', '174', '穆棱市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1487', '174', '东宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1488', '174', '林口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1489', '175', '桃山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1490', '175', '新兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1491', '175', '茄子河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1492', '175', '勃利县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1493', '176', '龙沙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1494', '176', '昂昂溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1495', '176', '铁峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1496', '176', '建华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1497', '176', '富拉尔基区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1498', '176', '碾子山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1499', '176', '梅里斯达斡尔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1500', '176', '讷河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1501', '176', '龙江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1502', '176', '依安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1503', '176', '泰来县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1504', '176', '甘南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1505', '176', '富裕县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1506', '176', '克山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1507', '176', '克东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1508', '176', '拜泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1509', '177', '尖山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1510', '177', '岭东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1511', '177', '四方台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1512', '177', '宝山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1513', '177', '集贤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1514', '177', '友谊县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1515', '177', '宝清县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1516', '177', '饶河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1517', '178', '北林区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1518', '178', '安达市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1519', '178', '肇东市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1520', '178', '海伦市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1521', '178', '望奎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1522', '178', '兰西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1523', '178', '青冈县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1524', '178', '庆安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1525', '178', '明水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1526', '178', '绥棱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1527', '179', '伊春区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1528', '179', '带岭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1529', '179', '南岔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1530', '179', '金山屯区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1531', '179', '西林区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1532', '179', '美溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1533', '179', '乌马河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1534', '179', '翠峦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1535', '179', '友好区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1536', '179', '上甘岭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1537', '179', '五营区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1538', '179', '红星区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1539', '179', '新青区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1540', '179', '汤旺河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1541', '179', '乌伊岭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1542', '179', '铁力市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1543', '179', '嘉荫县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1544', '180', '江岸区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1545', '180', '武昌区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1546', '180', '江汉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1547', '180', '硚口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1548', '180', '汉阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1549', '180', '青山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1550', '180', '洪山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1551', '180', '东西湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1552', '180', '汉南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1553', '180', '蔡甸区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1554', '180', '江夏区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1555', '180', '黄陂区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1556', '180', '新洲区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1557', '180', '经济开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1558', '181', '仙桃市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1559', '182', '鄂城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1560', '182', '华容区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1561', '182', '梁子湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1562', '183', '黄州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1563', '183', '麻城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1564', '183', '武穴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1565', '183', '团风县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1566', '183', '红安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1567', '183', '罗田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1568', '183', '英山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1569', '183', '浠水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1570', '183', '蕲春县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1571', '183', '黄梅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1572', '184', '黄石港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1573', '184', '西塞山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1574', '184', '下陆区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1575', '184', '铁山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1576', '184', '大冶市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1577', '184', '阳新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1578', '185', '东宝区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1579', '185', '掇刀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1580', '185', '钟祥市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1581', '185', '京山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1582', '185', '沙洋县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1583', '186', '沙市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1584', '186', '荆州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1585', '186', '石首市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1586', '186', '洪湖市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1587', '186', '松滋市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1588', '186', '公安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1589', '186', '监利县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1590', '186', '江陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1591', '187', '潜江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1592', '188', '神农架林区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1593', '189', '张湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1594', '189', '茅箭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1595', '189', '丹江口市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1596', '189', '郧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1597', '189', '郧西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1598', '189', '竹山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1599', '189', '竹溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1600', '189', '房县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1601', '190', '曾都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1602', '190', '广水市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1603', '191', '天门市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1604', '192', '咸安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1605', '192', '赤壁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1606', '192', '嘉鱼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1607', '192', '通城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1608', '192', '崇阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1609', '192', '通山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1610', '193', '襄城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1611', '193', '樊城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1612', '193', '襄阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1613', '193', '老河口市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1614', '193', '枣阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1615', '193', '宜城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1616', '193', '南漳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1617', '193', '谷城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1618', '193', '保康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1619', '194', '孝南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1620', '194', '应城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1621', '194', '安陆市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1622', '194', '汉川市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1623', '194', '孝昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1624', '194', '大悟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1625', '194', '云梦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1626', '195', '长阳', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1627', '195', '五峰', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1628', '195', '西陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1629', '195', '伍家岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1630', '195', '点军区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1631', '195', '猇亭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1632', '195', '夷陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1633', '195', '宜都市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1634', '195', '当阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1635', '195', '枝江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1636', '195', '远安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1637', '195', '兴山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1638', '195', '秭归县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1639', '196', '恩施市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1640', '196', '利川市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1641', '196', '建始县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1642', '196', '巴东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1643', '196', '宣恩县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1644', '196', '咸丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1645', '196', '来凤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1646', '196', '鹤峰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1647', '197', '岳麓区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1648', '197', '芙蓉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1649', '197', '天心区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1650', '197', '开福区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1651', '197', '雨花区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1652', '197', '开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1653', '197', '浏阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1654', '197', '长沙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1655', '197', '望城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1656', '197', '宁乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1657', '198', '永定区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1658', '198', '武陵源区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1659', '198', '慈利县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1660', '198', '桑植县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1661', '199', '武陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1662', '199', '鼎城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1663', '199', '津市市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1664', '199', '安乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1665', '199', '汉寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1666', '199', '澧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1667', '199', '临澧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1668', '199', '桃源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1669', '199', '石门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1670', '200', '北湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1671', '200', '苏仙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1672', '200', '资兴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1673', '200', '桂阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1674', '200', '宜章县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1675', '200', '永兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1676', '200', '嘉禾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1677', '200', '临武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1678', '200', '汝城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1679', '200', '桂东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1680', '200', '安仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1681', '201', '雁峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1682', '201', '珠晖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1683', '201', '石鼓区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1684', '201', '蒸湘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1685', '201', '南岳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1686', '201', '耒阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1687', '201', '常宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1688', '201', '衡阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1689', '201', '衡南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1690', '201', '衡山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1691', '201', '衡东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1692', '201', '祁东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1693', '202', '鹤城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1694', '202', '靖州', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1695', '202', '麻阳', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1696', '202', '通道', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1697', '202', '新晃', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1698', '202', '芷江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1699', '202', '沅陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1700', '202', '辰溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1701', '202', '溆浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1702', '202', '中方县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1703', '202', '会同县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1704', '202', '洪江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1705', '203', '娄星区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1706', '203', '冷水江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1707', '203', '涟源市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1708', '203', '双峰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1709', '203', '新化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1710', '204', '城步', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1711', '204', '双清区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1712', '204', '大祥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1713', '204', '北塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1714', '204', '武冈市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1715', '204', '邵东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1716', '204', '新邵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1717', '204', '邵阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1718', '204', '隆回县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1719', '204', '洞口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1720', '204', '绥宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1721', '204', '新宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1722', '205', '岳塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1723', '205', '雨湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1724', '205', '湘乡市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1725', '205', '韶山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1726', '205', '湘潭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1727', '206', '吉首市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1728', '206', '泸溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1729', '206', '凤凰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1730', '206', '花垣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1731', '206', '保靖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1732', '206', '古丈县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1733', '206', '永顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1734', '206', '龙山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1735', '207', '赫山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1736', '207', '资阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1737', '207', '沅江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1738', '207', '南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1739', '207', '桃江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1740', '207', '安化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1741', '208', '江华', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1742', '208', '冷水滩区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1743', '208', '零陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1744', '208', '祁阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1745', '208', '东安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1746', '208', '双牌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1747', '208', '道县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1748', '208', '江永县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1749', '208', '宁远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1750', '208', '蓝山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1751', '208', '新田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1752', '209', '岳阳楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1753', '209', '君山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1754', '209', '云溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1755', '209', '汨罗市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1756', '209', '临湘市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1757', '209', '岳阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1758', '209', '华容县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1759', '209', '湘阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1760', '209', '平江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1761', '210', '天元区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1762', '210', '荷塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1763', '210', '芦淞区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1764', '210', '石峰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1765', '210', '醴陵市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1766', '210', '株洲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1767', '210', '攸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1768', '210', '茶陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1769', '210', '炎陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1770', '211', '朝阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1771', '211', '宽城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1772', '211', '二道区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1773', '211', '南关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1774', '211', '绿园区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1775', '211', '双阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1776', '211', '净月潭开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1777', '211', '高新技术开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1778', '211', '经济技术开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1779', '211', '汽车产业开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1780', '211', '德惠市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1781', '211', '九台市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1782', '211', '榆树市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1783', '211', '农安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1784', '212', '船营区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1785', '212', '昌邑区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1786', '212', '龙潭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1787', '212', '丰满区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1788', '212', '蛟河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1789', '212', '桦甸市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1790', '212', '舒兰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1791', '212', '磐石市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1792', '212', '永吉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1793', '213', '洮北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1794', '213', '洮南市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1795', '213', '大安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1796', '213', '镇赉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1797', '213', '通榆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1798', '214', '江源区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1799', '214', '八道江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1800', '214', '长白', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1801', '214', '临江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1802', '214', '抚松县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1803', '214', '靖宇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1804', '215', '龙山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1805', '215', '西安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1806', '215', '东丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1807', '215', '东辽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1808', '216', '铁西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1809', '216', '铁东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1810', '216', '伊通', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1811', '216', '公主岭市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1812', '216', '双辽市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1813', '216', '梨树县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1814', '217', '前郭尔罗斯', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1815', '217', '宁江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1816', '217', '长岭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1817', '217', '乾安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1818', '217', '扶余县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1819', '218', '东昌区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1820', '218', '二道江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1821', '218', '梅河口市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1822', '218', '集安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1823', '218', '通化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1824', '218', '辉南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1825', '218', '柳河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1826', '219', '延吉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1827', '219', '图们市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1828', '219', '敦化市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1829', '219', '珲春市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1830', '219', '龙井市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1831', '219', '和龙市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1832', '219', '安图县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1833', '219', '汪清县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1834', '220', '玄武区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1835', '220', '鼓楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1836', '220', '白下区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1837', '220', '建邺区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1838', '220', '秦淮区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1839', '220', '雨花台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1840', '220', '下关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1841', '220', '栖霞区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1842', '220', '浦口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1843', '220', '江宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1844', '220', '六合区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1845', '220', '溧水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1846', '220', '高淳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1847', '221', '沧浪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1848', '221', '金阊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1849', '221', '平江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1850', '221', '虎丘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1851', '221', '吴中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1852', '221', '相城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1853', '221', '园区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1854', '221', '新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1855', '221', '常熟市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1856', '221', '张家港市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1857', '221', '玉山镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1858', '221', '巴城镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1859', '221', '周市镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1860', '221', '陆家镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1861', '221', '花桥镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1862', '221', '淀山湖镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1863', '221', '张浦镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1864', '221', '周庄镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1865', '221', '千灯镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1866', '221', '锦溪镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1867', '221', '开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1868', '221', '吴江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1869', '221', '太仓市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1870', '222', '崇安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1871', '222', '北塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1872', '222', '南长区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1873', '222', '锡山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1874', '222', '惠山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1875', '222', '滨湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1876', '222', '新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1877', '222', '江阴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1878', '222', '宜兴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1879', '223', '天宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1880', '223', '钟楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1881', '223', '戚墅堰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1882', '223', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1883', '223', '新北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1884', '223', '武进区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1885', '223', '溧阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1886', '223', '金坛市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1887', '224', '清河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1888', '224', '清浦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1889', '224', '楚州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1890', '224', '淮阴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1891', '224', '涟水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1892', '224', '洪泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1893', '224', '盱眙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1894', '224', '金湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1895', '225', '新浦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1896', '225', '连云区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1897', '225', '海州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1898', '225', '赣榆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1899', '225', '东海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1900', '225', '灌云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1901', '225', '灌南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1902', '226', '崇川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1903', '226', '港闸区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1904', '226', '经济开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1905', '226', '启东市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1906', '226', '如皋市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1907', '226', '通州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1908', '226', '海门市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1909', '226', '海安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1910', '226', '如东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1911', '227', '宿城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1912', '227', '宿豫区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1913', '227', '宿豫县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1914', '227', '沭阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1915', '227', '泗阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1916', '227', '泗洪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1917', '228', '海陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1918', '228', '高港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1919', '228', '兴化市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1920', '228', '靖江市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1921', '228', '泰兴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1922', '228', '姜堰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1923', '229', '云龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1924', '229', '鼓楼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1925', '229', '九里区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1926', '229', '贾汪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1927', '229', '泉山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1928', '229', '新沂市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1929', '229', '邳州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1930', '229', '丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1931', '229', '沛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1932', '229', '铜山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1933', '229', '睢宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1934', '230', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1935', '230', '亭湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1936', '230', '盐都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1937', '230', '盐都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1938', '230', '东台市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1939', '230', '大丰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1940', '230', '响水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1941', '230', '滨海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1942', '230', '阜宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1943', '230', '射阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1944', '230', '建湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1945', '231', '广陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1946', '231', '维扬区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1947', '231', '邗江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1948', '231', '仪征市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1949', '231', '高邮市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1950', '231', '江都市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1951', '231', '宝应县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1952', '232', '京口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1953', '232', '润州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1954', '232', '丹徒区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1955', '232', '丹阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1956', '232', '扬中市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1957', '232', '句容市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1958', '233', '东湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1959', '233', '西湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1960', '233', '青云谱区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1961', '233', '湾里区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1962', '233', '青山湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1963', '233', '红谷滩新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1964', '233', '昌北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1965', '233', '高新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1966', '233', '南昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1967', '233', '新建县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1968', '233', '安义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1969', '233', '进贤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1970', '234', '临川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1971', '234', '南城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1972', '234', '黎川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1973', '234', '南丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1974', '234', '崇仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1975', '234', '乐安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1976', '234', '宜黄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1977', '234', '金溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1978', '234', '资溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1979', '234', '东乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1980', '234', '广昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1981', '235', '章贡区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1982', '235', '于都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1983', '235', '瑞金市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1984', '235', '南康市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1985', '235', '赣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1986', '235', '信丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1987', '235', '大余县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1988', '235', '上犹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1989', '235', '崇义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1990', '235', '安远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1991', '235', '龙南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1992', '235', '定南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1993', '235', '全南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1994', '235', '宁都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1995', '235', '兴国县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1996', '235', '会昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1997', '235', '寻乌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1998', '235', '石城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('1999', '236', '安福县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2000', '236', '吉州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2001', '236', '青原区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2002', '236', '井冈山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2003', '236', '吉安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2004', '236', '吉水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2005', '236', '峡江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2006', '236', '新干县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2007', '236', '永丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2008', '236', '泰和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2009', '236', '遂川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2010', '236', '万安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2011', '236', '永新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2012', '237', '珠山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2013', '237', '昌江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2014', '237', '乐平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2015', '237', '浮梁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2016', '238', '浔阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2017', '238', '庐山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2018', '238', '瑞昌市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2019', '238', '九江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2020', '238', '武宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2021', '238', '修水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2022', '238', '永修县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2023', '238', '德安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2024', '238', '星子县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2025', '238', '都昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2026', '238', '湖口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2027', '238', '彭泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2028', '239', '安源区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2029', '239', '湘东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2030', '239', '莲花县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2031', '239', '芦溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2032', '239', '上栗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2033', '240', '信州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2034', '240', '德兴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2035', '240', '上饶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2036', '240', '广丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2037', '240', '玉山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2038', '240', '铅山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2039', '240', '横峰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2040', '240', '弋阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2041', '240', '余干县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2042', '240', '波阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2043', '240', '万年县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2044', '240', '婺源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2045', '241', '渝水区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2046', '241', '分宜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2047', '242', '袁州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2048', '242', '丰城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2049', '242', '樟树市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2050', '242', '高安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2051', '242', '奉新县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2052', '242', '万载县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2053', '242', '上高县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2054', '242', '宜丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2055', '242', '靖安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2056', '242', '铜鼓县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2057', '243', '月湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2058', '243', '贵溪市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2059', '243', '余江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2060', '244', '沈河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2061', '244', '皇姑区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2062', '244', '和平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2063', '244', '大东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2064', '244', '铁西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2065', '244', '苏家屯区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2066', '244', '东陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2067', '244', '沈北新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2068', '244', '于洪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2069', '244', '浑南新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2070', '244', '新民市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2071', '244', '辽中县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2072', '244', '康平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2073', '244', '法库县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2074', '245', '西岗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2075', '245', '中山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2076', '245', '沙河口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2077', '245', '甘井子区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2078', '245', '旅顺口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2079', '245', '金州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2080', '245', '开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2081', '245', '瓦房店市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2082', '245', '普兰店市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2083', '245', '庄河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2084', '245', '长海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2085', '246', '铁东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2086', '246', '铁西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2087', '246', '立山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2088', '246', '千山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2089', '246', '岫岩', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2090', '246', '海城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2091', '246', '台安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2092', '247', '本溪', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2093', '247', '平山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2094', '247', '明山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2095', '247', '溪湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2096', '247', '南芬区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2097', '247', '桓仁', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2098', '248', '双塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2099', '248', '龙城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2101', '248', '北票市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2102', '248', '凌源市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2103', '248', '朝阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2104', '248', '建平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2105', '249', '振兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2106', '249', '元宝区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2107', '249', '振安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2108', '249', '宽甸', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2109', '249', '东港市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2110', '249', '凤城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2111', '250', '顺城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2112', '250', '新抚区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2113', '250', '东洲区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2114', '250', '望花区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2115', '250', '清原', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2116', '250', '新宾', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2117', '250', '抚顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2118', '251', '阜新', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2119', '251', '海州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2120', '251', '新邱区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2121', '251', '太平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2122', '251', '清河门区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2123', '251', '细河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2124', '251', '彰武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2125', '252', '龙港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2126', '252', '南票区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2127', '252', '连山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2128', '252', '兴城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2129', '252', '绥中县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2130', '252', '建昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2131', '253', '太和区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2132', '253', '古塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2133', '253', '凌河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2134', '253', '凌海市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2135', '253', '北镇市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2136', '253', '黑山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2137', '253', '义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2138', '254', '白塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2139', '254', '文圣区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2140', '254', '宏伟区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2141', '254', '太子河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2142', '254', '弓长岭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2143', '254', '灯塔市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2144', '254', '辽阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2145', '255', '双台子区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2146', '255', '兴隆台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2147', '255', '大洼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2148', '255', '盘山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2149', '256', '银州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2150', '256', '清河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2151', '256', '调兵山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2152', '256', '开原市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2153', '256', '铁岭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2154', '256', '西丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2155', '256', '昌图县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2156', '257', '站前区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2157', '257', '西市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2158', '257', '鲅鱼圈区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2159', '257', '老边区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2160', '257', '盖州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2161', '257', '大石桥市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2162', '258', '回民区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2163', '258', '玉泉区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2164', '258', '新城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2165', '258', '赛罕区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2166', '258', '清水河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2167', '258', '土默特左旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2168', '258', '托克托县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2169', '258', '和林格尔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2170', '258', '武川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2171', '259', '阿拉善左旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2172', '259', '阿拉善右旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2173', '259', '额济纳旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2174', '260', '临河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2175', '260', '五原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2176', '260', '磴口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2177', '260', '乌拉特前旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2178', '260', '乌拉特中旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2179', '260', '乌拉特后旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2180', '260', '杭锦后旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2181', '261', '昆都仑区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2182', '261', '青山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2183', '261', '东河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2184', '261', '九原区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2185', '261', '石拐区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2186', '261', '白云矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2187', '261', '土默特右旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2188', '261', '固阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2189', '261', '达尔罕茂明安联合旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2190', '262', '红山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2191', '262', '元宝山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2192', '262', '松山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2193', '262', '阿鲁科尔沁旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2194', '262', '巴林左旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2195', '262', '巴林右旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2196', '262', '林西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2197', '262', '克什克腾旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2198', '262', '翁牛特旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2199', '262', '喀喇沁旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2200', '262', '宁城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2201', '262', '敖汉旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2202', '263', '东胜区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2203', '263', '达拉特旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2204', '263', '准格尔旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2205', '263', '鄂托克前旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2206', '263', '鄂托克旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2207', '263', '杭锦旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2208', '263', '乌审旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2209', '263', '伊金霍洛旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2210', '264', '海拉尔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2211', '264', '莫力达瓦', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2212', '264', '满洲里市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2213', '264', '牙克石市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2214', '264', '扎兰屯市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2215', '264', '额尔古纳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2216', '264', '根河市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2217', '264', '阿荣旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2218', '264', '鄂伦春自治旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2219', '264', '鄂温克族自治旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2220', '264', '陈巴尔虎旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2221', '264', '新巴尔虎左旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2222', '264', '新巴尔虎右旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2223', '265', '科尔沁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2224', '265', '霍林郭勒市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2225', '265', '科尔沁左翼中旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2226', '265', '科尔沁左翼后旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2227', '265', '开鲁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2228', '265', '库伦旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2229', '265', '奈曼旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2230', '265', '扎鲁特旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2231', '266', '海勃湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2232', '266', '乌达区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2233', '266', '海南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2234', '267', '化德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2235', '267', '集宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2236', '267', '丰镇市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2237', '267', '卓资县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2238', '267', '商都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2239', '267', '兴和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2240', '267', '凉城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2241', '267', '察哈尔右翼前旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2242', '267', '察哈尔右翼中旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2243', '267', '察哈尔右翼后旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2244', '267', '四子王旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2245', '268', '二连浩特市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2246', '268', '锡林浩特市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2247', '268', '阿巴嘎旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2248', '268', '苏尼特左旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2249', '268', '苏尼特右旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2250', '268', '东乌珠穆沁旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2251', '268', '西乌珠穆沁旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2252', '268', '太仆寺旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2253', '268', '镶黄旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2254', '268', '正镶白旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2255', '268', '正蓝旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2256', '268', '多伦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2257', '269', '乌兰浩特市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2258', '269', '阿尔山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2259', '269', '科尔沁右翼前旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2260', '269', '科尔沁右翼中旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2261', '269', '扎赉特旗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2262', '269', '突泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2263', '270', '西夏区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2264', '270', '金凤区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2265', '270', '兴庆区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2266', '270', '灵武市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2267', '270', '永宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2268', '270', '贺兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2269', '271', '原州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2270', '271', '海原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2271', '271', '西吉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2272', '271', '隆德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2273', '271', '泾源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2274', '271', '彭阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2275', '272', '惠农县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2276', '272', '大武口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2277', '272', '惠农区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2278', '272', '陶乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2279', '272', '平罗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2280', '273', '利通区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2281', '273', '中卫县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2282', '273', '青铜峡市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2283', '273', '中宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2284', '273', '盐池县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2285', '273', '同心县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2286', '274', '沙坡头区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2287', '274', '海原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2288', '274', '中宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2289', '275', '城中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2290', '275', '城东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2291', '275', '城西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2292', '275', '城北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2293', '275', '湟中县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2294', '275', '湟源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2295', '275', '大通', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2296', '276', '玛沁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2297', '276', '班玛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2298', '276', '甘德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2299', '276', '达日县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2300', '276', '久治县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2301', '276', '玛多县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2302', '277', '海晏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2303', '277', '祁连县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2304', '277', '刚察县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2305', '277', '门源', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2306', '278', '平安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2307', '278', '乐都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2308', '278', '民和', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2309', '278', '互助', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2310', '278', '化隆', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2311', '278', '循化', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2312', '279', '共和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2313', '279', '同德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2314', '279', '贵德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2315', '279', '兴海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2316', '279', '贵南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2317', '280', '德令哈市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2318', '280', '格尔木市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2319', '280', '乌兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2320', '280', '都兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2321', '280', '天峻县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2322', '281', '同仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2323', '281', '尖扎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2324', '281', '泽库县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2325', '281', '河南蒙古族自治县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2326', '282', '玉树县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2327', '282', '杂多县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2328', '282', '称多县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2329', '282', '治多县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2330', '282', '囊谦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2331', '282', '曲麻莱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2332', '283', '市中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2333', '283', '历下区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2334', '283', '天桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2335', '283', '槐荫区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2336', '283', '历城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2337', '283', '长清区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2338', '283', '章丘市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2339', '283', '平阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2340', '283', '济阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2341', '283', '商河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2342', '284', '市南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2343', '284', '市北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2344', '284', '城阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2345', '284', '四方区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2346', '284', '李沧区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2347', '284', '黄岛区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2348', '284', '崂山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2349', '284', '胶州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2350', '284', '即墨市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2351', '284', '平度市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2352', '284', '胶南市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2353', '284', '莱西市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2354', '285', '滨城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2355', '285', '惠民县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2356', '285', '阳信县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2357', '285', '无棣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2358', '285', '沾化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2359', '285', '博兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2360', '285', '邹平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2361', '286', '德城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2362', '286', '陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2363', '286', '乐陵市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2364', '286', '禹城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2365', '286', '宁津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2366', '286', '庆云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2367', '286', '临邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2368', '286', '齐河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2369', '286', '平原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2370', '286', '夏津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2371', '286', '武城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2372', '287', '东营区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2373', '287', '河口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2374', '287', '垦利县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2375', '287', '利津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2376', '287', '广饶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2377', '288', '牡丹区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2378', '288', '曹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2379', '288', '单县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2380', '288', '成武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2381', '288', '巨野县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2382', '288', '郓城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2383', '288', '鄄城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2384', '288', '定陶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2385', '288', '东明县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2386', '289', '市中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2387', '289', '任城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2388', '289', '曲阜市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2389', '289', '兖州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2390', '289', '邹城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2391', '289', '微山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2392', '289', '鱼台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2393', '289', '金乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2394', '289', '嘉祥县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2395', '289', '汶上县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2396', '289', '泗水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2397', '289', '梁山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2398', '290', '莱城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2399', '290', '钢城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2400', '291', '东昌府区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2401', '291', '临清市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2402', '291', '阳谷县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2403', '291', '莘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2404', '291', '茌平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2405', '291', '东阿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2406', '291', '冠县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2407', '291', '高唐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2408', '292', '兰山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2409', '292', '罗庄区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2410', '292', '河东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2411', '292', '沂南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2412', '292', '郯城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2413', '292', '沂水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2414', '292', '苍山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2415', '292', '费县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2416', '292', '平邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2417', '292', '莒南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2418', '292', '蒙阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2419', '292', '临沭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2420', '293', '东港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2421', '293', '岚山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2422', '293', '五莲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2423', '293', '莒县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2424', '294', '泰山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2425', '294', '岱岳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2426', '294', '新泰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2427', '294', '肥城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2428', '294', '宁阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2429', '294', '东平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2430', '295', '荣成市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2431', '295', '乳山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2432', '295', '环翠区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2433', '295', '文登市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2434', '296', '潍城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2435', '296', '寒亭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2436', '296', '坊子区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2437', '296', '奎文区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2438', '296', '青州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2439', '296', '诸城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2440', '296', '寿光市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2441', '296', '安丘市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2442', '296', '高密市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2443', '296', '昌邑市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2444', '296', '临朐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2445', '296', '昌乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2446', '297', '芝罘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2447', '297', '福山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2448', '297', '牟平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2449', '297', '莱山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2450', '297', '开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2451', '297', '龙口市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2452', '297', '莱阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2453', '297', '莱州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2454', '297', '蓬莱市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2455', '297', '招远市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2456', '297', '栖霞市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2457', '297', '海阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2458', '297', '长岛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2459', '298', '市中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2460', '298', '山亭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2461', '298', '峄城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2462', '298', '台儿庄区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2463', '298', '薛城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2464', '298', '滕州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2465', '299', '张店区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2466', '299', '临淄区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2467', '299', '淄川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2468', '299', '博山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2469', '299', '周村区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2470', '299', '桓台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2471', '299', '高青县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2472', '299', '沂源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2473', '300', '杏花岭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2474', '300', '小店区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2475', '300', '迎泽区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2476', '300', '尖草坪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2477', '300', '万柏林区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2478', '300', '晋源区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2479', '300', '高新开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2480', '300', '民营经济开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2481', '300', '经济技术开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2482', '300', '清徐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2483', '300', '阳曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2484', '300', '娄烦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2485', '300', '古交市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2486', '301', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2487', '301', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2488', '301', '沁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2489', '301', '潞城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2490', '301', '长治县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2491', '301', '襄垣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2492', '301', '屯留县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2493', '301', '平顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2494', '301', '黎城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2495', '301', '壶关县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2496', '301', '长子县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2497', '301', '武乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2498', '301', '沁源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2499', '302', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2500', '302', '矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2501', '302', '南郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2502', '302', '新荣区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2503', '302', '阳高县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2504', '302', '天镇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2505', '302', '广灵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2506', '302', '灵丘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2507', '302', '浑源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2508', '302', '左云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2509', '302', '大同县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2510', '303', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2511', '303', '高平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2512', '303', '沁水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2513', '303', '阳城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2514', '303', '陵川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2515', '303', '泽州县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2516', '304', '榆次区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2517', '304', '介休市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2518', '304', '榆社县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2519', '304', '左权县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2520', '304', '和顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2521', '304', '昔阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2522', '304', '寿阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2523', '304', '太谷县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2524', '304', '祁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2525', '304', '平遥县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2526', '304', '灵石县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2527', '305', '尧都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2528', '305', '侯马市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2529', '305', '霍州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2530', '305', '曲沃县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2531', '305', '翼城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2532', '305', '襄汾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2533', '305', '洪洞县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2534', '305', '吉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2535', '305', '安泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2536', '305', '浮山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2537', '305', '古县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2538', '305', '乡宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2539', '305', '大宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2540', '305', '隰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2541', '305', '永和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2542', '305', '蒲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2543', '305', '汾西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2544', '306', '离石市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2545', '306', '离石区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2546', '306', '孝义市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2547', '306', '汾阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2548', '306', '文水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2549', '306', '交城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2550', '306', '兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2551', '306', '临县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2552', '306', '柳林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2553', '306', '石楼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2554', '306', '岚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2555', '306', '方山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2556', '306', '中阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2557', '306', '交口县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2558', '307', '朔城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2559', '307', '平鲁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2560', '307', '山阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2561', '307', '应县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2562', '307', '右玉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2563', '307', '怀仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2564', '308', '忻府区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2565', '308', '原平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2566', '308', '定襄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2567', '308', '五台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2568', '308', '代县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2569', '308', '繁峙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2570', '308', '宁武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2571', '308', '静乐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2572', '308', '神池县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2573', '308', '五寨县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2574', '308', '岢岚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2575', '308', '河曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2576', '308', '保德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2577', '308', '偏关县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2578', '309', '城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2579', '309', '矿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2580', '309', '郊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2581', '309', '平定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2582', '309', '盂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2583', '310', '盐湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2584', '310', '永济市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2585', '310', '河津市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2586', '310', '临猗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2587', '310', '万荣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2588', '310', '闻喜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2589', '310', '稷山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2590', '310', '新绛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2591', '310', '绛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2592', '310', '垣曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2593', '310', '夏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2594', '310', '平陆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2595', '310', '芮城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2596', '311', '莲湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2597', '311', '新城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2598', '311', '碑林区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2599', '311', '雁塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2600', '311', '灞桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2601', '311', '未央区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2602', '311', '阎良区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2603', '311', '临潼区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2604', '311', '长安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2605', '311', '蓝田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2606', '311', '周至县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2607', '311', '户县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2608', '311', '高陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2609', '312', '汉滨区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2610', '312', '汉阴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2611', '312', '石泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2612', '312', '宁陕县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2613', '312', '紫阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2614', '312', '岚皋县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2615', '312', '平利县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2616', '312', '镇坪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2617', '312', '旬阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2618', '312', '白河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2619', '313', '陈仓区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2620', '313', '渭滨区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2621', '313', '金台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2622', '313', '凤翔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2623', '313', '岐山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2624', '313', '扶风县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2625', '313', '眉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2626', '313', '陇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2627', '313', '千阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2628', '313', '麟游县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2629', '313', '凤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2630', '313', '太白县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2631', '314', '汉台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2632', '314', '南郑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2633', '314', '城固县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2634', '314', '洋县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2635', '314', '西乡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2636', '314', '勉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2637', '314', '宁强县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2638', '314', '略阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2639', '314', '镇巴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2640', '314', '留坝县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2641', '314', '佛坪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2642', '315', '商州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2643', '315', '洛南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2644', '315', '丹凤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2645', '315', '商南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2646', '315', '山阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2647', '315', '镇安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2648', '315', '柞水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2649', '316', '耀州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2650', '316', '王益区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2651', '316', '印台区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2652', '316', '宜君县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2653', '317', '临渭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2654', '317', '韩城市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2655', '317', '华阴市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2656', '317', '华县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2657', '317', '潼关县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2658', '317', '大荔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2659', '317', '合阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2660', '317', '澄城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2661', '317', '蒲城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2662', '317', '白水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2663', '317', '富平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2664', '318', '秦都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2665', '318', '渭城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2666', '318', '杨陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2667', '318', '兴平市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2668', '318', '三原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2669', '318', '泾阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2670', '318', '乾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2671', '318', '礼泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2672', '318', '永寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2673', '318', '彬县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2674', '318', '长武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2675', '318', '旬邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2676', '318', '淳化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2677', '318', '武功县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2678', '319', '吴起县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2679', '319', '宝塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2680', '319', '延长县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2681', '319', '延川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2682', '319', '子长县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2683', '319', '安塞县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2684', '319', '志丹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2685', '319', '甘泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2686', '319', '富县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2687', '319', '洛川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2688', '319', '宜川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2689', '319', '黄龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2690', '319', '黄陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2691', '320', '榆阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2692', '320', '神木县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2693', '320', '府谷县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2694', '320', '横山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2695', '320', '靖边县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2696', '320', '定边县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2697', '320', '绥德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2698', '320', '米脂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2699', '320', '佳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2700', '320', '吴堡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2701', '320', '清涧县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2702', '320', '子洲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2703', '321', '长宁区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2704', '321', '闸北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2705', '321', '闵行区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2706', '321', '徐汇区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2707', '321', '浦东新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2708', '321', '杨浦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2709', '321', '普陀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2710', '321', '静安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2711', '321', '卢湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2712', '321', '虹口区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2713', '321', '黄浦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2714', '321', '南汇区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2715', '321', '松江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2716', '321', '嘉定区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2717', '321', '宝山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2718', '321', '青浦区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2719', '321', '金山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2720', '321', '奉贤区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2721', '321', '崇明县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2722', '322', '青羊区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2723', '322', '锦江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2724', '322', '金牛区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2725', '322', '武侯区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2726', '322', '成华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2727', '322', '龙泉驿区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2728', '322', '青白江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2729', '322', '新都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2730', '322', '温江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2731', '322', '高新区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2732', '322', '高新西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2733', '322', '都江堰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2734', '322', '彭州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2735', '322', '邛崃市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2736', '322', '崇州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2737', '322', '金堂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2738', '322', '双流县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2739', '322', '郫县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2740', '322', '大邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2741', '322', '蒲江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2742', '322', '新津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2743', '322', '都江堰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2744', '322', '彭州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2745', '322', '邛崃市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2746', '322', '崇州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2747', '322', '金堂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2748', '322', '双流县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2749', '322', '郫县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2750', '322', '大邑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2751', '322', '蒲江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2752', '322', '新津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2753', '323', '涪城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2754', '323', '游仙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2755', '323', '江油市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2756', '323', '盐亭县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2757', '323', '三台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2758', '323', '平武县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2759', '323', '安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2760', '323', '梓潼县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2761', '323', '北川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2762', '324', '马尔康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2763', '324', '汶川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2764', '324', '理县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2765', '324', '茂县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2766', '324', '松潘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2767', '324', '九寨沟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2768', '324', '金川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2769', '324', '小金县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2770', '324', '黑水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2771', '324', '壤塘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2772', '324', '阿坝县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2773', '324', '若尔盖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2774', '324', '红原县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2775', '325', '巴州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2776', '325', '通江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2777', '325', '南江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2778', '325', '平昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2779', '326', '通川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2780', '326', '万源市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2781', '326', '达县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2782', '326', '宣汉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2783', '326', '开江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2784', '326', '大竹县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2785', '326', '渠县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2786', '327', '旌阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2787', '327', '广汉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2788', '327', '什邡市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2789', '327', '绵竹市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2790', '327', '罗江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2791', '327', '中江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2792', '328', '康定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2793', '328', '丹巴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2794', '328', '泸定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2795', '328', '炉霍县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2796', '328', '九龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2797', '328', '甘孜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2798', '328', '雅江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2799', '328', '新龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2800', '328', '道孚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2801', '328', '白玉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2802', '328', '理塘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2803', '328', '德格县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2804', '328', '乡城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2805', '328', '石渠县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2806', '328', '稻城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2807', '328', '色达县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2808', '328', '巴塘县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2809', '328', '得荣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2810', '329', '广安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2811', '329', '华蓥市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2812', '329', '岳池县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2813', '329', '武胜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2814', '329', '邻水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2815', '330', '利州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2816', '330', '元坝区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2817', '330', '朝天区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2818', '330', '旺苍县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2819', '330', '青川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2820', '330', '剑阁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2821', '330', '苍溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2822', '331', '峨眉山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2823', '331', '乐山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2824', '331', '犍为县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2825', '331', '井研县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2826', '331', '夹江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2827', '331', '沐川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2828', '331', '峨边', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2829', '331', '马边', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2830', '332', '西昌市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2831', '332', '盐源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2832', '332', '德昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2833', '332', '会理县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2834', '332', '会东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2835', '332', '宁南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2836', '332', '普格县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2837', '332', '布拖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2838', '332', '金阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2839', '332', '昭觉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2840', '332', '喜德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2841', '332', '冕宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2842', '332', '越西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2843', '332', '甘洛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2844', '332', '美姑县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2845', '332', '雷波县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2846', '332', '木里', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2847', '333', '东坡区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2848', '333', '仁寿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2849', '333', '彭山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2850', '333', '洪雅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2851', '333', '丹棱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2852', '333', '青神县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2853', '334', '阆中市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2854', '334', '南部县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2855', '334', '营山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2856', '334', '蓬安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2857', '334', '仪陇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2858', '334', '顺庆区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2859', '334', '高坪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2860', '334', '嘉陵区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2861', '334', '西充县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2862', '335', '市中区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2863', '335', '东兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2864', '335', '威远县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2865', '335', '资中县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2866', '335', '隆昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2867', '336', '东  区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2868', '336', '西  区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2869', '336', '仁和区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2870', '336', '米易县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2871', '336', '盐边县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2872', '337', '船山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2873', '337', '安居区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2874', '337', '蓬溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2875', '337', '射洪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2876', '337', '大英县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2877', '338', '雨城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2878', '338', '名山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2879', '338', '荥经县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2880', '338', '汉源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2881', '338', '石棉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2882', '338', '天全县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2883', '338', '芦山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2884', '338', '宝兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2885', '339', '翠屏区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2886', '339', '宜宾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2887', '339', '南溪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2888', '339', '江安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2889', '339', '长宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2890', '339', '高县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2891', '339', '珙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2892', '339', '筠连县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2893', '339', '兴文县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2894', '339', '屏山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2895', '340', '雁江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2896', '340', '简阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2897', '340', '安岳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2898', '340', '乐至县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2899', '341', '大安区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2900', '341', '自流井区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2901', '341', '贡井区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2902', '341', '沿滩区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2903', '341', '荣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2904', '341', '富顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2905', '342', '江阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2906', '342', '纳溪区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2907', '342', '龙马潭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2908', '342', '泸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2909', '342', '合江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2910', '342', '叙永县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2911', '342', '古蔺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2912', '343', '和平区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2913', '343', '河西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2914', '343', '南开区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2915', '343', '河北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2916', '343', '河东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2917', '343', '红桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2918', '343', '东丽区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2919', '343', '津南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2920', '343', '西青区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2921', '343', '北辰区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2922', '343', '塘沽区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2923', '343', '汉沽区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2924', '343', '大港区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2925', '343', '武清区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2926', '343', '宝坻区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2927', '343', '经济开发区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2928', '343', '宁河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2929', '343', '静海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2930', '343', '蓟县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2931', '344', '城关区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2932', '344', '林周县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2933', '344', '当雄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2934', '344', '尼木县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2935', '344', '曲水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2936', '344', '堆龙德庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2937', '344', '达孜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2938', '344', '墨竹工卡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2939', '345', '噶尔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2940', '345', '普兰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2941', '345', '札达县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2942', '345', '日土县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2943', '345', '革吉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2944', '345', '改则县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2945', '345', '措勤县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2946', '346', '昌都县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2947', '346', '江达县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2948', '346', '贡觉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2949', '346', '类乌齐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2950', '346', '丁青县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2951', '346', '察雅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2952', '346', '八宿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2953', '346', '左贡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2954', '346', '芒康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2955', '346', '洛隆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2956', '346', '边坝县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2957', '347', '林芝县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2958', '347', '工布江达县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2959', '347', '米林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2960', '347', '墨脱县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2961', '347', '波密县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2962', '347', '察隅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2963', '347', '朗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2964', '348', '那曲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2965', '348', '嘉黎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2966', '348', '比如县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2967', '348', '聂荣县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2968', '348', '安多县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2969', '348', '申扎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2970', '348', '索县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2971', '348', '班戈县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2972', '348', '巴青县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2973', '348', '尼玛县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2974', '349', '日喀则市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2975', '349', '南木林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2976', '349', '江孜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2977', '349', '定日县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2978', '349', '萨迦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2979', '349', '拉孜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2980', '349', '昂仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2981', '349', '谢通门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2982', '349', '白朗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2983', '349', '仁布县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2984', '349', '康马县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2985', '349', '定结县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2986', '349', '仲巴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2987', '349', '亚东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2988', '349', '吉隆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2989', '349', '聂拉木县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2990', '349', '萨嘎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2991', '349', '岗巴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2992', '350', '乃东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2993', '350', '扎囊县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2994', '350', '贡嘎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2995', '350', '桑日县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2996', '350', '琼结县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2997', '350', '曲松县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2998', '350', '措美县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('2999', '350', '洛扎县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3000', '350', '加查县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3001', '350', '隆子县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3002', '350', '错那县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3003', '350', '浪卡子县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3004', '351', '天山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3005', '351', '沙依巴克区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3006', '351', '新市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3007', '351', '水磨沟区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3008', '351', '头屯河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3009', '351', '达坂城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3010', '351', '米东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3011', '351', '乌鲁木齐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3012', '352', '阿克苏市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3013', '352', '温宿县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3014', '352', '库车县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3015', '352', '沙雅县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3016', '352', '新和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3017', '352', '拜城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3018', '352', '乌什县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3019', '352', '阿瓦提县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3020', '352', '柯坪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3021', '353', '阿拉尔市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3022', '354', '库尔勒市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3023', '354', '轮台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3024', '354', '尉犁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3025', '354', '若羌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3026', '354', '且末县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3027', '354', '焉耆', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3028', '354', '和静县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3029', '354', '和硕县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3030', '354', '博湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3031', '355', '博乐市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3032', '355', '精河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3033', '355', '温泉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3034', '356', '呼图壁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3035', '356', '米泉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3036', '356', '昌吉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3037', '356', '阜康市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3038', '356', '玛纳斯县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3039', '356', '奇台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3040', '356', '吉木萨尔县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3041', '356', '木垒', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3042', '357', '哈密市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3043', '357', '伊吾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3044', '357', '巴里坤', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3045', '358', '和田市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3046', '358', '和田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3047', '358', '墨玉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3048', '358', '皮山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3049', '358', '洛浦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3050', '358', '策勒县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3051', '358', '于田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3052', '358', '民丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3053', '359', '喀什市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3054', '359', '疏附县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3055', '359', '疏勒县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3056', '359', '英吉沙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3057', '359', '泽普县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3058', '359', '莎车县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3059', '359', '叶城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3060', '359', '麦盖提县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3061', '359', '岳普湖县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3062', '359', '伽师县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3063', '359', '巴楚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3064', '359', '塔什库尔干', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3065', '360', '克拉玛依市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3066', '361', '阿图什市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3067', '361', '阿克陶县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3068', '361', '阿合奇县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3069', '361', '乌恰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3070', '362', '石河子市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3071', '363', '图木舒克市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3072', '364', '吐鲁番市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3073', '364', '鄯善县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3074', '364', '托克逊县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3075', '365', '五家渠市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3076', '366', '阿勒泰市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3077', '366', '布克赛尔', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3078', '366', '伊宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3079', '366', '布尔津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3080', '366', '奎屯市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3081', '366', '乌苏市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3082', '366', '额敏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3083', '366', '富蕴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3084', '366', '伊宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3085', '366', '福海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3086', '366', '霍城县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3087', '366', '沙湾县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3088', '366', '巩留县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3089', '366', '哈巴河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3090', '366', '托里县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3091', '366', '青河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3092', '366', '新源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3093', '366', '裕民县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3094', '366', '和布克赛尔', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3095', '366', '吉木乃县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3096', '366', '昭苏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3097', '366', '特克斯县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3098', '366', '尼勒克县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3099', '366', '察布查尔', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3100', '367', '盘龙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3101', '367', '五华区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3102', '367', '官渡区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3103', '367', '西山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3104', '367', '东川区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3105', '367', '安宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3106', '367', '呈贡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3107', '367', '晋宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3108', '367', '富民县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3109', '367', '宜良县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3110', '367', '嵩明县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3111', '367', '石林县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3112', '367', '禄劝', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3113', '367', '寻甸', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3114', '368', '兰坪', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3115', '368', '泸水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3116', '368', '福贡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3117', '368', '贡山', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3118', '369', '宁洱', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3119', '369', '思茅区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3120', '369', '墨江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3121', '369', '景东', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3122', '369', '景谷', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3123', '369', '镇沅', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3124', '369', '江城', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3125', '369', '孟连', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3126', '369', '澜沧', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3127', '369', '西盟', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3128', '370', '古城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3129', '370', '宁蒗', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3130', '370', '玉龙', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3131', '370', '永胜县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3132', '370', '华坪县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3133', '371', '隆阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3134', '371', '施甸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3135', '371', '腾冲县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3136', '371', '龙陵县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3137', '371', '昌宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3138', '372', '楚雄市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3139', '372', '双柏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3140', '372', '牟定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3141', '372', '南华县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3142', '372', '姚安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3143', '372', '大姚县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3144', '372', '永仁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3145', '372', '元谋县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3146', '372', '武定县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3147', '372', '禄丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3148', '373', '大理市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3149', '373', '祥云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3150', '373', '宾川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3151', '373', '弥渡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3152', '373', '永平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3153', '373', '云龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3154', '373', '洱源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3155', '373', '剑川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3156', '373', '鹤庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3157', '373', '漾濞', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3158', '373', '南涧', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3159', '373', '巍山', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3160', '374', '潞西市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3161', '374', '瑞丽市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3162', '374', '梁河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3163', '374', '盈江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3164', '374', '陇川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3165', '375', '香格里拉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3166', '375', '德钦县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3167', '375', '维西', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3168', '376', '泸西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3169', '376', '蒙自县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3170', '376', '个旧市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3171', '376', '开远市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3172', '376', '绿春县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3173', '376', '建水县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3174', '376', '石屏县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3175', '376', '弥勒县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3176', '376', '元阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3177', '376', '红河县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3178', '376', '金平', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3179', '376', '河口', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3180', '376', '屏边', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3181', '377', '临翔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3182', '377', '凤庆县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3183', '377', '云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3184', '377', '永德县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3185', '377', '镇康县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3186', '377', '双江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3187', '377', '耿马', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3188', '377', '沧源', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3189', '378', '麒麟区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3190', '378', '宣威市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3191', '378', '马龙县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3192', '378', '陆良县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3193', '378', '师宗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3194', '378', '罗平县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3195', '378', '富源县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3196', '378', '会泽县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3197', '378', '沾益县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3198', '379', '文山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3199', '379', '砚山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3200', '379', '西畴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3201', '379', '麻栗坡县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3202', '379', '马关县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3203', '379', '丘北县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3204', '379', '广南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3205', '379', '富宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3206', '380', '景洪市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3207', '380', '勐海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3208', '380', '勐腊县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3209', '381', '红塔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3210', '381', '江川县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3211', '381', '澄江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3212', '381', '通海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3213', '381', '华宁县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3214', '381', '易门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3215', '381', '峨山', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3216', '381', '新平', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3217', '381', '元江', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3218', '382', '昭阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3219', '382', '鲁甸县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3220', '382', '巧家县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3221', '382', '盐津县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3222', '382', '大关县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3223', '382', '永善县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3224', '382', '绥江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3225', '382', '镇雄县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3226', '382', '彝良县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3227', '382', '威信县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3228', '382', '水富县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3229', '383', '西湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3230', '383', '上城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3231', '383', '下城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3232', '383', '拱墅区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3233', '383', '滨江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3234', '383', '江干区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3235', '383', '萧山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3236', '383', '余杭区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3237', '383', '市郊', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3238', '383', '建德市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3239', '383', '富阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3240', '383', '临安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3241', '383', '桐庐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3242', '383', '淳安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3243', '384', '吴兴区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3244', '384', '南浔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3245', '384', '德清县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3246', '384', '长兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3247', '384', '安吉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3248', '385', '南湖区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3249', '385', '秀洲区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3250', '385', '海宁市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3251', '385', '嘉善县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3252', '385', '平湖市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3253', '385', '桐乡市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3254', '385', '海盐县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3255', '386', '婺城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3256', '386', '金东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3257', '386', '兰溪市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3258', '386', '市区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3259', '386', '佛堂镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3260', '386', '上溪镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3261', '386', '义亭镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3262', '386', '大陈镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3263', '386', '苏溪镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3264', '386', '赤岸镇', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3265', '386', '东阳市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3266', '386', '永康市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3267', '386', '武义县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3268', '386', '浦江县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3269', '386', '磐安县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3270', '387', '莲都区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3271', '387', '龙泉市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3272', '387', '青田县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3273', '387', '缙云县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3274', '387', '遂昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3275', '387', '松阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3276', '387', '云和县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3277', '387', '庆元县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3278', '387', '景宁', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3279', '388', '海曙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3280', '388', '江东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3281', '388', '江北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3282', '388', '镇海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3283', '388', '北仑区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3284', '388', '鄞州区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3285', '388', '余姚市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3286', '388', '慈溪市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3287', '388', '奉化市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3288', '388', '象山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3289', '388', '宁海县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3290', '389', '越城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3291', '389', '上虞市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3292', '389', '嵊州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3293', '389', '绍兴县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3294', '389', '新昌县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3295', '389', '诸暨市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3296', '390', '椒江区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3297', '390', '黄岩区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3298', '390', '路桥区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3299', '390', '温岭市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3300', '390', '临海市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3301', '390', '玉环县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3302', '390', '三门县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3303', '390', '天台县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3304', '390', '仙居县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3305', '391', '鹿城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3306', '391', '龙湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3307', '391', '瓯海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3308', '391', '瑞安市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3309', '391', '乐清市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3310', '391', '洞头县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3311', '391', '永嘉县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3312', '391', '平阳县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3313', '391', '苍南县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3314', '391', '文成县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3315', '391', '泰顺县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3316', '392', '定海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3317', '392', '普陀区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3318', '392', '岱山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3319', '392', '嵊泗县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3320', '393', '衢州市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3321', '393', '江山市', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3322', '393', '常山县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3323', '393', '开化县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3324', '393', '龙游县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3325', '394', '合川区', '1', '0', 'H', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3326', '394', '江津区', '1', '0', 'J', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3327', '394', '南川区', '1', '0', 'N', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3328', '394', '永川区', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3329', '394', '南岸区', '1', '0', 'N', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3330', '394', '渝北区', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3331', '394', '万盛区', '1', '0', 'W', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3332', '394', '大渡口区', '1', '0', 'D', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3333', '394', '万州区', '1', '0', 'W', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3334', '394', '北碚区', '1', '0', 'B', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3335', '394', '沙坪坝区', '1', '0', 'S', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3336', '394', '巴南区', '1', '0', 'B', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3337', '394', '涪陵区', '1', '0', 'F', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3338', '394', '江北区', '1', '0', 'J', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3339', '394', '九龙坡区', '1', '0', 'J', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3340', '394', '渝中区', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3341', '394', '黔江开发区', '1', '0', 'Q', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3342', '394', '长寿区', '1', '0', 'C', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3343', '394', '双桥区', '1', '0', 'S', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3344', '394', '綦江县', '1', '0', 'Q', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3345', '394', '潼南县', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3346', '394', '铜梁县', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3347', '394', '大足县', '1', '0', 'D', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3348', '394', '荣昌县', '1', '0', 'R', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3349', '394', '璧山县', '1', '0', 'B', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3350', '394', '垫江县', '1', '0', 'D', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3351', '394', '武隆县', '1', '0', 'W', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3352', '394', '丰都县', '1', '0', 'F', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3353', '394', '城口县', '1', '0', 'C', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3354', '394', '梁平县', '1', '0', 'L', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3355', '394', '开县', '1', '0', 'K', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3356', '394', '巫溪县', '1', '0', 'W', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3357', '394', '巫山县', '1', '0', 'W', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3358', '394', '奉节县', '1', '0', 'F', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3359', '394', '云阳县', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3360', '394', '忠县', '1', '0', 'Z', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3361', '394', '石柱土家族自治县', '1', '0', 'S', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3362', '394', '彭水苗族土家族自治县', '1', '0', 'P', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3363', '394', '酉阳土家族苗族自治县', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3364', '394', '秀山土家族苗族自治县', '1', '0', 'X', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3365', '395', '沙田区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3366', '395', '东区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3367', '395', '观塘区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3368', '395', '黄大仙区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3369', '395', '九龙城区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3370', '395', '屯门区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3371', '395', '葵青区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3372', '395', '元朗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3373', '395', '深水埗区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3374', '395', '西贡区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3375', '395', '大埔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3376', '395', '湾仔区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3377', '395', '油尖旺区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3378', '395', '北区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3379', '395', '南区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3380', '395', '荃湾区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3381', '395', '中西区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3382', '395', '离岛区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3383', '396', '澳门', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3384', '397', '台北市', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3385', '397', '高雄市', '1', '0', 'G', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3386', '397', '基隆市', '1', '0', 'J', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3387', '397', '台中市', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3388', '397', '台南市', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3389', '397', '新竹市', '1', '0', 'X', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3390', '397', '嘉义市', '1', '0', 'J', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3391', '397', '宜兰县', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3392', '397', '桃园县', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3393', '397', '苗栗县', '1', '0', 'M', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3394', '397', '彰化县', '1', '0', 'Z', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3395', '397', '南投县', '1', '0', 'N', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3396', '397', '云林县', '1', '0', 'Y', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3397', '397', '屏东县', '1', '0', 'P', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3398', '397', '台东县', '1', '0', 'T', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3399', '397', '花莲县', '1', '0', 'H', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3400', '397', '澎湖县', '1', '0', 'P', '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3401', '3', '合肥市', '1', '0', 'H', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('3402', '3401', '庐阳区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3403', '3401', '瑶海区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3404', '3401', '蜀山区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3405', '3401', '包河区', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3406', '3401', '长丰县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3407', '3401', '肥东县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('3408', '3401', '肥西县', '1', '0', null, '2', '1', null);
INSERT INTO `ox_areas` VALUES ('820302', '24', '杨凌示范区', '1', '0', 'Y', '1', '1', null);
INSERT INTO `ox_areas` VALUES ('820303', '820302', '杨陵区', '1', '0', 'Y', '2', '1', '2017-03-19 00:14:03');

-- ----------------------------
-- Table structure for ox_articles
-- ----------------------------
DROP TABLE IF EXISTS `ox_articles`;
CREATE TABLE `ox_articles` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL,
  `articleTitle` varchar(200) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `articleContent` longtext,
  `articleKey` varchar(200) DEFAULT NULL,
  `staffId` int(11) NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `solve` int(10) unsigned DEFAULT '0' COMMENT '解决数',
  `unsolve` int(10) unsigned DEFAULT '0' COMMENT '未解决数',
  `coverImg` varchar(150) DEFAULT NULL,
  `visitorNum` int(10) unsigned DEFAULT '0' COMMENT '文章浏览量',
  `TypeStatus` int(10) DEFAULT '1',
  `likeNum` int(50) DEFAULT '0',
  `catSort` int(11) DEFAULT '0',
  `articleDesc` varchar(500) DEFAULT NULL COMMENT '文章描述',
  PRIMARY KEY (`articleId`),
  KEY `catId` (`catId`,`isShow`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_articles
-- ----------------------------
INSERT INTO `ox_articles` VALUES ('1', '5', '购物流程', '1', '<p>\n	<span style=\"font-size:16px;\">购物流程</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">货到付款流程</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">在线支付流程支持支付宝、微信在线支付</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', '购物流程', '1', '1', '2016-09-06 15:28:05', '0', '1', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('2', '5', '会员介绍', '1', '会员介绍', '会员介绍', '1', '1', '2016-09-06 15:30:54', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('3', '5', '常见问题', '1', '常见问题', '常见问题', '1', '1', '2016-09-06 15:31:26', '1', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('4', '1', '在线支付', '1', '在线支付', '在线支付', '1', '1', '2016-09-06 15:34:30', '0', '1', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('5', '1', '货到付款', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart公司采购支持货到付款，具体政策：</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '货到付款', '1', '1', '2016-09-06 15:34:44', '1', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('6', '1', '分期付款', '1', '分期付款', '分期付款', '1', '1', '2016-09-06 15:35:00', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('7', '1', '邮局汇款', '1', '邮局汇款', '邮局汇款', '1', '1', '2016-09-06 15:35:34', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('8', '9', '售后政策', '1', '售后政策', '售后政策', '1', '1', '2016-09-06 15:36:08', '1', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('9', '9', '退款/换货', '1', '退款/换货', '退款/换货', '1', '1', '2016-09-06 15:37:04', '0', '1', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('10', '9', '退款维权流程', '1', '退款维权流程', '退款维权流程', '1', '1', '2016-09-06 15:37:42', '0', '1', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('11', '6', '配送查询', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart商城正式上线，配送查询渠道：</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"> </span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<span></span><br />\n<p>\n	<br />\n</p>', '商城正式上线', '1', '1', '2016-09-06 15:38:46', '0', '1', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('12', '6', '211限时达', '1', '<p>\n	<span style=\"font-size:16px;\">商品详情有说明211限时达的商品，购买的时候可享受相关的政策。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', '商家入驻优惠', '1', '1', '2016-09-06 15:40:42', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('13', '6', 'wstmart商城配送', '1', '<p>\n	wstmart商城具有自己的配送团队，如入驻商家选择了我们的配送，享受。。。服务\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', '商家免费服务推广', '1', '1', '2016-09-06 15:40:59', '2', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('14', '10', '商家加盟', '1', '商家加盟', '商家加盟', '1', '1', '2016-09-06 15:43:07', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('15', '10', '广告推广', '1', '广告推广', '广告推广', '1', '1', '2016-09-06 15:43:21', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('16', '10', 'wstmart线下推广', '1', '<p>\n	线下推广\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '线下推广', '1', '1', '2016-09-06 15:43:41', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('17', '10', '供货商合作', '1', '供货商合作', '供货商合作', '1', '1', '2016-09-06 15:43:55', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('18', '10', '新闻媒体合作', '1', '新闻媒体合作', '新闻媒体合作', '1', '1', '2016-09-06 15:44:11', '1', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('19', '11', 'wstmart产品特色', '1', '<p>\n	产品特色\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '产品特色', '1', '1', '2016-09-06 15:44:48', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('20', '11', '促销文章1', '1', '未二次全文', '促销', '1', '1', '2016-09-29 19:56:48', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('21', '11', 'wstmart商城上线了', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart多用户商城上线了，发言一下</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', 'wstmart商城', '1', '1', '2016-09-29 19:57:04', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('22', '11', 'wstmart商城，国庆促销', '1', 'wstmart商城，国庆促销了，来看看吧', 'wstmart商城', '1', '1', '2016-09-29 19:58:21', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('23', '12', '错了这个村 没了这个店', '1', '<p>\n	<span style=\"font-size:16px;\">中秋，wstmart商城大闸蟹开放了</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">详询</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">客服QQ：153289970</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">联系我们</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;line-height:24px;\">http://bbs.shangtaosoft.com</span><br />\n</span>\n</p>', 'wstmart商城快讯', '1', '1', '2016-09-29 19:58:55', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('24', '11', 'WSTMart商城快讯', '1', 'wstmart商城正式运营了', 'WSTMart商城快讯', '1', '1', '2016-10-11 16:04:26', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('25', '12', '双11 wstmart商城约定你', '1', '<p>\n	wstmart多用户商城，双11全球购物盛宴，wstmart约定你\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart多用户商城', '1', '1', '2016-10-11 16:08:02', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('26', '11', '商淘软件多用户商城发布', '1', '<p>\n	<span style=\"font-size:16px;\">商淘软件WSTMart多用户商城发布</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', '商淘软件,WSTMart多用户商城', '1', '1', '2016-10-11 16:12:09', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('27', '9', '价格保护', '1', '<p>\n	<span style=\"font-size:14px;\">购买wstmart享受价格保护，在购买后的1天内</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:14px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\"><span style=\"font-size:14px;\">http://www.wstmart.net</span></a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\"><span style=\"font-size:14px;\">http://bbs.shangtaosoft.com</span></a></span>\n	</p>\n<span></span>\n</p>', 'wstmart', '1', '1', '2016-10-20 10:11:27', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('28', '1', '公司转账', '1', '<p>\n	<span style=\"font-size:16px;\">转账到广州商淘信息科技有限公司公账户后，请及时联系我们。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\"><span style=\"font-size:16px;\">http://www.wstmart.net</span></a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\"><span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span></a></span>\n	</p>\n<span></span><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span>\n</p>', 'wstmart转账', '1', '1', '2016-10-20 10:14:28', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('29', '9', '取消订单', '1', '<p>\n	<span style=\"font-size:16px;\">这里是wstmart的退款说明，一经授权，请勿退款。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart多商户开源系统', '1', '1', '2016-10-20 10:35:17', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('30', '6', '配送费用说明', '1', '<p>\n	<span style=\"font-size:16px;line-height:24px;\">wstmart自营商城满99元免费配送。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<p>\n	<br />\n</p>', '入群有礼', '1', '1', '2016-10-20 10:36:43', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('31', '6', '入驻商家配送说明', '1', '<p>\n	<span style=\"font-size:16px;line-height:24px;\">wstmart入驻商家使用自行联系的第三方配送</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<p>\n	<br />\n</p>', 'wstmart配送', '1', '1', '2016-10-20 10:57:50', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('32', '5', '优惠政策', '1', '<p>\n	<span style=\"font-size:18px;\">购物享乐趣</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:18px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart', '1', '1', '2016-10-20 11:12:25', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('33', '5', '发票制度', '1', '<p>\n	<strong><span style=\"font-size:14px;\">一、 发票开具</span></strong>\n</p>\n<p>\n	<span style=\"font-size:14px;\">1、所有商品发票均由所属销售商家负责开具，且所有开具的发票均为合法有效。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">2、顾客在结算过程中可以选择是否开具发票，商家会按照顾客的选择为顾客开具发票。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">3、所有商品仅按顾客实付现金金额开具发票，不包括抵用券、返利金额、礼品卡等金额部分。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">4、若顾客订购的是数码、手机、电脑、家电类商品，为了保证顾客能充分享受生产厂家提供的售后服务，无论顾客是否选择开具发票，商家均会随单为顾客开具普通发票，发票内容默认为顾客订购的商品全称和型号，且不支持发票内容修改，如给顾客带来不便，敬请谅解；如需将普通发票换开为增值税专用发票（电子发票不支持换开），则必须退回普通发票原件。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">5、若顾客选择预付卡或积分方式进行支付，则对于该部分支付金额，顾客仅可选择开具0元发票。</span>\n</p>\n<p>\n	<strong><span style=\"font-size:14px;\">二、普通发票</span></strong>\n</p>\n<p>\n	<span style=\"font-size:14px;\">1.发票抬头：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（1）发票抬头不能为空；</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（2）您可填写：\"个人\"、您的姓名、或您的单位名称</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（3）由于税务局提供的开票软件字数限制（最多40个字）剩余字数会和纳税人识别号重叠而无法显示，请索要普票时抬头字数不要超过40个</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">2.发票内容：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（1）1号店自营：可开具的发票内容：酒、饮料、食品、玩具、日用品、装修材料、化妆品、办公用品、学生用品、家居用品、饰品、服装、箱包、精品、家电、劳防用品。您可根据需要选择。</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（2）入驻商家：发票内容将开具您所订商品的明细。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">3. 如果您在收到货物时请检查发票，并在送货签收单上签字，一旦签字即代表您已收到发票，并且发票无误。对于顾客人为因素引起的发票遗失，我们无法为您补开发票。</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">请在提交订单页面，在\"索取发票\"前打钩，按提示填写发票抬头、选择发票内容，发票将会随您的订单商品一起送达：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\"><br />\n</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<br />\n</span>\n</p>', '发票', '1', '1', '2016-10-20 11:16:00', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('105', '53', '招商方向', '1', '&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;strong&gt;2017年开放平台招商方向&lt;/strong&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;h1 style=&quot;font-size:1em;font-weight:normal;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	1.&amp;nbsp;&amp;nbsp;&amp;nbsp; 品牌\n&lt;/h1&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;span style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 国际国内知名品牌&lt;/span&gt;&lt;br /&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;开放平台将一如既往的最大程度地维护卖家的品牌利益，尊重品牌传统和内涵，欢迎优质品牌旗\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	舰店入驻，请参见《2017年开放平台重点招募品牌》。\n&lt;/p&gt;\n&lt;h1 style=&quot;font-size:1em;font-weight:normal;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/h1&gt;\n&lt;h1 style=&quot;font-size:1em;font-weight:normal;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	2.&amp;nbsp;&amp;nbsp;&amp;nbsp; 货品\n&lt;/h1&gt;\n&lt;span style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 能够满足用户群体优质、有特色的货品。&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 根据类目结构细分的货品配置。类目规划详见《2014年开放平台类目一览表》。&lt;/span&gt;&lt;br /&gt;\n&lt;h1 style=&quot;font-size:1em;font-weight:normal;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	3.&amp;nbsp;&amp;nbsp; 垂直电商\n&lt;/h1&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 开放平台欢迎垂直类电商入驻。开放平台愿意和专业的垂直电商企业分享其优质用户群体，\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#666666;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	并且欢迎垂直电商为用户提供该领域专业的货品及服务。\n&lt;/p&gt;\n&lt;div&gt;\n	&lt;br /&gt;\n&lt;/div&gt;', '招商方向', '1', '1', '2017-06-26 22:23:49', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('106', '53', '招商标准', '1', '&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;strong&gt;第一章&lt;span&gt;&amp;nbsp;2017&lt;/span&gt;年WSTMart开放平台招商重点&lt;/strong&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;1.1&amp;nbsp;&lt;/span&gt;品牌&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;国际国内知名品牌&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;WSTMart开放平台将一如既往的最大程度地维护卖家的品牌利益，尊重品牌传统和内涵，欢迎优质品牌旗舰店入驻。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;1.2&amp;nbsp;&lt;/span&gt;商品&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;能够满足WSTMart用户群体优质、有特色的商品。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;根据类目结构细分的商品配置。类目规划详见&lt;span&gt;&lt;span&gt;&lt;span&gt;《2017&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;span&gt;年WSTMart开放平台类目一览表》&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;1.3&amp;nbsp;&lt;/span&gt;垂直电商&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;WSTMart开放平台欢迎垂直类电商入驻。WSTMart开放平台愿意和专业的垂直电商企业分享其优质用户群体，并且欢迎垂直电商为WSTMart用户提供该领域专业、优质的商品及服务。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;strong&gt;第二章适用范围&lt;/strong&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;本标准适用于除生活旅游业务（包括但不限于旅游、酒店、票务、充值、彩票）外的WSTMart开放平台所有卖家。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;strong&gt;第三章入驻须知&lt;/strong&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.1&amp;nbsp;&lt;/span&gt;WSTMart开放平台暂未授权任何机构进行代理招商服务，入驻申请流程及&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;相关的收费说明均以WSTMart开放平台官方招商页面为准。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.2&amp;nbsp;&lt;/span&gt;WSTMart开放平台有权根据包括但不限于品牌需求、公司经营状况、服务水平等其他因素退回卖家入驻申请。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.3&amp;nbsp;&lt;/span&gt;WSTMart开放平台有权在申请入驻及后续经营阶段要求卖家提供其他资质。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.4&amp;nbsp;&lt;/span&gt;WSTMart开放平台将结合各行业发展动态、国家相关规定及消费者购买需求，不定期更新招商标准。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.5&amp;nbsp;&lt;/span&gt;卖家必须如实提供资料和信息：&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.5.1&amp;nbsp;&lt;/span&gt;请务必确保申请入驻及后续经营阶段提供的相关资质和信息的真实性、完整性、有效性（若卖家提供的相关资质为第三方提供，包括但不限于商标注册证、授权书等，请务必先行核实文件的真实有效完整性），一旦发现虚假资质或信息的，WSTMart开放平台将不再与卖家进行合作并有权根据WSTMart开放平台规则及与卖家签署的相关协议之约定进行处理；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.5.2&amp;nbsp;&lt;/span&gt;卖家应如实提供其店铺运营的主体及相关信息，包括但不限于店铺实际经营主体、代理运营公司等信息；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.5.3&amp;nbsp;&lt;/span&gt;WSTMart开放平台关于卖家信息和资料变更有相关规定的从其规定，但卖家如变更&lt;span&gt;3.5.2&lt;/span&gt;项所列信息，应提前&lt;span&gt;10&lt;/span&gt;日书面告知WSTMart；如未提前告知WSTMart，WSTMart将根据WSTMart开放平台规则进行处理。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.6&amp;nbsp;&lt;/span&gt;WSTMart开放平台暂不接受个体工商户的入驻申请，卖家须为正式注册企业，亦暂时不接受非中国大陆注册企业的入驻申请。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;3.7&amp;nbsp;&lt;/span&gt;WSTMart开放平台暂不接受未取得国家商标总局颁发的商标注册证或商标受理通知书的品牌入驻开店申请，亦不接受纯图形类商标的入驻申请。卖家提供商标受理通知书（&lt;span&gt;TM&lt;/span&gt;状态商标）的，注册申请时间须满六个月。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;strong&gt;第四章WSTMart店铺类型及相关要求&lt;/strong&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.1&amp;nbsp;&lt;/span&gt;旗舰店，卖家以自有品牌（商标为&lt;span&gt;R&lt;/span&gt;或&lt;span&gt;TM&lt;/span&gt;状态），或由权利人出具的在WSTMart开放平台开设品牌旗舰店的独占性授权文件（授权文件中应明确独占性、不可撤销性），入驻WSTMart开放平台开设的店铺。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.1.1&amp;nbsp;&lt;/span&gt;旗舰店，可以有以下几种情形：&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;经营一个自有品牌商品的品牌旗舰店（自有品牌是指商标权利归卖家所有）或由权利人出具的在WSTMart开放平台开设品牌旗舰店的独占性授权文件（授权文件中应明确独占性、不可撤销性）的品牌旗舰店；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;经营多个自有品牌商品且各品牌归同一实际控制人的品牌旗舰店（自有品牌的子品牌可以放入旗舰店，主、子品牌的商标权利人应为同一实际控制人）；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;卖场型品牌（服务类商标）商标权人开设的旗舰店；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.1.2&amp;nbsp;&lt;/span&gt;开店主体必须是品牌（商标）权利人或持有权利人出具的开设WSTMart开放平台旗舰店独占性授权文件的被授权企业。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.2&amp;nbsp;&lt;/span&gt;专卖店，卖家持他人品牌（商标为&lt;span&gt;R&lt;/span&gt;或&lt;span&gt;TM&lt;/span&gt;状态）授权文件在WSTMart开放平台开设的店铺。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.2.1&amp;nbsp;&lt;/span&gt;专卖店类型：经营一个或多个授权品牌商品（多个授权品牌的商标权利人应为同一实际控制人）但未获得品牌（商标）权利人独占授权入驻WSTMart开放平台的卖家专卖店；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.2.2&amp;nbsp;&lt;/span&gt;品牌（商标）权利人出具的授权文件不应有地域限制。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.3&amp;nbsp;&lt;/span&gt;专营店，经营WSTMart开放平台相同一级类目下两个及以上他人或自有品牌（商标为&lt;span&gt;R&lt;/span&gt;或&lt;span&gt;TM&lt;/span&gt;状态）商品的店铺。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.3.1&amp;nbsp;&lt;/span&gt;专营店，可以有以下几种情形：&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;相同一级类目下经营两个及以上他人品牌商品入驻WSTMart开放平台的卖家专营店；&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;相同一级类目下既经营他人品牌商品又经营自有品牌商品入驻WSTMart开放平台的卖家专营店。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;4.4&amp;nbsp;&lt;/span&gt;各类型店铺命名详细说明，请见&lt;span&gt;&lt;span&gt;&lt;span&gt;《WSTMart开放平台卖家店铺命名规则》&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;。&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;strong&gt;第五章WSTMart申请入驻资质标准&lt;/strong&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background:#FFFFFF;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;5.1&lt;/span&gt;WSTMart开放平台申请入驻资质标准详见《&lt;span&gt;2017&lt;/span&gt;年WSTMart开放平台招商资质标准细则》。&lt;/span&gt; \n&lt;/p&gt;', '招商标准', '1', '1', '2017-06-26 22:30:54', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('107', '53', '资质要求', '1', 'WSTMart招商资质要求明细:', '资质要求', '1', '1', '2017-06-26 22:32:30', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('108', '53', '资费标准', '1', '&lt;p style=&quot;color:#999999;font-family:&amp;quot;background-color:#FFFFFF;text-align:center;&quot;&gt;\n	&lt;span&gt;&lt;span&gt;&lt;span&gt;&lt;b&gt;2017年开放平台各类目资费一览表&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\n&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#999999;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;768&quot; style=&quot;color:#999999;font-family:&amp;quot;font-size:12px;background-color:#FFFFFF;width:440pt;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;38&quot; class=&quot;xl98&quot; width=&quot;72&quot;&gt;\n				一级分类\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl98&quot; width=&quot;72&quot;&gt;\n				二级分类\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl110&quot; width=&quot;155&quot;&gt;\n				三级分类\n			&lt;/td&gt;\n			&lt;td colspan=&quot;2&quot; class=&quot;xl111&quot; width=&quot;144&quot;&gt;\n				费率\n			&lt;/td&gt;\n			&lt;td class=&quot;xl81&quot; width=&quot;72&quot;&gt;\n				平台使用费\n			&lt;/td&gt;\n			&lt;td class=&quot;xl82&quot; width=&quot;72&quot;&gt;\n				&amp;nbsp;保证金&amp;nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;19&quot; class=&quot;xl98&quot; width=&quot;72&quot;&gt;\n				SOP\n			&lt;/td&gt;\n			&lt;td class=&quot;xl98&quot; width=&quot;72&quot;&gt;\n				FBP\n			&lt;/td&gt;\n			&lt;td class=&quot;xl81&quot; width=&quot;72&quot;&gt;\n				单位-元/月\n			&lt;/td&gt;\n			&lt;td class=&quot;xl82&quot; width=&quot;72&quot;&gt;\n				&amp;nbsp;单位-元&amp;nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;97&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				服饰内衣\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				男装/女装/内衣\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				服饰配件\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				口罩\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				鞋靴\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;11&quot; height=&quot;384&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				珠宝首饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				黄金/铂金/K金饰品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%（含5%消费税）\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;11&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;76&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				金银投资\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				投资金/黄金托管\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				1%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				1%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;114&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				银饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				银吊坠/项链/银戒指/银耳饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				10%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				9%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				银手镯/手链/脚链\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;19&quot; class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				宝宝银饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				翡翠玉石\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				9%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				钻石\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				裸钻\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				水晶玛瑙/时尚饰品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				10%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				9%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				&lt;span class=&quot;font7&quot;&gt;木手串/把件&lt;/span&gt;&lt;span class=&quot;font6&quot;&gt;/彩宝/珍珠&lt;/span&gt;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;8&quot; height=&quot;272&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				礼品箱包\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				奢侈品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				配件/饰品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;8&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				潮流女包/精品男包/功能箱包\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				10%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				9%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;5&quot; height=&quot;156&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				礼品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				火机烟具/军刀军具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				10%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				10%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				鲜花绿植/礼盒礼券/绿植\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				收藏品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				1%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				1%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				礼品定制\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;5&quot; height=&quot;133&quot; class=&quot;xl96&quot; width=&quot;72&quot;&gt;\n				钟表\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;5&quot; class=&quot;xl96&quot; width=&quot;72&quot;&gt;\n				钟表\n			&lt;/td&gt;\n			&lt;td class=&quot;xl96&quot; width=&quot;155&quot;&gt;\n				瑞表/德表\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;5&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl83&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;19&quot; class=&quot;xl96&quot; width=&quot;155&quot;&gt;\n				国表\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl83&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl96&quot; width=&quot;155&quot;&gt;\n				日韩表/欧美表\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl83&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;155&quot;&gt;\n				闹钟/儿童手表/钟表配件\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl83&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;19&quot; class=&quot;xl96&quot; width=&quot;155&quot;&gt;\n				智能手表\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl83&quot; width=&quot;72&quot;&gt;\n				60,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;4&quot; height=&quot;171&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				运动户外\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				运动鞋包/运动服饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;4&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;4&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				户外鞋服/户外装备\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				游泳用品/垂钓用品/骑行运动\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				健身训练/体育用品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;114&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				家居家装\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				家纺\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				抱枕靠垫/毛巾浴巾/枕芯\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				生活日用/家装软饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				厨具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;135&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				家具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				儿童家具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;114&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				卧室家具/客厅家具/餐厅家具/书房家具/储物家具/阳台/户外/办公家具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30000（红木家具100000）\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;12&quot; height=&quot;386&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				家装建材\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				灯饰照明/五金工具/电工电料\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;12&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;6&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				厨房卫浴\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				橱柜\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;114&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				墙地面材料\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				壁纸/涂刷辅料/胶类\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				油漆/涂料/瓷砖/地板\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				木材/板材/管材管件\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;80&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				装饰材料\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				散热器\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				园艺休闲\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;76&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				装修服务\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				装修施工\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;19&quot; class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				安装服务\n			&lt;/td&gt;\n			&lt;td class=&quot;xl86&quot; width=&quot;72&quot;&gt;\n				0.01%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;22&quot; height=&quot;706&quot; class=&quot;xl112&quot; width=&quot;72&quot;&gt;\n				汽车用品\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;10&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				维修保养\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				机油/轮胎/柴机油/辅助油\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;19&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;19&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				蓄电池\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				汽车玻璃\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				贴膜\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				火花塞/雨刷/车灯\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				底盘装甲/护板\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				改装配件\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				添加剂/防冻液\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				汽修工具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				车载电器\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				智能车机\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				美容清洗/汽车装饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				安全自驾\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				安全座椅\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;4&quot; height=&quot;156&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				汽车服务\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				车险\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;76&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				清洗美容/功能升级/保养维修/驾驶培训\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				ETC\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				油卡充值/加油卡/陪练\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				0.5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				0.5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;80&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				赛事改装\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				摩托车\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				摩托车装备\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				6.0%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				6.0%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				5.0%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				2.0%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;4&quot; height=&quot;270&quot; class=&quot;xl112&quot; width=&quot;72&quot;&gt;\n				医药保健\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				隐形眼镜\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				6.0%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl72&quot; width=&quot;72&quot;&gt;\n				/\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;4&quot; class=&quot;xl112&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;4&quot; class=&quot;xl116&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				营养健康/营养成分/传统滋补\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				成人用品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;171&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				保健器械/护理护具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				6%&lt;br /&gt;\n（其中体检、美容、心理咨询、基因检测，中医理疗等医疗服务类 4%）&lt;br /&gt;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;15&quot; height=&quot;489&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				母婴\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				童装童鞋\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;15&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;95&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				寝居服饰\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				家居床品/安全防护/睡袋/抱被\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;6&quot; height=&quot;198&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				妈妈专区\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				孕期营养\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				孕妇护肤/妈咪包/背婴带/产后塑身\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;5&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				待产护理\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				防溢乳垫\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				孕妈装/文胸/内裤/月子装\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				防辐射服\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl87&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				奶粉/营养辅食\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				100,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				尿裤湿巾\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;5&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				童车童床\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;155&quot;&gt;\n				婴儿床垫\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				安全座椅\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				喂养用品/洗护用品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;3&quot; height=&quot;154&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				玩具乐器\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				DIY玩具/创意减压\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;95&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				遥控/电动/健身玩具/动漫玩具/益智玩具/积木拼插\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				乐器\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;8&quot; height=&quot;266&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				美妆个护\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				面部护肤\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;8&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				R商标50000/TM商标 100000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				香水彩妆\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				美妆工具\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				口腔护理/女性护理/洗发护发\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;57&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				身体护肤\n			&lt;/td&gt;\n			&lt;td class=&quot;xl65&quot; width=&quot;155&quot;&gt;\n				精油\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				R商标50000/TM商标 100000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				6%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl99&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;76&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				清洁用品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				家庭/衣物清洁/纸品湿巾\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				2%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;2&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				30,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				8%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl77&quot; width=&quot;72&quot;&gt;\n				7%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;7&quot; height=&quot;268&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				食品饮料\n			&lt;/td&gt;\n			&lt;td class=&quot;xl97&quot; width=&quot;72&quot;&gt;\n				食品礼券/地方特产/茗茶/进口食品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;7&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td rowspan=&quot;7&quot; class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;59&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				饮料冲调\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				饮用水\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;76&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				休闲食品\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				坚果炒货/饼干蛋糕\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				4%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td rowspan=&quot;2&quot; height=&quot;76&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				粮油调味\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				米面杂粮/食用油\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;38&quot; class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				其他三级类目\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				5%\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;21&quot; class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				生鲜\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl68&quot; width=&quot;155&quot;&gt;\n				&amp;emsp;\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl73&quot; width=&quot;72&quot;&gt;\n				3%\n			&lt;/td&gt;\n			&lt;td class=&quot;xl95&quot; width=&quot;72&quot;&gt;\n				1000\n			&lt;/td&gt;\n			&lt;td class=&quot;xl100&quot; width=&quot;72&quot;&gt;\n				50,000\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;', '资费标准', '1', '1', '2017-06-26 22:33:26', '0', '0', null, '0', '1', '0', '0', null);
INSERT INTO `ox_articles` VALUES ('109', '53', '入驻协议', '1', '&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;span class=&quot;wst-mall&quot;&gt;WSTMart电子商务系统&lt;/span&gt;用户注册协议\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	本协议是您与&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;所有者之间就&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击&quot;同意并继续&quot;按钮后，本协议即构成对双方有约束力的法律文件。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第1条 本站服务条款的确认和接纳\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;1.1&lt;/strong&gt;本站的各项电子服务的所有权和运作权归&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;1.2&lt;/strong&gt;用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;1.3&lt;/strong&gt;如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;1.4&lt;/strong&gt;&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第2条 本站服务\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;2.1&lt;/strong&gt;&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;2.2&lt;/strong&gt;用户必须自行准备如下设备和承担如下开支：\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第3条 用户信息\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.1&lt;/strong&gt;用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;保留终止用户使用&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;各项服务的权利。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.2&lt;/strong&gt;用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.3&lt;/strong&gt;用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.4&lt;/strong&gt;用户同意，&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.5&lt;/strong&gt;用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3.6&lt;/strong&gt;用户同意，&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第4条 用户依法言行义务\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（1）不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（2）从中国大陆向境外传输资料信息时必须符合中国有关法规；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（3）不得利用本站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（4）不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（5）不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（6）不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（7）不得教唆他人从事本条所禁止的行为；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（8）不得利用在本站注册的账户进行牟利性经营活动；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（9）不得发布任何侵犯他人著作权、商标权等知识产权或合法权利的内容；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。用户须对自己在网上的言论和行为承担法律责任。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第5条 店铺义务\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;5.1&lt;/strong&gt;店铺经营者可通过本站申请店铺，发布全新或二手商品及/或服务信息并与其他用户达成交易，但必须保证商品信息真实。如有发现商品假冒或者其他违反国家法律规定的商品，本站有权对商品进行禁售。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;5.2&lt;/strong&gt;若店铺经营者发生改变，店铺经营者需及时联系本站进行信息的变更，若未及时联系本站而导致消费者与原店铺经营者产生交易纠纷或者违法国家规定的事情，本站不负任何连带责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;5.3&lt;/strong&gt;店铺经营者有权通过使用店铺设置短暂关停店铺，但店铺经营者应当对自己店铺关停前已达成的交易继续承担发货、退换货及质保维修、维权投诉处理等交易保障责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;5.4&lt;/strong&gt;店铺经营者如有不实交易信息或者违反国家相关法律的行为，本站有权对店铺进行关停，并对关停期间所产生的损失不负任何责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	依据上述约定关停店铺均不会影响您已经累积的信用。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第6条 商品信息\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	本站上的商品价格、数量、是否有货等商品信息随时都有可能发生变动，本站不作特别通知。由于网站上商品信息的数量极其庞大，虽然本站会尽最大努力保证您所浏览商品信息的准确性，但由于众所周知的互联网技术因素等客观原因存在，本站网页显示的信息可能会有一定的滞后性或差错，对此情形您知悉并理解；&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;欢迎纠错，并会视情况给予纠错者一定的奖励。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	为表述便利，商品和服务简称为&quot;商品&quot;或&quot;货物&quot;。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第7条 订单\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;7.1&lt;/strong&gt;在您下订单时，请您仔细确认所购商品的名称、价格、数量、规格、联系地址、电话、收货人等信息。收货人与用户本人不一致的，收货人的行为和意思表示视为用户的行为和意思表示，用户应对收货人的行为及意思表示的法律后果承担连带责任。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;7.2&lt;/strong&gt;除法律另有强制性规定外，双方约定如下：本站上销售方展示的商品和价格等信息仅仅是要约邀请，您下单时须填写您希望购买的商品数量、价款及支付方式、收货人、联系方式、收货地址（合同履行地点）、合同履行方式等内容；系统生成的订单信息是计算机信息系统根据您填写的内容自动生成的数据，仅是您向销售方发出的合同要约；销售方收到您的订单信息后，只有在销售方将您在订单中订购的商品从仓库实际直接向您发出时（ 以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品才成立合同关系。您可以随时登录您在本站注册的账户，查询您的订单状态。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;7.3&lt;/strong&gt;由于市场变化及各种以合理商业努力难以控制的因素的影响，本站无法保证您提交的订单信息中希望购买的商品都会有货；如您拟购买的商品，发生缺货，您有权取消订单。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第8条 配送\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;8.1&lt;/strong&gt;销售方将会把商品（货物）送到您所指定的收货地址，所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;8.2&lt;/strong&gt;因如下情况造成订单延迟或无法配送等，销售方不承担延迟配送的责任：\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（1）用户提供的信息错误、地址不详细等原因导致的；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（2）货物送达后无人签收，导致无法配送或延迟配送的；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（3）情势变更因素导致的；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（4）不可抗力因素导致的，例如：自然灾害、交通戒严、突发战争等。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第9条 交易争议处理\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	您在WSTMart电子商务系统平台交易过程中与其他用户发生争议的，您或其他用户中任何一方均有权选择以下途径解决：\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（1）与争议相对方自主协商；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（2）使用&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;网站提供的争议调处服务；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（3）请求消费者协会或者其他依法成立的调解组织调解；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（4）向有关行政部门投诉；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（5）根据与争议相对方达成的仲裁协议（如有）提请仲裁机构仲裁；\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	（6）向人民法院提起诉讼。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第10条 责任限制及不承诺担保\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;10.1&lt;/strong&gt;除非另有明确的书面说明,本站及其所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务，均是在&quot;按现状&quot;和&quot;按现有&quot;的基础上提供的。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;10.2&lt;/strong&gt;除非另有明确的书面说明,&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;不对本站的运营及其包含在本网站上的信息、内容、材料、产品（包括软件）或服务作任何形式的、明示或默示的声明或担保（根据中华人民共和国法律另有规定的以外）。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;不担保本站所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务、其服务器或从本站发出的电子信件、信息没有病毒或其他有害成分。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;会合理地尽力协助处理善后事宜。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	第11条 协议更新及用户关注义务\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	根据国家法律法规变化及网站运营需要，&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;有权对本协议条款不时地进行修改，修改后的协议一旦被张贴在本站上即生效，并代替原来的协议。用户可随时登录查阅最新协议；用户有义务不时关注并阅读最新版的协议及网站公告。如用户不同意更新后的协议，可以且应立即停止接受&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;网站依据本协议提供的服务；如用户继续使用本网站提供的服务的，即视为同意更新后的协议。&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;建议您在使用本站之前阅读本协议及本站的公告。 如果本协议中任何一条被视为废止、无效或因任何理由不可执行，该条应视为可分的且并不影响任何其余条款的有效性和可执行性。\n&lt;/p&gt;\n&lt;h4 style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	附则\n&lt;/h4&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;1&lt;/strong&gt;&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，&lt;span class=&quot;wst-mall&quot; style=&quot;font-weight:bold;&quot;&gt;WSTMart电子商务系统&lt;/span&gt;将虚心接受并适时修改本协议及本站上的各类规则。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;2&lt;/strong&gt;本协议内容中以黑体、加粗、下划线、斜体等方式显著标识的条款，请用户着重阅读。\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体, Lucida, Verdana, Helvetica, sans-serif;&quot;&gt;\n	&lt;strong&gt;3&lt;/strong&gt;您点击本协议下方的&quot;同意并注册&quot;按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。\n&lt;/p&gt;', '入驻协议', '1', '1', '2017-06-26 23:07:24', '0', '0', null, '0', '1', '0', '0', null);

-- ----------------------------
-- Table structure for ox_article_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_article_cats`;
CREATE TABLE `ox_article_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `catType` tinyint(4) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `catName` varchar(20) NOT NULL,
  `catSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`catId`),
  KEY `isShow` (`catType`,`dataFlag`,`isShow`) USING BTREE,
  KEY `parentId` (`dataFlag`,`parentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_article_cats
-- ----------------------------
INSERT INTO `ox_article_cats` VALUES ('1', '7', '1', '1', '支付方式', '2', '1', '2016-08-16 00:09:50');
INSERT INTO `ox_article_cats` VALUES ('5', '7', '1', '1', '购物指南', '0', '1', '2016-08-25 09:45:45');
INSERT INTO `ox_article_cats` VALUES ('6', '7', '1', '1', '商城快讯', '5', '1', '2016-09-06 15:21:09');
INSERT INTO `ox_article_cats` VALUES ('7', '0', '1', '1', '帮助中心', '6', '1', '2016-09-06 15:21:24');
INSERT INTO `ox_article_cats` VALUES ('8', '0', '0', '1', '商城快讯', '4', '1', '2016-09-06 15:21:51');
INSERT INTO `ox_article_cats` VALUES ('9', '7', '1', '1', '售后服务', '1', '1', '2016-09-06 15:22:00');
INSERT INTO `ox_article_cats` VALUES ('10', '7', '1', '1', '商务合作', '3', '1', '2016-09-06 15:24:35');
INSERT INTO `ox_article_cats` VALUES ('11', '8', '0', '1', '商城公告', '0', '1', '2016-09-26 23:04:18');
INSERT INTO `ox_article_cats` VALUES ('12', '8', '0', '1', '促销信息', '0', '1', '2016-09-26 23:04:25');
INSERT INTO `ox_article_cats` VALUES ('50', '0', '1', '1', '商家公告', '0', '1', '2017-06-29 14:48:16');
INSERT INTO `ox_article_cats` VALUES ('51', '50', '1', '1', '商家公告', '0', '1', '2017-06-29 14:48:16');
INSERT INTO `ox_article_cats` VALUES ('52', '0', '1', '1', '商家入驻指南', '0', '1', '2017-06-29 14:48:16');
INSERT INTO `ox_article_cats` VALUES ('53', '52', '1', '1', '商家入驻指南', '0', '1', '2017-06-29 14:48:16');

-- ----------------------------
-- Table structure for ox_attributes
-- ----------------------------
DROP TABLE IF EXISTS `ox_attributes`;
CREATE TABLE `ox_attributes` (
  `attrId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsCatId` int(11) NOT NULL DEFAULT '0',
  `goodsCatPath` varchar(100) NOT NULL,
  `attrName` varchar(100) NOT NULL,
  `attrType` tinyint(4) NOT NULL DEFAULT '0',
  `attrVal` text,
  `attrSort` int(11) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) DEFAULT '1',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`attrId`),
  KEY `shopId` (`goodsCatId`,`isShow`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_attributes
-- ----------------------------
INSERT INTO `ox_attributes` VALUES ('1', '47', '47_', '规格', '0', '', '0', '1', '1', '2019-02-22 19:29:51');
INSERT INTO `ox_attributes` VALUES ('2', '47', '47_', '储藏方式', '1', '冷藏,常温', '0', '1', '1', '2019-02-22 19:30:48');
INSERT INTO `ox_attributes` VALUES ('3', '47', '47_', '产地', '1', '广东,四川,云南,湖南,江西,辽宁,黑龙江,湖北,西藏,新疆,内蒙古,安徽', '0', '1', '1', '2019-02-22 19:32:04');
INSERT INTO `ox_attributes` VALUES ('4', '351', '334_348_351_', '分辨率', '2', '全高清FHD,高清HD,超高清FHD以上,标清SD', '0', '1', '1', '2019-02-23 10:36:54');
INSERT INTO `ox_attributes` VALUES ('5', '351', '334_348_351_', '尺寸', '2', '3.0英寸一下,3.1-4.5英寸,4.6-5.0英寸,5.1-5.5英寸,5.6英寸以上', '0', '1', '1', '2019-02-23 10:37:47');
INSERT INTO `ox_attributes` VALUES ('6', '334', '334_', '系统', '2', '安卓,苹果', '0', '1', '1', '2019-02-23 10:38:15');
INSERT INTO `ox_attributes` VALUES ('7', '351', '334_348_351_', 'CPU核数', '2', '单核,双核,四核,八核,十核', '0', '1', '1', '2019-02-23 10:39:00');
INSERT INTO `ox_attributes` VALUES ('8', '351', '334_348_351_', '运行内存', '1', '2GB,4GB,8GB,16GB,32GB', '0', '1', '1', '2019-02-23 10:39:28');
INSERT INTO `ox_attributes` VALUES ('9', '351', '334_348_351_', '机身内存', '1', '16GB,32GB,64GB,128GB', '0', '1', '1', '2019-02-23 10:40:24');

-- ----------------------------
-- Table structure for ox_banks
-- ----------------------------
DROP TABLE IF EXISTS `ox_banks`;
CREATE TABLE `ox_banks` (
  `bankId` int(11) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(50) NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`bankId`),
  KEY `bankFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_banks
-- ----------------------------
INSERT INTO `ox_banks` VALUES ('1', 'ffff', '-1', '2016-08-14 11:19:27');
INSERT INTO `ox_banks` VALUES ('17', '中国工商银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('18', '中国农业银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('19', '中国人民银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('20', '招商银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('21', '中兴银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('22', '交通银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('23', '深圳发展银行', '1', '2016-05-20 11:19:27');
INSERT INTO `ox_banks` VALUES ('24', '中国光大银行', '1', '2016-05-20 11:19:27');

-- ----------------------------
-- Table structure for ox_brands
-- ----------------------------
DROP TABLE IF EXISTS `ox_brands`;
CREATE TABLE `ox_brands` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) NOT NULL,
  `brandImg` varchar(150) NOT NULL,
  `brandDesc` text,
  `createTime` datetime NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `sortNo` int(11) DEFAULT '0',
  PRIMARY KEY (`brandId`),
  KEY `brandFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_brands
-- ----------------------------
INSERT INTO `ox_brands` VALUES ('1', '小米', 'upload/brands/2019-02/5c6fd56465c77.jpg', '小米公司正式成立于2010年4月，是一家专注于高端智能手机、互联网电视自主研发的创新型科技企业。主要由前谷歌、微软、摩托、金山等知名公司的顶尖人才组建。<br />\n<br />\n小米手机、MIUI、米聊、小米网、小米盒子、小米电视和小米路由器是小米公司旗下七大核心业务。“为发烧而生”是小米的产品理念。小米公司首创了用互联网模式开发手机操作系统的模式，将小米手机打造成全球首个互联网手机品牌。并通过互联网开发、营销和销售小米的产品。<br />\n<br />\n小米公司在机顶盒、互联网电视和路由器等领域也颠覆了传统市场。同时，小米公司也在积极打造小米生态链体系，力争全行业、全产业链都能达到共赢。<br />\n<br />\n小米团队<br />\n小米公司由著名天使投资人雷军带领创建。小米公司共计七名创始人，分别为创始人、董事长兼CEO雷军，联合创始人兼总裁林斌，联合创始人及副总裁黎万强、周光平、黄江吉、刘德、洪锋。<br />\n<br />\n小米人主要由来自微软、谷歌、金山、MOTO等国内外IT公司的资深员工所组成，小米人都喜欢创新、快速的互联网文化。小米拒绝平庸，小米人任何时 候都能让你感受到他们的创意。在小米团队中，没有冗长无聊的会议和流程，每一位小米人都在平等、轻松的伙伴式工作氛围中，享受与技术、产品、设计等各领域 顶尖人才共同创业成长的快意。<br />\n<br />\n小米名字由来<br />\n小米的LOGO是一个“MI”形，是Mobile Internet的缩写，代表小米是一家移动互联网公司。另外，小米的LOGO倒过来是一个心字，少一个点，意味着小米要让我们的用户省一点心。<br />', '2019-02-22 18:58:04', '1', '0');
INSERT INTO `ox_brands` VALUES ('2', '同仁堂', 'upload/brands/2019-02/5c6fd5d79a69d.png', '<p>\n	中国北京同仁堂（集团）有限责任公司，是中华老字号“同仁堂”所在公司的全称。同仁堂是中药行业著名的老字号，创建于清康熙八年（ 1669年），在三百多年的历史长河中，历代同仁堂人恪守“炮制虽繁必不敢省人工 品味虽贵必不敢减物力”的传统古训，树立“修合无人见 存心有天知”的自律意识，确保了同仁堂金字招牌的长盛不衰。自雍正元年（1721年）同仁堂正式供奉清皇宫御药房用药，历经八代皇帝，长达188年，造就了同仁堂人在制药过程中兢兢小心、精益求精的严细精神，其产品以“配方独特、选料上乘、工艺精湛、疗效显著”而享誉海内外。\n</p>\n同仁堂品牌誉满海内外，其优势得天独厚。同仁堂商标已参加了马德里协约国和巴黎公约国的注册，受到国际组织的保护，同时，在世界 50多个国家和地区办理了注册登记手续，并在台湾进行了第一个大陆商标的注册。同仁堂的著名商标和优秀品牌已成为同仁堂集团不断发展的特有优势。<br />', '2019-02-22 18:59:10', '1', '0');
INSERT INTO `ox_brands` VALUES ('3', '三只松鼠', 'upload/brands/2019-02/5c6fd65a654ed.jpg', '“三只松鼠”是由它的创始人兼CEO@松鼠老爹_章三疯（章燎原）先生带领一批由其来自全国的粉丝组成的创业团队创始的互联网食品品牌。章燎原先生在其任职业经理人期间曾10年打造出安徽最知名的农产品品牌，一年时间打造出网络知名坚果品牌。其较强的品牌营销理念以及草根出身的背景，使他能够迅速的掌握消费心理，在电商业界素有“电商品牌倡导者”的称号。三只松鼠便是其组建的一个全新的创业团队，这个团队正在逐渐扩大，从最初的5名创始成员发展到700人的规模，平均年龄在23岁，是一支极具生命力和挑战力的年轻团队 。', '2019-02-22 19:00:54', '1', '0');
INSERT INTO `ox_brands` VALUES ('4', 'Apple', 'upload/brands/2019-02/5c6fd6786cceb.png', '苹果公司（Apple Inc. ）是美国一家高科技公司。由史蒂夫·乔布斯、斯蒂夫·沃兹尼亚克和罗·韦恩(Ron Wayne)等人于1976年4月1日创立，并命名为美国苹果电脑公司（Apple Computer Inc. ），2007年1月9日更名为苹果公司，总部位于加利福尼亚州的库比蒂诺。<br />\n苹果公司1980年12月12日公开招股上市，2012年创下6235亿美元的市值记录，截至2014年6月，苹果公司已经连续三年成为全球市值最大公司。苹果公司在2016年世界500强排行榜中排名第9名。 [1]&nbsp; 2013年9月30日，在宏盟集团的“全球最佳品牌”报告中，苹果公司超过可口可乐成为世界最有价值品牌。2014年，苹果品牌超越谷歌（Google），成为世界最具价值品牌。<br />\n2016年9月8日凌晨1点，2016苹果秋季新品发布会在美国旧金山的比尔·格雷厄姆市政礼堂举行 [2]&nbsp; 。10月，苹果公司成为2016年全球100大最有价值品牌第一名。2017年1月6日早晨8点整，“红色星期五”促销活动在苹果官网正式上线，瞬间大量用户涌入官网进行抢购，仅两分钟所有参与活动的耳机便被抢光；2月，Brand Finance发布2017年度全球500强品牌榜单，苹果公司排名第二； [3]&nbsp; 6月7日，2017年《财富》美国500强排行榜发布，苹果公司排名第3位； [4]&nbsp; 7月20日，2017年世界500强排名第9位。 [5]&nbsp; 2018年12月18日，世界品牌实验室编制的《2018世界品牌500强》揭晓，苹果公司排名第3位。 [6]&nbsp;<br />\n2018年8月2日晚间，苹果盘中市值首次超过1万亿美元，股价刷新历史最高位至203.57美元，当前涨幅超过1%。<br />', '2019-02-22 19:01:56', '1', '0');
INSERT INTO `ox_brands` VALUES ('5', '华为', 'upload/brands/2019-02/5c6fd6b8d24af.png', '华为手机 隶属于华为消费者业务，作为华为三大核心业务之一， 华为消费者业务始于2003年底，经过十余年的发展，在中国、俄罗斯、德国、瑞典、印度及美国等地设立了16个研发中心。<br />\n2015年华为入选Brand Z全球最具价值品牌榜百强，位列科技领域品牌排名第16位。<br />\n2018年7月31日，国市场分析机构国际数据公司发布的初步数据显示，2018年第二季度，华为的出货量超过苹果手机，跃居全球第二位。<br />', '2019-02-22 19:03:28', '1', '0');
INSERT INTO `ox_brands` VALUES ('6', '维达', 'upload/brands/2019-02/5c6fd79537a7b.png', '维达集团为亚洲具规模的卫生用品企业。集团于1985年创建，多年来始终秉承「健康生活从维达开始」的生活理念，竭诚为每个家庭提供优质卫生护理用品和服务。维达集团于中国内地建有十大先进生产基地，于马来西亚有两大生产基地，台湾有一间生产基地，以及于澳洲一间后期加工工厂，以维达、得宝、多康、添宁、包大人、轻曲线、薇尔、 丽贝乐、Drypers等主要品牌发展生活用纸、失禁护理、女性护理及婴儿护理四大业务。<br />\n<br />\n维达集团于2014年整合爱生雅*中国内地、香港及澳门之纸巾及个人护理业务，为企业发展创下里程碑。2016年4月1日，维达集团整合爱生雅*马来西亚、台湾、南韩业务，进一步扩展业务至马来西亚、台湾、南韩、新加坡、泰国等亚洲地区，矢志发展成为亚洲领先的卫生用品公司。<br />\n<br />\n维达国际于2007年在香港联交所主板上市，股份代号3331。2017年，维达国际获纳入恒生可持续发展企业基准指数成份股。全球领先的卫生用品公司爱适瑞集团为其控股股东。<br />\n<br />\n*爱生雅集团（其卫生用品业务分拆，成为爱适瑞集团）<br />', '2019-02-22 19:05:58', '1', '0');
INSERT INTO `ox_brands` VALUES ('7', '鲜丰水果', 'upload/brands/2019-02/5c6fd8563ad6b.png', '鲜丰水果', '2019-02-22 19:09:54', '1', '0');
INSERT INTO `ox_brands` VALUES ('8', '优品水果', 'upload/brands/2019-02/5c6fd88b0ea78.png', '优品水果', '2019-02-22 19:10:12', '1', '0');
INSERT INTO `ox_brands` VALUES ('9', '新鲜鲜果', 'upload/brands/2019-02/5c6fd8a0b76a1.jpg', '新鲜鲜果', '2019-02-22 19:10:45', '1', '0');
INSERT INTO `ox_brands` VALUES ('10', '鲜果食光', 'upload/brands/2019-02/5c6fd8ef8638c.png', '鲜果食光', '2019-02-22 19:11:47', '1', '0');
INSERT INTO `ox_brands` VALUES ('11', '猫果', 'upload/brands/2019-02/5c6fd935d7c53.png', '猫果', '2019-02-22 19:13:04', '1', '0');
INSERT INTO `ox_brands` VALUES ('13', '花果山', 'upload/brands/2019-02/5c6fd9aad38b6.png', '花果山', '2019-02-22 19:15:00', '1', '0');

-- ----------------------------
-- Table structure for ox_carts
-- ----------------------------
DROP TABLE IF EXISTS `ox_carts`;
CREATE TABLE `ox_carts` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `isCheck` tinyint(4) NOT NULL DEFAULT '1',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `goodsSpecId` varchar(200) NOT NULL DEFAULT '0',
  `cartNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cartId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_carts
-- ----------------------------

-- ----------------------------
-- Table structure for ox_cash_configs
-- ----------------------------
DROP TABLE IF EXISTS `ox_cash_configs`;
CREATE TABLE `ox_cash_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetType` tinyint(4) NOT NULL DEFAULT '0',
  `targetId` int(11) NOT NULL,
  `accType` tinyint(4) NOT NULL DEFAULT '0',
  `accTargetId` int(11) NOT NULL DEFAULT '0',
  `accAreaId` int(11) DEFAULT NULL,
  `accNo` varchar(100) NOT NULL,
  `accUser` varchar(100) NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `targetType` (`targetType`,`targetId`,`dataFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_cash_configs
-- ----------------------------

-- ----------------------------
-- Table structure for ox_cash_draws
-- ----------------------------
DROP TABLE IF EXISTS `ox_cash_draws`;
CREATE TABLE `ox_cash_draws` (
  `cashId` int(11) NOT NULL AUTO_INCREMENT,
  `cashNo` varchar(50) NOT NULL,
  `targetType` tinyint(4) NOT NULL DEFAULT '0',
  `targetId` int(11) NOT NULL DEFAULT '0',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00',
  `accType` tinyint(4) NOT NULL DEFAULT '0',
  `accTargetName` varchar(100) DEFAULT NULL,
  `accAreaName` varchar(100) DEFAULT NULL,
  `accNo` varchar(100) NOT NULL,
  `accUser` varchar(100) DEFAULT NULL,
  `cashSatus` tinyint(4) NOT NULL DEFAULT '0',
  `cashRemarks` varchar(255) DEFAULT NULL,
  `cashConfigId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`cashId`),
  KEY `targetType` (`targetType`,`targetId`),
  KEY `cashNo` (`cashNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_cash_draws
-- ----------------------------

-- ----------------------------
-- Table structure for ox_cat_brands
-- ----------------------------
DROP TABLE IF EXISTS `ox_cat_brands`;
CREATE TABLE `ox_cat_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_cat_brands
-- ----------------------------
INSERT INTO `ox_cat_brands` VALUES ('1', '334', '1');
INSERT INTO `ox_cat_brands` VALUES ('8', '49', '2');
INSERT INTO `ox_cat_brands` VALUES ('9', '50', '2');
INSERT INTO `ox_cat_brands` VALUES ('10', '51', '2');
INSERT INTO `ox_cat_brands` VALUES ('11', '52', '2');
INSERT INTO `ox_cat_brands` VALUES ('12', '53', '2');
INSERT INTO `ox_cat_brands` VALUES ('13', '49', '3');
INSERT INTO `ox_cat_brands` VALUES ('14', '50', '3');
INSERT INTO `ox_cat_brands` VALUES ('15', '52', '3');
INSERT INTO `ox_cat_brands` VALUES ('16', '53', '3');
INSERT INTO `ox_cat_brands` VALUES ('17', '334', '4');
INSERT INTO `ox_cat_brands` VALUES ('18', '334', '5');
INSERT INTO `ox_cat_brands` VALUES ('19', '48', '6');
INSERT INTO `ox_cat_brands` VALUES ('20', '47', '7');
INSERT INTO `ox_cat_brands` VALUES ('21', '47', '8');
INSERT INTO `ox_cat_brands` VALUES ('22', '47', '9');
INSERT INTO `ox_cat_brands` VALUES ('23', '47', '10');
INSERT INTO `ox_cat_brands` VALUES ('24', '47', '11');
INSERT INTO `ox_cat_brands` VALUES ('25', '47', '13');

-- ----------------------------
-- Table structure for ox_cat_shops
-- ----------------------------
DROP TABLE IF EXISTS `ox_cat_shops`;
CREATE TABLE `ox_cat_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `catId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_cat_shops
-- ----------------------------
INSERT INTO `ox_cat_shops` VALUES ('40', '3', '334');
INSERT INTO `ox_cat_shops` VALUES ('41', '1', '47');
INSERT INTO `ox_cat_shops` VALUES ('42', '1', '48');
INSERT INTO `ox_cat_shops` VALUES ('43', '1', '49');
INSERT INTO `ox_cat_shops` VALUES ('44', '1', '50');
INSERT INTO `ox_cat_shops` VALUES ('45', '1', '51');
INSERT INTO `ox_cat_shops` VALUES ('46', '1', '54');
INSERT INTO `ox_cat_shops` VALUES ('47', '1', '334');
INSERT INTO `ox_cat_shops` VALUES ('48', '1', '52');
INSERT INTO `ox_cat_shops` VALUES ('49', '1', '53');
INSERT INTO `ox_cat_shops` VALUES ('50', '1', '55');
INSERT INTO `ox_cat_shops` VALUES ('51', '1', '335');
INSERT INTO `ox_cat_shops` VALUES ('52', '1', '56');
INSERT INTO `ox_cat_shops` VALUES ('53', '2', '47');
INSERT INTO `ox_cat_shops` VALUES ('54', '4', '334');
INSERT INTO `ox_cat_shops` VALUES ('55', '5', '334');
INSERT INTO `ox_cat_shops` VALUES ('56', '6', '334');
INSERT INTO `ox_cat_shops` VALUES ('57', '7', '52');
INSERT INTO `ox_cat_shops` VALUES ('58', '8', '52');
INSERT INTO `ox_cat_shops` VALUES ('59', '9', '48');
INSERT INTO `ox_cat_shops` VALUES ('60', '9', '54');
INSERT INTO `ox_cat_shops` VALUES ('61', '9', '55');
INSERT INTO `ox_cat_shops` VALUES ('66', '11', '47');
INSERT INTO `ox_cat_shops` VALUES ('67', '11', '48');
INSERT INTO `ox_cat_shops` VALUES ('68', '11', '49');
INSERT INTO `ox_cat_shops` VALUES ('69', '11', '50');
INSERT INTO `ox_cat_shops` VALUES ('70', '11', '51');
INSERT INTO `ox_cat_shops` VALUES ('71', '11', '54');
INSERT INTO `ox_cat_shops` VALUES ('72', '11', '55');
INSERT INTO `ox_cat_shops` VALUES ('73', '11', '335');
INSERT INTO `ox_cat_shops` VALUES ('74', '10', '49');
INSERT INTO `ox_cat_shops` VALUES ('75', '10', '50');
INSERT INTO `ox_cat_shops` VALUES ('76', '10', '51');
INSERT INTO `ox_cat_shops` VALUES ('77', '10', '52');
INSERT INTO `ox_cat_shops` VALUES ('78', '10', '53');
INSERT INTO `ox_cat_shops` VALUES ('80', '12', '47');

-- ----------------------------
-- Table structure for ox_charge_items
-- ----------------------------
DROP TABLE IF EXISTS `ox_charge_items`;
CREATE TABLE `ox_charge_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chargeMoney` int(11) DEFAULT '0',
  `giveMoney` decimal(11,1) DEFAULT '0.0',
  `itemSort` int(11) DEFAULT '0',
  `dataFlag` tinyint(4) DEFAULT '1',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_charge_items
-- ----------------------------

-- ----------------------------
-- Table structure for ox_crons
-- ----------------------------
DROP TABLE IF EXISTS `ox_crons`;
CREATE TABLE `ox_crons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cronName` varchar(100) NOT NULL,
  `cronCode` varchar(20) NOT NULL,
  `isEnable` tinyint(4) NOT NULL DEFAULT '0',
  `isRunning` tinyint(4) NOT NULL DEFAULT '0',
  `cronJson` text,
  `cronUrl` varchar(255) NOT NULL,
  `cronDesc` varchar(255) DEFAULT NULL,
  `cronCycle` tinyint(4) NOT NULL DEFAULT '0',
  `cronDay` tinyint(4) DEFAULT '1',
  `cronWeek` tinyint(4) DEFAULT '0',
  `cronHour` tinyint(4) DEFAULT NULL,
  `cronMinute` varchar(255) DEFAULT NULL,
  `runTime` varchar(20) DEFAULT NULL,
  `nextTime` varchar(20) DEFAULT NULL,
  `isRunSuccess` tinyint(4) NOT NULL DEFAULT '1',
  `author` varchar(255) DEFAULT NULL,
  `authorUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_crons
-- ----------------------------
INSERT INTO `ox_crons` VALUES ('2', '取消未付款订单', 'autoCancelNoPay', '0', '0', 'b:0;', 'admin/CronJobs/autoCancelNoPay.html', '取消超时未付款的订单', '2', '1', '0', '-1', '0,5,10,15,20,25,30,35,40,45,50,55', '2017-03-10 16:05:56', '2017-03-10 16:10:00', '1', 'WSTMart', 'http://www.wstmart.net');
INSERT INTO `ox_crons` VALUES ('3', '自动收货', 'autoReceive', '0', '0', 'b:0;', 'admin/CronJobs/autoReceive.html', '将超时未收货的订单设置为已收货', '2', '1', '0', '0', '0', '2017-03-10 16:05:56', '2017-03-10 00:00:00', '1', 'WSTMart', 'http://www.wstmart.net');
INSERT INTO `ox_crons` VALUES ('4', '自动好评', 'autoAppraise', '0', '0', 'b:0;', 'admin/CronJobs/autoAppraise.html', '将超时未评价的订单设置为好评', '2', '1', '0', '0', '0', '2017-03-10 16:05:56', '2017-03-10 00:00:00', '1', 'WSTMart', 'http://www.wstmart.net');
INSERT INTO `ox_crons` VALUES ('5', '发送队列消息', 'autoSendMsg', '0', '0', 'b:0;', 'admin/CronJobs/autoSendMsg.html', '定时发送队列消息', '2', '1', '0', '-1', '0,5,10,15,20,25,30,35,40,45,50,55', '2017-12-10 16:05:56', '2017-12-10 16:10:00', '1', 'WSTMart', 'http://www.wstmart.net');
INSERT INTO `ox_crons` VALUES ('6', '生成sitemap.xml', 'autoFileXml', '0', '0', 'b:0;', 'admin/CronJobs/autoFileXml.html', '定时生成sitemap.xml文件', '2', '1', '0', '-1', '0,5,10,15,20,25,30,35,40,45,50,55', '2017-12-10 16:05:56', '2017-12-10 16:10:00', '1', 'WSTMart', 'http://www.wstmart.net');

-- ----------------------------
-- Table structure for ox_datas
-- ----------------------------
DROP TABLE IF EXISTS `ox_datas`;
CREATE TABLE `ox_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL DEFAULT '0',
  `dataName` varchar(255) NOT NULL,
  `dataVal` varchar(255) NOT NULL,
  `dataSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) DEFAULT '1' COMMENT '数据有效标志1:有效 -1:无效',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_datas
-- ----------------------------
INSERT INTO `ox_datas` VALUES ('1', '1', '下错单', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('2', '1', '配送地址有误', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('3', '1', '我有更好的商品想买', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('4', '1', '商品信息与商家描述的不一致', '4', '0', '1');
INSERT INTO `ox_datas` VALUES ('5', '1', '其他', '5', '0', '1');
INSERT INTO `ox_datas` VALUES ('6', '2', '没有按照约定的时间送货', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('7', '2', '商品质量与描述的不一致', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('8', '2', '商品在运送过程中受到损坏', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('9', '2', '其他', '10000', '0', '1');
INSERT INTO `ox_datas` VALUES ('10', '3', '商品评价', 'appraises', '0', '1');
INSERT INTO `ox_datas` VALUES ('11', '3', '商城广告', 'adspic', '0', '1');
INSERT INTO `ox_datas` VALUES ('12', '3', '品牌', 'brands', '0', '1');
INSERT INTO `ox_datas` VALUES ('13', '3', '商城配置', 'sysconfigs', '0', '1');
INSERT INTO `ox_datas` VALUES ('14', '3', '临时目录', 'temp', '0', '1');
INSERT INTO `ox_datas` VALUES ('15', '3', '职员信息', 'staffs', '0', '1');
INSERT INTO `ox_datas` VALUES ('16', '3', '编辑器', 'image', '0', '1');
INSERT INTO `ox_datas` VALUES ('17', '3', '友情链接', 'friendlinks', '0', '1');
INSERT INTO `ox_datas` VALUES ('18', '3', '会员等级', 'userranks', '0', '1');
INSERT INTO `ox_datas` VALUES ('19', '3', '会员信息', 'users', '0', '1');
INSERT INTO `ox_datas` VALUES ('20', '3', '店铺认证', 'accreds', '0', '1');
INSERT INTO `ox_datas` VALUES ('21', '3', '店铺信息', 'shops', '0', '1');
INSERT INTO `ox_datas` VALUES ('22', '3', '商品信息', 'goods', '0', '1');
INSERT INTO `ox_datas` VALUES ('23', '3', '商家广告', 'shopconfigs', '0', '1');
INSERT INTO `ox_datas` VALUES ('24', '3', '订单投诉', 'complains', '0', '1');
INSERT INTO `ox_datas` VALUES ('25', '4', '配送超时', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('26', '4', '不喜欢/不想要', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('27', '4', '货物破损已拒签', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('28', '4', '空包裹', '4', '0', '1');
INSERT INTO `ox_datas` VALUES ('29', '4', '快递/物流一直未送达', '5', '0', '1');
INSERT INTO `ox_datas` VALUES ('30', '4', '快递/物流无跟踪记录', '6', '0', '1');
INSERT INTO `ox_datas` VALUES ('31', '4', '其他', '10000', '0', '1');
INSERT INTO `ox_datas` VALUES ('32', '5', 'PC版', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('33', '6', '用户注册信息', 'USER_REGISTER', '0', '1');
INSERT INTO `ox_datas` VALUES ('34', '6', '用户订单失效提醒信息', 'ORDER_USER_PAY_TIMEOUT', '0', '1');
INSERT INTO `ox_datas` VALUES ('35', '6', '商家订单失效提醒信息', 'ORDER_SHOP_PAY_TIMEOUT', '0', '1');
INSERT INTO `ox_datas` VALUES ('36', '6', '新订单提醒信息', 'ORDER_SUBMIT', '0', '1');
INSERT INTO `ox_datas` VALUES ('37', '6', '订单取消提醒信息', 'ORDER_CANCEL', '0', '1');
INSERT INTO `ox_datas` VALUES ('38', '6', '订单已发货提醒信息', 'ORDER_DELIVERY', '0', '1');
INSERT INTO `ox_datas` VALUES ('39', '6', '订单提醒发货信息', 'ORDER_REMINDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('40', '6', '订单拒收提醒信息', 'ORDER_REJECT', '0', '1');
INSERT INTO `ox_datas` VALUES ('41', '6', '订单已收货提醒信息', 'ORDER_RECEIVE', '0', '1');
INSERT INTO `ox_datas` VALUES ('42', '6', '申请退款提醒信息', 'ORDER_REFUND_CONFER', '0', '1');
INSERT INTO `ox_datas` VALUES ('43', '6', '退款成功提醒信息', 'ORDER_REFUND_SUCCESS', '0', '1');
INSERT INTO `ox_datas` VALUES ('44', '6', '退款失败提醒信息', 'ORDER_REFUND_FAIL', '0', '1');
INSERT INTO `ox_datas` VALUES ('45', '6', '商家订单补偿提醒信息', 'ORDER_SHOP_REFUND', '0', '1');
INSERT INTO `ox_datas` VALUES ('46', '6', '提现成功提醒信息', 'CASH_DRAW_SUCCESS', '0', '1');
INSERT INTO `ox_datas` VALUES ('47', '6', '提现失败提醒信息', 'CASH_DRAW_FAIL', '0', '1');
INSERT INTO `ox_datas` VALUES ('48', '6', '开店成功提醒', 'SHOP_OPEN_SUCCESS', '0', '1');
INSERT INTO `ox_datas` VALUES ('49', '6', '开店失败提醒', 'SHOP_OPEN_FAIL', '0', '1');
INSERT INTO `ox_datas` VALUES ('50', '7', '绑定邮箱提醒', 'EMAIL_BIND', '0', '1');
INSERT INTO `ox_datas` VALUES ('51', '7', '更改邮箱提醒', 'EMAIL_EDIT', '0', '1');
INSERT INTO `ox_datas` VALUES ('52', '7', '忘记密码', 'EMAIL_FOTGET', '0', '1');
INSERT INTO `ox_datas` VALUES ('53', '8', '绑定手机提醒', 'PHONE_BIND', '0', '1');
INSERT INTO `ox_datas` VALUES ('54', '8', '更改手机提醒', 'PHONE_EDIT', '0', '1');
INSERT INTO `ox_datas` VALUES ('55', '8', '忘记密码', 'PHONE_FOTGET', '0', '1');
INSERT INTO `ox_datas` VALUES ('57', '8', '会员开店成功提醒', 'PHONE_USER_SHOP_OPEN_SUCCESS', '0', '1');
INSERT INTO `ox_datas` VALUES ('58', '8', '开店失败提醒', 'PHONE_SHOP_OPEN_FAIL', '0', '1');
INSERT INTO `ox_datas` VALUES ('59', '8', '会员注册验证码', 'PHONE_USER_REGISTER_VERFIY', '0', '1');
INSERT INTO `ox_datas` VALUES ('61', '6', '商品审核通过', 'GOODS_ALLOW', '0', '1');
INSERT INTO `ox_datas` VALUES ('62', '6', '商品审核不通过', 'GOODS_REJECT', '0', '1');
INSERT INTO `ox_datas` VALUES ('63', '6', '订单自动发货提醒用户', 'ORDER_USER_AUTO_DELIVERY', '0', '1');
INSERT INTO `ox_datas` VALUES ('64', '6', '订单自动发货提醒商家', 'ORDER_SHOP_AUTO_DELIVERY', '0', '1');
INSERT INTO `ox_datas` VALUES ('65', '6', '订单评价提醒', 'ORDER_APPRAISES', '0', '1');
INSERT INTO `ox_datas` VALUES ('66', '6', '订单评价提醒', 'ORDER_APPRAISES', '0', '1');
INSERT INTO `ox_datas` VALUES ('67', '8', '忘记支付密码', 'PHONE_FOTGET_PAY', '0', '1');
INSERT INTO `ox_datas` VALUES ('68', '3', '商品分类', 'goodscats', '0', '1');
INSERT INTO `ox_datas` VALUES ('69', '10', '商品咨询', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('70', '10', '库存配送', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('71', '10', '支付', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('72', '10', '发票保修', '4', '0', '1');
INSERT INTO `ox_datas` VALUES ('73', '11', '普通执照', '0', '0', '1');
INSERT INTO `ox_datas` VALUES ('74', '11', '多证合一营业执照(统一社会信用代码)', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('75', '11', '多证合一营业执照(非统一社会信用代码)', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('76', '12', '大陆身份证', '0', '0', '1');
INSERT INTO `ox_datas` VALUES ('77', '12', '护照', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('78', '12', '港澳居民通行证', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('79', '12', '台湾居民通行证', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('80', '13', '一般纳税人', '0', '0', '1');
INSERT INTO `ox_datas` VALUES ('81', '13', '小规模纳税人', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('82', '13', '非增值纳税人', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('83', '7', '会员开店成功提醒', 'EMAIL_USER_SHOP_OPEN_SUCCESS', '0', '1');
INSERT INTO `ox_datas` VALUES ('84', '7', '会员开店失败提醒', 'EMAIL_SHOP_OPEN_FAIL', '0', '1');
INSERT INTO `ox_datas` VALUES ('85', '3', '文章', 'articles', '0', '1');
INSERT INTO `ox_datas` VALUES ('86', '8', '管理员-用户下单', 'PHONE_ADMIN_SUBMIT_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('87', '8', '管理员-支付订单', 'PHONE_ADMIN_PAY_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('88', '8', '管理员-取消订单', 'PHONE_ADMIN_CANCEL_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('89', '8', '管理员-拒收订单', 'PHONE_ADMIN_REJECT_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('90', '8', '管理员-申请退款', 'PHONE_ADMIN_REFUND_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('91', '8', '管理员-订单投诉', 'PHONE_ADMIN_COMPLAINT_ORDER', '0', '1');
INSERT INTO `ox_datas` VALUES ('92', '8', '管理员-申请提现', 'PHONE_ADMIN_CASH_DRAWS', '0', '1');
INSERT INTO `ox_datas` VALUES ('93', '14', '承诺的没有做到', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('94', '14', '未按约定时间发货', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('95', '14', '未按成交价格进行交易', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('96', '14', '恶意骚扰', '4', '0', '1');
INSERT INTO `ox_datas` VALUES ('97', '3', '商品举报', 'informsImg', '0', '1');
INSERT INTO `ox_datas` VALUES ('98', '15', '产品质量问题', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('99', '15', '出售禁售品', '2', '1', '1');
INSERT INTO `ox_datas` VALUES ('100', '6', '新投诉订单提醒', 'ORDER_NEW_COMPLAIN', '0', '1');
INSERT INTO `ox_datas` VALUES ('101', '6', '投诉仲裁结果通知', 'ORDER_HANDLED_COMPLAIN', '0', '1');
INSERT INTO `ox_datas` VALUES ('102', '6', '新结算单提醒', 'SHOP_SETTLEMENT', '0', '1');
INSERT INTO `ox_datas` VALUES ('103', '6', '新订单已支付提醒', 'ORDER_HASPAY', '0', '1');
INSERT INTO `ox_datas` VALUES ('104', '6', '订单自动确认收货提醒', 'ORDER_ATUO_RECEIVE', '0', '1');
INSERT INTO `ox_datas` VALUES ('105', '6', '商品举报提醒', 'SHOP_GOODS_INFORM', '0', '1');
INSERT INTO `ox_datas` VALUES ('106', '16', '商品审核提醒', '1', '0', '1');
INSERT INTO `ox_datas` VALUES ('107', '16', '新订单提醒', '2', '0', '1');
INSERT INTO `ox_datas` VALUES ('108', '16', '订单投诉提醒', '3', '0', '1');
INSERT INTO `ox_datas` VALUES ('109', '16', '订单失效提醒', '4', '0', '1');
INSERT INTO `ox_datas` VALUES ('110', '16', '退货退款提醒', '5', '0', '1');
INSERT INTO `ox_datas` VALUES ('111', '16', '结算消息提醒', '6', '0', '1');
INSERT INTO `ox_datas` VALUES ('112', '16', '订单评价提醒', '7', '0', '1');
INSERT INTO `ox_datas` VALUES ('113', '16', '收货提醒', '8', '0', '1');
INSERT INTO `ox_datas` VALUES ('114', '16', '商品举报提醒', '9', '0', '1');
INSERT INTO `ox_datas` VALUES ('115', '17', '默认分类', '0', '0', '1');

-- ----------------------------
-- Table structure for ox_data_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_data_cats`;
CREATE TABLE `ox_data_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) NOT NULL,
  `dataFlag` tinyint(4) DEFAULT '1' COMMENT '数据有效标志1:有效 -1:无效',
  `catCode` varchar(255) NOT NULL COMMENT '数据分类代码',
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_data_cats
-- ----------------------------
INSERT INTO `ox_data_cats` VALUES ('1', '订单取消原因', '1', 'ORDER_CANCEL');
INSERT INTO `ox_data_cats` VALUES ('2', '订单拒收原因', '1', 'ORDER_REJECT');
INSERT INTO `ox_data_cats` VALUES ('3', '上传目录列表', '1', 'UPLOAD_DIRS');
INSERT INTO `ox_data_cats` VALUES ('4', '申请退款原因', '1', 'REFUND_TYPE');
INSERT INTO `ox_data_cats` VALUES ('5', '广告类型', '1', 'ADS_TYPE');
INSERT INTO `ox_data_cats` VALUES ('6', '系统消息模板', '1', 'TEMPLATE_SYS');
INSERT INTO `ox_data_cats` VALUES ('7', '邮件模板', '1', 'TEMPLATE_EMAIL');
INSERT INTO `ox_data_cats` VALUES ('8', '短信模板', '1', 'TEMPLATE_SMS');
INSERT INTO `ox_data_cats` VALUES ('10', '购买咨询', '1', 'COUSULT_TYPE');
INSERT INTO `ox_data_cats` VALUES ('11', '执照类型', '1', 'LICENSE_TYPE');
INSERT INTO `ox_data_cats` VALUES ('12', '法人证件类型', '1', 'LEGAL_LICENSE');
INSERT INTO `ox_data_cats` VALUES ('13', '纳税人类型', '1', 'TAXPAYER_TYPE');
INSERT INTO `ox_data_cats` VALUES ('14', '订单投诉原因', '1', 'ORDER_COMPLAINT');
INSERT INTO `ox_data_cats` VALUES ('15', '违规举报原因', '1', 'INFORMS_TYPE');
INSERT INTO `ox_data_cats` VALUES ('16', '店铺接收消息权限', '1', 'SHOP_MESSAGE');
INSERT INTO `ox_data_cats` VALUES ('17', '店铺风格管理分类', '1', 'SHOPSTYLES_CAT');

-- ----------------------------
-- Table structure for ox_express
-- ----------------------------
DROP TABLE IF EXISTS `ox_express`;
CREATE TABLE `ox_express` (
  `expressId` int(11) NOT NULL AUTO_INCREMENT,
  `expressName` varchar(50) NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `expressCode` varchar(50) DEFAULT '',
  PRIMARY KEY (`expressId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_express
-- ----------------------------

-- ----------------------------
-- Table structure for ox_favorites
-- ----------------------------
DROP TABLE IF EXISTS `ox_favorites`;
CREATE TABLE `ox_favorites` (
  `favoriteId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `favoriteType` tinyint(4) NOT NULL DEFAULT '0',
  `targetId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`favoriteId`),
  UNIQUE KEY `favoriteId` (`userId`,`favoriteType`,`targetId`) USING BTREE,
  KEY `userId` (`userId`,`favoriteType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for ox_friendlinks
-- ----------------------------
DROP TABLE IF EXISTS `ox_friendlinks`;
CREATE TABLE `ox_friendlinks` (
  `friendlinkId` int(11) NOT NULL AUTO_INCREMENT,
  `friendlinkIco` varchar(150) DEFAULT '',
  `friendlinkName` varchar(50) NOT NULL DEFAULT '',
  `friendlinkUrl` varchar(150) NOT NULL DEFAULT '',
  `friendlinkSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`friendlinkId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_friendlinks
-- ----------------------------
INSERT INTO `ox_friendlinks` VALUES ('1', '', 'WSTMart多商户商城', 'http://www.wstmart.net', '0', '1', '2016-10-20 11:53:56');
INSERT INTO `ox_friendlinks` VALUES ('2', '', '商淘软件', 'http://www.shangtao.net', '3', '1', '2016-10-20 11:53:56');
INSERT INTO `ox_friendlinks` VALUES ('3', '', 'WSTMall社区O2O系统', 'http://www.wstmall.net', '4', '1', '2016-10-20 11:53:56');
INSERT INTO `ox_friendlinks` VALUES ('4', '', 'WSTMart论坛', 'http://bbs.shangtao.net', '2', '1', '2016-10-20 11:53:56');
INSERT INTO `ox_friendlinks` VALUES ('5', '', 'WSTMall论坛', 'http://bbs.shangtao.net', '5', '1', '2016-10-20 11:53:56');

-- ----------------------------
-- Table structure for ox_goods
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods`;
CREATE TABLE `ox_goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsSn` varchar(20) NOT NULL,
  `productNo` varchar(20) NOT NULL,
  `goodsName` varchar(200) NOT NULL,
  `goodsImg` varchar(150) NOT NULL,
  `shopId` int(11) NOT NULL,
  `goodsType` tinyint(4) NOT NULL DEFAULT '0',
  `marketPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `shopPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `warnStock` int(11) NOT NULL DEFAULT '0',
  `goodsStock` int(11) NOT NULL DEFAULT '0',
  `goodsUnit` char(10) NOT NULL,
  `goodsTips` text,
  `isSale` tinyint(4) NOT NULL DEFAULT '1',
  `isBest` tinyint(4) NOT NULL DEFAULT '0',
  `isHot` tinyint(4) NOT NULL DEFAULT '0',
  `isNew` tinyint(4) NOT NULL DEFAULT '0',
  `isRecom` tinyint(4) DEFAULT '0',
  `goodsCatIdPath` varchar(255) DEFAULT NULL,
  `goodsCatId` int(11) NOT NULL,
  `shopCatId1` int(11) NOT NULL,
  `shopCatId2` int(11) NOT NULL,
  `brandId` int(11) DEFAULT '0',
  `goodsDesc` text NOT NULL,
  `goodsStatus` tinyint(4) NOT NULL DEFAULT '0',
  `saleNum` int(11) NOT NULL DEFAULT '0',
  `saleTime` datetime NOT NULL,
  `visitNum` int(11) DEFAULT '0',
  `appraiseNum` int(11) DEFAULT '0',
  `isSpec` tinyint(4) NOT NULL DEFAULT '0',
  `gallery` text,
  `goodsSeoKeywords` varchar(200) DEFAULT NULL,
  `illegalRemarks` varchar(255) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `isFreeShipping` tinyint(4) DEFAULT '0',
  `goodsSerachKeywords` text,
  PRIMARY KEY (`goodsId`),
  KEY `shopId` (`shopId`) USING BTREE,
  KEY `goodsStatus` (`goodsStatus`,`dataFlag`,`isSale`) USING BTREE,
  KEY `goodsCatIdPath` (`goodsCatIdPath`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods
-- ----------------------------
INSERT INTO `ox_goods` VALUES ('1', '155083444927602', '155083444927608', '四川果冻橙6个约180g/个', 'upload/goods/2019-02/5c6fdbb43c60b.jpg', '1', '0', '45.00', '38.00', '100', '10000', '袋', '皮薄筋络少 酸甜比刚刚好', '1', '1', '1', '0', '0', '47_61_72_', '72', '1', '2', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c6fdc5a713c6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fdc68dc5f0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fdc7f17e75.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:37:42', '1', '0', '0', 'upload/goods/2019-02/5c6fdbcfb9c31.jpg,upload/goods/2019-02/5c6fdbcfd78c8.jpg', '四川果冻橙6个约180g/个', null, '1', '2019-02-22 19:27:04', '0', '四川果冻橙6个约180g/个,常温,四川');
INSERT INTO `ox_goods` VALUES ('2', '155083493976803', '155083493976804', '鲜丰水果 秭归脐橙 中华红橙 9斤家庭装 单果130g—220g 4500g', 'upload/goods/2019-02/5c6fdf5443b8b.jpg', '1', '0', '70.00', '59.90', '10', '1000', '袋子', '七公主果园 秭归脐橙 中华红橙 9斤家庭装 单果130g—220g 4500g', '1', '0', '1', '1', '1', '47_61_72_', '72', '1', '2', '7', '<img src=\"${DOMAIN}/upload/image/2019-02/5c6fe04420022.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:39:03', '0', '0', '0', 'upload/goods/2019-02/5c6fdfa7be39b.jpg,upload/goods/2019-02/5c6fdfa811224.jpg', '七公主果园 秭归脐橙 中华红橙 9斤家庭装 单果130g—220g 4500g', null, '1', '2019-02-22 19:43:07', '0', '鲜丰水果 秭归脐橙 中华红橙 9斤家庭装 单果130g—220g 4500g,常温,广东,江西');
INSERT INTO `ox_goods` VALUES ('3', '155083608286049', '155083608286045', '红颜奶油草莓 约重500g/15-20颗 新鲜水果', 'upload/goods/2019-02/5c6fe180538b0.jpg', '1', '0', '60.00', '49.90', '10', '10000', '盒', '', '1', '0', '1', '0', '1', '47_61_251_', '251', '1', '2', '7', '<img src=\"${DOMAIN}/upload/image/2019-02/5c6fe1e1e7a27.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fe1e22aeac.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:37:57', '0', '0', '0', '', '', null, '1', '2019-02-22 19:51:08', '0', '红颜奶油草莓 约重500g/15-20颗 新鲜水果,常温,广东,四川,云南,湖南');
INSERT INTO `ox_goods` VALUES ('4', '155083629928386', '155083629928389', '智利进口车厘子J级 1磅装 果径约26-28mm 新鲜水果', 'upload/goods/2019-02/5c6fe328ca438.jpg', '1', '0', '100.00', '79.00', '10', '1000', '盒', '', '1', '1', '1', '0', '1', '47_61_72_', '72', '1', '2', '8', '<img src=\"${DOMAIN}/upload/image/2019-02/5c6fe36f07aff.png\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fe36f58422.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fe36fdc589.jpg\" alt=\"\" />', '1', '0', '2019-02-22 19:56:55', '1', '0', '0', 'upload/goods/2019-02/5c6fe3845fa1d.jpg,upload/goods/2019-02/5c6fe38483475.jpg', '智利进口车厘子J级 1磅装 果径约26-28mm 新鲜水果', null, '1', '2019-02-22 19:56:55', '0', '智利进口车厘子J级 1磅装 果径约26-28mm 新鲜水果');
INSERT INTO `ox_goods` VALUES ('5', '155083696154773', '155083696154778', 'Zespri佳沛 新西兰阳光金奇异果 6个装 经典36-39号果 单果重约80-100g 新鲜水果', 'upload/goods/2019-02/5c6fe4e52497d.jpg', '12', '0', '700.00', '59.90', '10', '10000', '箱', '', '1', '1', '1', '1', '0', '47_61_251_', '251', '41', '43', '13', '<img src=\"${DOMAIN}/upload/image/2019-02/5c6fe569827b9.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fe569a4e89.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c6fe56a345e0.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:47:31', '0', '0', '0', 'upload/goods/2019-02/5c6fe57fe08ba.jpg,upload/goods/2019-02/5c6fe5801a8cc.jpg,upload/goods/2019-02/5c6fe580440e6.jpg', 'Zespri佳沛 新西兰阳光金奇异果 6个装 经典36-39号果 单果重约80-100g 新鲜水果', null, '1', '2019-02-22 20:05:35', '0', 'Zespri佳沛 新西兰阳光金奇异果 6个装 经典36-39号果 单果重约80-100g 新鲜水果,常温,云南,湖南,江西');
INSERT INTO `ox_goods` VALUES ('6', '155084645314975', '155084645314978', '花果山 云南甜玉米 水果玉米 约2.5kg 6-9根 烧烤食材 新鲜蔬菜', 'upload/goods/2019-02/5c7009f97fed8.jpg', '12', '0', '35.00', '26.80', '10', '10000', '包', '', '1', '1', '1', '1', '1', '47_71_320_', '320', '45', '49', '10', '花果山 云南甜玉米 水果玉米', '1', '0', '2019-02-23 15:48:18', '1', '0', '0', 'upload/goods/2019-02/5c7009ff963ac.jpg,upload/goods/2019-02/5c7009ffbf7de.jpg,upload/goods/2019-02/5c7009ffe8c10.jpg', '26.8', null, '1', '2019-02-22 22:43:09', '0', '花果山 云南甜玉米 水果玉米 约2.5kg 6-9根 烧烤食材 新鲜蔬菜,冷藏,辽宁,黑龙江,湖北,西藏,新疆,内蒙古,安徽');
INSERT INTO `ox_goods` VALUES ('7', '155084660300312', '155084660300312', '福建六鳌红薯 蜜薯 地瓜 2.5kg 红蜜薯 单果重约150g-500g 新鲜蔬菜', 'upload/goods/2019-02/5c700ac15dcb8.jpg', '12', '0', '30.00', '26.90', '10', '10000', '公斤', '新鲜上架，优惠促销', '1', '1', '1', '1', '1', '47_62_256_', '256', '45', '49', '13', '<img src=\"${DOMAIN}/upload/image/2019-02/5c700b4cc2c6c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c700b5af03eb.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c700b5fddc24.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:48:05', '1', '0', '0', 'upload/goods/2019-02/5c700b686f485.jpg,upload/goods/2019-02/5c700b68936ae.jpg,upload/goods/2019-02/5c700b68b3e3d.jpg', '福建六鳌红薯 蜜薯 地瓜 2.5kg 红蜜薯 单果重约150g-500g 新鲜蔬菜', null, '1', '2019-02-22 22:47:07', '0', '福建六鳌红薯 蜜薯 地瓜 2.5kg 红蜜薯 单果重约150g-500g 新鲜蔬菜,冷藏,常温,广东,江西,辽宁,湖北');
INSERT INTO `ox_goods` VALUES ('8', '155084691120340', '155084691120342', '花果山 17.5°橙 3kg装 铂金果 新鲜水果礼盒', 'upload/goods/2019-02/5c700bc9270ce.jpg', '12', '0', '50.00', '45.90', '10', '10000', '箱', '花果山农特产新鲜上市，优惠多多', '1', '1', '0', '0', '0', '47_61_72_', '72', '41', '42', '13', '17.5°橙 3kg装 铂金果 新鲜水果礼盒', '1', '0', '2019-02-23 15:46:36', '1', '0', '0', 'upload/goods/2019-02/5c700bd0e41fb.jpg,upload/goods/2019-02/5c700bd1141e3.jpg,upload/goods/2019-02/5c700bd13af04.jpg,upload/goods/2019-02/5c700be42152d.jpg', '17.5°橙 3kg装 铂金果 新鲜水果礼盒', null, '1', '2019-02-22 22:50:57', '1', '花果山 17.5°橙 3kg装 铂金果 新鲜水果礼盒,冷藏,广东,四川,云南,湖南,江西');
INSERT INTO `ox_goods` VALUES ('9', '155084738764170', '155084738764175', '花果山 甜鸭梨 6-8个 净重约1.8kg 新鲜水果', 'upload/goods/2019-02/5c700dece16ee.jpg', '12', '0', '35.00', '24.90', '10', '10000', '公斤', '产地直销，优惠多多', '1', '0', '0', '1', '1', '47_61_76_', '76', '41', '44', '13', '<img src=\"${DOMAIN}/upload/image/2019-02/5c700e6723a77.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c700e679b4a3.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c700e6824280.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c700e68a5cd6.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:47:52', '0', '0', '0', 'upload/goods/2019-02/5c700e7648f99.jpg,upload/goods/2019-02/5c700e76af851.jpg,upload/goods/2019-02/5c700e771019d.jpg', '甜鸭梨 6-8个 净重约1.8kg 新鲜水果', null, '1', '2019-02-22 23:00:12', '0', '花果山 甜鸭梨 6-8个 净重约1.8kg 新鲜水果,冷藏,广东,四川,云南,湖南');
INSERT INTO `ox_goods` VALUES ('10', '155084761584559', '155084761584651', '花果山 烟台红富士苹果 12个 净重2.1kg以上 单果160-190g 一二级混装 自营水果', 'upload/goods/2019-02/5c700ec8de13e.jpg', '12', '0', '41.00', '34.90', '10', '10000', '箱', '农场自营水果，量大价格更优惠', '1', '1', '0', '0', '0', '47_61_73_', '73', '41', '50', '13', '产地直销，价格优势...', '1', '0', '2019-02-23 15:46:11', '0', '0', '0', 'upload/goods/2019-02/5c700ec5be8a3.jpg,upload/goods/2019-02/5c700ec631ebc.jpg,upload/goods/2019-02/5c700ec69d1ad.jpg,upload/goods/2019-02/5c700ec6f30c1.jpg', '烟台红富士苹果 12个 净重2.1kg以上 单果160-190g 一二级混装', null, '1', '2019-02-22 23:03:21', '0', '花果山 烟台红富士苹果 12个 净重2.1kg以上 单果160-190g 一二级混装 自营水果,常温,新疆,安徽');
INSERT INTO `ox_goods` VALUES ('11', '155084782094837', '155084782094835', '黄冠梨4个 单果约250g-300g 新鲜水果', 'upload/goods/2019-02/5c700f8c723d4.jpg', '12', '0', '35.00', '299.00', '10', '10000', '袋', '上市优品黄冠梨，新鲜品尝', '1', '0', '0', '1', '1', '47_61_249_', '249', '41', '44', '13', '上市优品，新鲜品尝', '1', '0', '2019-02-23 15:47:43', '0', '0', '0', 'upload/goods/2019-02/5c700f929a1ed.jpg,upload/goods/2019-02/5c700f92dd04c.jpg,upload/goods/2019-02/5c700f9328d8b.jpg', '黄冠梨4个 单果约250g-300g 新鲜水果', null, '1', '2019-02-22 23:06:16', '0', '黄冠梨4个 单果约250g-300g 新鲜水果,冷藏,湖南,辽宁,新疆');
INSERT INTO `ox_goods` VALUES ('12', '155084798412816', '155084798412810', '花果山 球生菜 约400g 火锅食材 新鲜蔬菜', 'upload/goods/2019-02/5c70102662730.jpg', '12', '0', '13.00', '10.80', '10', '10000', '包', '农产新菜上市，送货到家', '1', '0', '0', '1', '0', '47_62_254_', '254', '45', '49', '13', '农产新菜上市，送货到家', '1', '0', '2019-02-23 15:46:26', '0', '0', '0', 'upload/goods/2019-02/5c70102c6a971.jpg,upload/goods/2019-02/5c70102cbd9a4.jpg,upload/goods/2019-02/5c70102d17977.jpg', '花果山 球生菜 约400g 火锅食材 新鲜蔬菜', null, '1', '2019-02-22 23:08:29', '1', '花果山 球生菜 约400g 火锅食材 新鲜蔬菜,冷藏,广东,四川,云南,湖南,江西,辽宁,黑龙江,湖北,西藏,新疆,内蒙古,安徽');
INSERT INTO `ox_goods` VALUES ('13', '155084813931944', '155084813931946', '上海青 小油菜 小青菜 约400g 火锅食材 新鲜蔬菜', 'upload/goods/2019-02/5c7010b22b1bd.jpg', '12', '0', '10.00', '7.90', '10', '10000', '袋', '农产直销，送货到家', '1', '1', '0', '1', '0', '47_62_254_', '254', '45', '49', '13', '农产直销，送货到家', '1', '0', '2019-02-23 15:47:10', '0', '0', '0', 'upload/goods/2019-02/5c7010bb25dce.jpg,upload/goods/2019-02/5c7010bad8d07.jpg', '上海青 小油菜 小青菜 约400g 火锅食材 新鲜蔬菜', null, '1', '2019-02-22 23:10:53', '0', '上海青 小油菜 小青菜 约400g 火锅食材 新鲜蔬菜,冷藏,常温,四川,云南');
INSERT INTO `ox_goods` VALUES ('14', '155084830858516', '155084830858511', '花果山 香菇 蘑菇 约400g 火锅食材 新鲜蔬菜', 'upload/goods/2019-02/5c701163780f1.jpg', '12', '0', '20.00', '15.80', '10', '10000', '袋', '新品上市，价格尝鲜', '1', '0', '0', '1', '0', '47_62_255_', '255', '45', '48', '0', '新品上市，价格尝鲜', '1', '0', '2019-02-23 15:47:17', '1', '0', '0', 'upload/goods/2019-02/5c701167f1372.jpg,upload/goods/2019-02/5c7011684690b.jpg,upload/goods/2019-02/5c70116889f3b.jpg', '香菇 蘑菇 约400g 火锅食材 新鲜蔬菜', null, '1', '2019-02-22 23:13:36', '0', '花果山 香菇 蘑菇 约400g 火锅食材 新鲜蔬菜,冷藏,云南,湖南,江西,黑龙江,湖北');
INSERT INTO `ox_goods` VALUES ('15', '155084851974657', '155084851974653', '花果山 农家新鲜大蒜 2500g装 蒜头', 'upload/goods/2019-02/5c70120f821b0.jpg', '12', '0', '22.00', '20.50', '10', '10000', '斤', '本月新品上市，场地直销，前100名返利10%', '1', '1', '0', '0', '0', '47_62_256_', '256', '45', '49', '13', '本月新品上市，场地直销，前100名返利10%', '1', '0', '2019-02-23 15:47:24', '1', '0', '0', 'upload/goods/2019-02/5c7012139a16a.jpg,upload/goods/2019-02/5c701213da4d1.jpg', '农家新鲜大蒜 2500g装 蒜头', null, '1', '2019-02-22 23:17:19', '0', '花果山 农家新鲜大蒜 2500g装 蒜头,常温,西藏,内蒙古,安徽');
INSERT INTO `ox_goods` VALUES ('16', '155084880330968', '155084880330964', '花果山 杭椒 约300g 自营蔬菜', 'upload/goods/2019-02/5c70136f86c0e.jpg', '12', '0', '10.00', '8.50', '10', '10000', '袋', '农场品上市，价格优惠', '1', '0', '0', '1', '0', '47_62_252_', '252', '45', '49', '0', '农场品上市，价格优惠', '1', '0', '2019-02-23 15:45:59', '0', '0', '0', 'upload/goods/2019-02/5c701375924ff.jpg,upload/goods/2019-02/5c701375d62ff.jpg', '花果山 杭椒 约300g 自营蔬菜', null, '1', '2019-02-22 23:22:22', '0', '花果山 杭椒 约300g 自营蔬菜,常温,广东,四川,云南,湖南,江西,辽宁');
INSERT INTO `ox_goods` VALUES ('17', '155084916882945', '155084916882946', '广西荔浦砂糖桔 砂糖橘 甜橘子 2.5kg礼盒装 新鲜水果', 'upload/goods/2019-02/5c7014c7ac414.jpg', '2', '0', '58.00', '49.90', '10', '10000', '箱', '广西荔浦砂糖桔 砂糖橘 送礼佳品', '1', '1', '0', '0', '1', '47_61_72_', '72', '54', '55', '9', '广西荔浦砂糖桔 砂糖橘 送礼佳品', '1', '0', '2019-02-22 23:28:10', '0', '0', '0', 'upload/goods/2019-02/5c7014cdec4ea.jpg,upload/goods/2019-02/5c7014ce431f4.jpg,upload/goods/2019-02/5c7014ce9084e.jpg,upload/goods/2019-02/5c7014ced4a36.jpg', '广西荔浦砂糖桔 砂糖橘 甜橘子 2.5kg礼盒装 新鲜水果', null, '1', '2019-02-22 23:28:10', '0', '广西荔浦砂糖桔 砂糖橘 甜橘子 2.5kg礼盒装 新鲜水果');
INSERT INTO `ox_goods` VALUES ('18', '155084929348686', '155084929348685', '红旗坡 新疆阿克苏苹果 果径80mm-85mm 约5kg 新鲜水果', 'upload/goods/2019-02/5c70153c13a38.jpg', '2', '0', '120.00', '99.00', '10', '10000', '箱', '自家果园直销，价格优势', '1', '0', '1', '1', '1', '47_61_73_', '73', '54', '56', '9', '红旗坡 新疆阿克苏苹果 果径80mm-85mm 约5kg 新鲜水果', '1', '0', '2019-02-22 23:30:21', '0', '0', '0', 'upload/goods/2019-02/5c70154136226.jpg,upload/goods/2019-02/5c70154173e7d.jpg', '红旗坡 新疆阿克苏苹果 果径80mm-85mm 约5kg 新鲜水果', null, '1', '2019-02-22 23:29:49', '0', '红旗坡 新疆阿克苏苹果 果径80mm-85mm 约5kg 新鲜水果');
INSERT INTO `ox_goods` VALUES ('19', '155084948775196', '155084948775195', '进口 牛油果 6个装 单果重约130-180g 新鲜水果', 'upload/goods/2019-02/5c701600afae0.jpg', '2', '0', '50.00', '39.90', '10', '10000', '袋', '场地直销，买两箱送一箱', '1', '0', '0', '1', '1', '47_61_76_', '76', '51', '52', '9', '进口 牛油果 6个装 单果重约130-180g 新鲜水果', '1', '0', '2019-02-22 23:34:11', '0', '0', '0', 'upload/goods/2019-02/5c7016727f27a.jpg,upload/goods/2019-02/5c701672d5576.jpg', '进口 牛油果 6个装 单果重约130-180g 新鲜水果', null, '1', '2019-02-22 23:34:00', '0', '进口 牛油果 6个装 单果重约130-180g 新鲜水果');
INSERT INTO `ox_goods` VALUES ('20', '155084971919785', '155084971919784', '九家原 越南进口大玉芒4斤 单果约180-230g', 'upload/goods/2019-02/5c7016c13f501.jpg', '2', '0', '25.00', '19.90', '10', '10000', '袋', '买三送一，买越多送越多，多买多送...', '1', '0', '1', '1', '1', '47_61_250_', '250', '51', '52', '9', '买三送一，买越多送越多，多买多送...', '1', '0', '2019-02-22 23:36:59', '0', '0', '0', 'upload/goods/2019-02/5c7016c6e911f.jpg,upload/goods/2019-02/5c7016c7561a6.jpg', '九家原 越南进口大玉芒4斤 单果约180-230g', null, '1', '2019-02-22 23:36:37', '1', '九家原 越南进口大玉芒4斤 单果约180-230g');
INSERT INTO `ox_goods` VALUES ('21', '155085021605526', '155085021605526', '三只松鼠 开口松子休闲零食坚果炒货东北手剥红松子 100g', 'upload/goods/2019-02/5c7018f657ceb.png', '7', '0', '45.00', '39.90', '10', '10000', '包', '满199减120，买的越多优惠越多', '1', '0', '0', '1', '0', '52_189_199_', '199', '60', '61', '3', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70196837a18.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70196892b35.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70196939992.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701969a6bc3.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:14:05', '1', '0', '0', 'upload/goods/2019-02/5c70194e6f2de.jpg,upload/goods/2019-02/5c70194eb196d.jpg,upload/goods/2019-02/5c70194ef1504.jpg', '', null, '1', '2019-02-22 23:46:53', '0', '三只松鼠 开口松子休闲零食坚果炒货东北手剥红松子 100g');
INSERT INTO `ox_goods` VALUES ('22', '155085043559648', '155085043559647', '三只松鼠草莓干蜜饯果干果脯办公室休闲零食水果干106g/袋', 'upload/goods/2019-02/5c7019ba87e1d.jpg', '7', '0', '30.00', '25.90', '10', '10000', '袋', '新品上市，满100包邮', '1', '0', '1', '1', '0', '52_189_203_', '203', '57', '59', '3', '<img src=\"${DOMAIN}/upload/image/2019-02/5c701a08f0484.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701a09613dc.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701a09ddda2.jpg\" alt=\"\" />', '1', '0', '2019-02-22 23:49:34', '1', '0', '0', 'upload/goods/2019-02/5c7019c132099.jpg,upload/goods/2019-02/5c7019c174b11.jpg,upload/goods/2019-02/5c7019c1b4e78.jpg', '三只松鼠草莓干蜜饯果干果脯办公室休闲零食水果干106g/袋', null, '1', '2019-02-22 23:49:34', '1', '三只松鼠草莓干蜜饯果干果脯办公室休闲零食水果干106g/袋');
INSERT INTO `ox_goods` VALUES ('23', '155085057770371', '155085057770375', '三只松鼠坚果炒货零食特产每日坚果开心果100g/袋', 'upload/goods/2019-02/5c701a5755dbd.jpg', '7', '0', '45.00', '39.90', '10', '10000', '包', '', '1', '0', '1', '0', '0', '52_189_199_', '199', '60', '61', '3', '三只松鼠坚果炒货零食特产每日坚果开心果100g/袋', '1', '0', '2019-02-22 23:51:37', '0', '0', '0', 'upload/goods/2019-02/5c701a5f61b09.jpg,upload/goods/2019-02/5c701a5fa4969.jpg', '只松鼠坚果炒货零食特产每日坚果开心果100g/袋', null, '1', '2019-02-22 23:51:37', '0', '三只松鼠坚果炒货零食特产每日坚果开心果100g/袋');
INSERT INTO `ox_goods` VALUES ('24', '155085070063201', '155085070063208', '满199减120三只松鼠 黄桃干106g休闲零食特产果脯蜜饯水果干桃肉 红色', 'upload/goods/2019-02/5c701b2a1e059.png', '7', '0', '25.00', '19.90', '10', '10000', '袋', '满199减120，仅此一月，错过不再有！', '1', '0', '1', '0', '1', '52_189_199_', '199', '60', '61', '3', '三只松鼠 黄桃干106g休闲零食特产果脯蜜饯水果干桃肉 红色', '1', '0', '2019-02-22 23:55:12', '1', '0', '0', 'upload/goods/2019-02/5c701b2f8daba.jpg,upload/goods/2019-02/5c701b2fdbccc.jpg', '三只松鼠 黄桃干106g休闲零食特产果脯蜜饯水果干桃肉 红色', null, '1', '2019-02-22 23:55:12', '0', '满199减120三只松鼠 黄桃干106g休闲零食特产果脯蜜饯水果干桃肉 红色');
INSERT INTO `ox_goods` VALUES ('25', '155085092481916', '155085092481917', '三只松鼠 无核白葡萄干280gx2袋零食蜜饯果干新疆特产提子干', 'upload/goods/2019-02/5c701baa78064.jpg', '7', '0', '50.00', '42.70', '10', '10000', '袋', '', '1', '0', '1', '0', '1', '52_189_203_', '203', '57', '58', '3', '三只松鼠 无核白葡萄干280gx2袋零食蜜饯果干新疆特产提子干', '1', '0', '2019-02-22 23:57:11', '0', '0', '0', 'upload/goods/2019-02/5c701bb162648.jpg,upload/goods/2019-02/5c701bb1ac9d9.jpg,upload/goods/2019-02/5c701bb1f2ee9.jpg', '三只松鼠 无核白葡萄干280gx2袋零食蜜饯果干新疆特产提子干', null, '1', '2019-02-22 23:57:11', '0', '三只松鼠 无核白葡萄干280gx2袋零食蜜饯果干新疆特产提子干');
INSERT INTO `ox_goods` VALUES ('26', '155085103438739', '155085103438733', '三只松鼠休闲零食特产混合什锦果蔬菜干蔬果干田园果蔬脆100g/袋', 'upload/goods/2019-02/5c701c1d8f553.jpg', '7', '0', '25.00', '21.90', '10', '100000', '袋', '', '1', '0', '1', '0', '1', '52_189_203_', '203', '57', '58', '3', '三只松鼠休闲零食特产混合什锦果蔬菜干蔬果干田园果蔬脆100g/袋', '1', '0', '2019-02-22 23:58:59', '0', '0', '0', 'upload/goods/2019-02/5c701c2383358.jpg,upload/goods/2019-02/5c701c23cfdfa.jpg,upload/goods/2019-02/5c701c242fb8d.jpg', '三只松鼠休闲零食特产混合什锦果蔬菜干蔬果干田园果蔬脆100g/袋', null, '1', '2019-02-22 23:58:59', '0', '三只松鼠休闲零食特产混合什锦果蔬菜干蔬果干田园果蔬脆100g/袋');
INSERT INTO `ox_goods` VALUES ('27', '155085120796574', '155085120796571', '三只松鼠黄秋葵脆秋葵干健康营养休闲零食清新即食嘎嘣清脆蔬菜干40g/袋', 'upload/goods/2019-02/5c701cb13a1f5.jpg', '7', '0', '20.00', '16.90', '10', '10000', '袋', '', '1', '0', '1', '1', '1', '52_189_203_', '203', '57', '58', '3', '三只松鼠黄秋葵脆秋葵干健康营养休闲零食清新即食嘎嘣清脆蔬菜干40g/袋', '1', '0', '2019-02-23 00:01:19', '0', '0', '0', 'upload/goods/2019-02/5c701cb66d387.jpg,upload/goods/2019-02/5c701cb6b7ee8.jpg', '三只松鼠黄秋葵脆秋葵干健康营养休闲零食清新即食嘎嘣清脆蔬菜干40g/袋', null, '1', '2019-02-23 00:01:19', '0', '三只松鼠黄秋葵脆秋葵干健康营养休闲零食清新即食嘎嘣清脆蔬菜干40g/袋');
INSERT INTO `ox_goods` VALUES ('28', '155085134595386', '155085134595385', '三只松鼠凤梨干菠萝干蜜饯果干零食果脯106g/袋', 'upload/goods/2019-02/5c701d59500e0.jpg', '7', '0', '23.00', '19.80', '10', '10000', '袋', '', '1', '0', '1', '1', '1', '52_189_202_', '202', '57', '58', '3', '三只松鼠凤梨干菠萝干蜜饯果干零食果脯106g/袋', '1', '0', '2019-02-23 00:04:11', '0', '0', '0', 'upload/goods/2019-02/5c701d5df3733.jpg,upload/goods/2019-02/5c701d5e59288.jpg,upload/goods/2019-02/5c701d5ea6ccb.jpg', '三只松鼠凤梨干菠萝干蜜饯果干零食果脯106g/袋', null, '1', '2019-02-23 00:04:11', '1', '三只松鼠凤梨干菠萝干蜜饯果干零食果脯106g/袋');
INSERT INTO `ox_goods` VALUES ('29', '155085152523279', '155085152523276', '三只松鼠坚果特产休闲零食核桃肉琥珀核桃仁165g/袋', 'upload/goods/2019-02/5c701df09e7e5.jpg', '7', '0', '33.00', '29.90', '10', '100000', '袋', '', '1', '0', '1', '0', '1', '52_189_199_', '199', '60', '62', '3', '三只松鼠坚果特产休闲零食核桃肉琥珀核桃仁165g/袋', '1', '0', '2019-02-23 00:06:47', '0', '0', '0', 'upload/goods/2019-02/5c701df5c9c75.jpg,upload/goods/2019-02/5c701df62097f.jpg,upload/goods/2019-02/5c701df66012e.jpg', '三只松鼠坚果特产休闲零食核桃肉琥珀核桃仁165g/袋', null, '1', '2019-02-23 00:06:47', '0', '三只松鼠坚果特产休闲零食核桃肉琥珀核桃仁165g/袋');
INSERT INTO `ox_goods` VALUES ('30', '155085164041384', '155085164041380', '三只松鼠 肩扛大零食巨型坚果零食大礼包3195g 30包抖音一箱零食猪饲料送女友年货礼盒 混合口味', 'upload/goods/2019-02/5c701e758a032.png', '7', '0', '200.00', '189.00', '10', '100000', '包', '重大礼包，送礼佳品，倍有面子', '1', '0', '0', '0', '1', '52_189_199_', '199', '60', '61', '3', '<img src=\"${DOMAIN}/upload/image/2019-02/5c701e94d4ab0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701e9534844.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:09:46', '0', '0', '0', 'upload/goods/2019-02/5c701e7e97cf8.jpg,upload/goods/2019-02/5c701e7f068d7.jpg,upload/goods/2019-02/5c701e7f63d1d.jpg', '三只松鼠 肩扛大零食巨型坚果零食大礼包3195g 30包抖音一箱零食猪饲料送女友年货礼盒 混合口味', null, '1', '2019-02-23 00:09:46', '1', '三只松鼠 肩扛大零食巨型坚果零食大礼包3195g 30包抖音一箱零食猪饲料送女友年货礼盒 混合口味');
INSERT INTO `ox_goods` VALUES ('31', '155085192227531', '155085192227532', '三只松鼠坚果炒货零食特产即食板栗开口甘栗120g/袋', 'upload/goods/2019-02/5c701f586d0c4.jpg', '7', '0', '24.00', '16.90', '10', '100000', '袋', '', '1', '1', '1', '0', '0', '52_189_199_', '199', '60', '61', '3', '<img src=\"${DOMAIN}/upload/image/2019-02/5c701f9ee3d08.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701f9f1bdd0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701f9fa3c73.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701fa0275d9.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c701fa0a7849.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:13:34', '0', '0', '0', 'upload/goods/2019-02/5c701f625a634.jpg,upload/goods/2019-02/5c701f62d0507.jpg,upload/goods/2019-02/5c701f631cdfe.jpg', '三只松鼠坚果炒货零食特产即食板栗开口甘栗120g/袋', null, '1', '2019-02-23 00:13:34', '0', '三只松鼠坚果炒货零食特产即食板栗开口甘栗120g/袋');
INSERT INTO `ox_goods` VALUES ('32', '155085237245488', '155085237245480', '同仁堂（TRT） 【同仁堂旗舰店】同仁堂红糖姜茶10g*12袋*1盒 速溶姜茶大姨妈可饮用', 'upload/goods/2019-02/5c7021183151b.jpg', '10', '0', '100.00', '89.90', '10', '10000', '盒', '', '1', '0', '1', '0', '0', '53_140_156_', '156', '63', '64', '2', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70217d55d95.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70217e02549.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70217e82819.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70217f08da3.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:37:35', '0', '0', '0', 'upload/goods/2019-02/5c7021237f9a3.jpg,upload/goods/2019-02/5c702123bca41.jpg', '同仁堂红糖姜茶10g*12袋*1盒 速溶姜茶大姨妈可饮用', null, '1', '2019-02-23 00:21:25', '0', '同仁堂（TRT） 【同仁堂旗舰店】同仁堂红糖姜茶10g*12袋*1盒 速溶姜茶大姨妈可饮用');
INSERT INTO `ox_goods` VALUES ('33', '155085249050414', '155085249050418', '同仁堂（TRT）阿胶糕225g 礼盒装即食阿胶糕 原味阿胶固元膏 北京同仁堂', 'upload/goods/2019-02/5c7021e600ce3.jpg', '10', '0', '130.00', '106.00', '10', '10000', '袋', '', '1', '0', '1', '0', '0', '53_140_157_', '157', '63', '64', '2', '礼盒装即食阿胶糕 原味阿胶固元膏 北京同仁堂', '1', '0', '2019-02-23 00:37:27', '0', '0', '0', 'upload/goods/2019-02/5c7021eba81f0.jpg,upload/goods/2019-02/5c7021ebf2199.jpg,upload/goods/2019-02/5c7021ec390b7.jpg', '礼盒装即食阿胶糕 原味阿胶固元膏 北京同仁堂', null, '1', '2019-02-23 00:23:44', '0', '同仁堂（TRT）阿胶糕225g 礼盒装即食阿胶糕 原味阿胶固元膏 北京同仁堂');
INSERT INTO `ox_goods` VALUES ('34', '155085262909301', '155085262909304', '同仁堂 TRT 玫瑰花 玫瑰花茶 花草茶 80g/瓶', 'upload/goods/2019-02/5c70224e33937.jpg', '10', '0', '40.00', '35.00', '10', '10000', '罐', '', '1', '0', '1', '0', '1', '53_138_151_', '151', '63', '65', '2', '同仁堂 TRT 玫瑰花 玫瑰花茶 花草茶 80g/瓶', '1', '0', '2019-02-23 00:25:56', '0', '0', '0', 'upload/goods/2019-02/5c702253c7d90.jpg,upload/goods/2019-02/5c702254132ff.jpg', '同仁堂 TRT 玫瑰花 玫瑰花茶 花草茶 80g/瓶', null, '1', '2019-02-23 00:25:56', '0', '同仁堂 TRT 玫瑰花 玫瑰花茶 花草茶 80g/瓶');
INSERT INTO `ox_goods` VALUES ('35', '155085275777627', '155085275777626', '同仁堂牛蒡茶170g', 'upload/goods/2019-02/5c7022e90ea0c.jpg', '10', '0', '50.00', '45.00', '10', '10000', '罐', '', '1', '1', '1', '0', '0', '53_138_148_', '148', '63', '65', '2', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702324e1933.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c7023256bf2e.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702325e55c5.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:28:28', '1', '0', '0', 'upload/goods/2019-02/5c7022f69af44.jpg,upload/goods/2019-02/5c7022f6efeb8.jpg,upload/goods/2019-02/5c7022f74a65a.jpg', '同仁堂牛蒡茶170g', null, '1', '2019-02-23 00:28:28', '0', '同仁堂牛蒡茶170g');
INSERT INTO `ox_goods` VALUES ('36', '155085295660683', '155085295660682', '同仁堂(TRT) 玫瑰花茶 45g', 'upload/goods/2019-02/5c702388e0748.jpg', '10', '0', '40.00', '35.00', '10', '10000', '罐', '', '1', '0', '1', '0', '1', '53_138_150_', '150', '63', '65', '2', '同仁堂(TRT) 玫瑰花茶 45g', '1', '0', '2019-02-23 00:30:39', '0', '0', '0', 'upload/goods/2019-02/5c70238de46e7.jpg', '同仁堂(TRT) 玫瑰花茶 45g', null, '1', '2019-02-23 00:30:39', '0', '同仁堂(TRT) 玫瑰花茶 45g');
INSERT INTO `ox_goods` VALUES ('37', '155085311727405', '155085311727403', '北京同仁堂 中华老字号 黑果枸杞袋泡茶（代用茶）2g/袋*30', 'upload/goods/2019-02/5c702400a1adc.jpg', '10', '0', '170.00', '159.00', '10', '10000', '盒', '', '1', '0', '1', '0', '1', '53_138_147_', '147', '63', '65', '2', '北京同仁堂 中华老字号 黑果枸杞袋泡茶（代用茶）2g/袋*30', '1', '0', '2019-02-23 00:32:39', '0', '0', '0', 'upload/goods/2019-02/5c702405e2f01.jpg,upload/goods/2019-02/5c7024063849a.jpg,upload/goods/2019-02/5c70240676ca9.jpg', '北京同仁堂 中华老字号 黑果枸杞袋泡茶（代用茶）2g/袋*30', null, '1', '2019-02-23 00:32:39', '0', '北京同仁堂 中华老字号 黑果枸杞袋泡茶（代用茶）2g/袋*30');
INSERT INTO `ox_goods` VALUES ('38', '155085316644196', '155085316644192', '同仁堂（TRT）黑苦荞茶273g(7g*39袋)', 'upload/goods/2019-02/5c702453e0dc4.jpg', '10', '0', '68.00', '57.00', '10', '10000', '包', '', '1', '0', '1', '0', '1', '53_138_147_', '147', '63', '65', '2', '同仁堂（TRT）黑苦荞茶273g(7g*39袋)', '1', '0', '2019-02-23 00:33:52', '0', '0', '0', 'upload/goods/2019-02/5c702458c0753.jpg,upload/goods/2019-02/5c7024591a33d.jpg', '同仁堂（TRT）黑苦荞茶273g(7g*39袋)', null, '1', '2019-02-23 00:33:52', '0', '同仁堂（TRT）黑苦荞茶273g(7g*39袋)');
INSERT INTO `ox_goods` VALUES ('39', '155085327982623', '155085327982624', '同仁堂 陈皮茶120g', 'upload/goods/2019-02/5c7024e84aca5.jpg', '10', '0', '30.00', '27.90', '10', '10000', '包', '', '1', '0', '1', '1', '1', '53_138_148_', '148', '63', '65', '2', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70251bed53b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70251c5d3c7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70251ce3904.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:36:48', '1', '0', '0', 'upload/goods/2019-02/5c7024f0aa5dd.jpg,upload/goods/2019-02/5c7024f0ecc6c.jpg', '同仁堂 陈皮茶120g', null, '1', '2019-02-23 00:36:48', '0', '同仁堂 陈皮茶120g');
INSERT INTO `ox_goods` VALUES ('40', '155085358959309', '155085358959302', '芙丽芳丝freeplus洗面奶女深层清洁泡沫氨基酸温和洁面乳男专柜特价 净润洗面霜100g敏感肌适用', 'upload/goods/2019-02/5c702644c83bf.jpg', '1', '0', '140.00', '120.00', '10', '10000', '支', '', '1', '0', '1', '1', '1', '51_165_172_', '172', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702689cd07f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70268a36918.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70268aa45c0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70268b3a2f1.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70268bb9239.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:42:59', '0', '0', '0', 'upload/goods/2019-02/5c70264aca83f.jpg,upload/goods/2019-02/5c70264b2b95b.jpg,upload/goods/2019-02/5c70264b8186f.jpg', '芙丽芳丝freeplus洗面奶女深层清洁泡沫氨基酸温和洁面乳男专柜特价 净润洗面霜100g敏感肌适用', null, '1', '2019-02-23 00:42:59', '0', '芙丽芳丝freeplus洗面奶女深层清洁泡沫氨基酸温和洁面乳男专柜特价 净润洗面霜100g敏感肌适用');
INSERT INTO `ox_goods` VALUES ('41', '155085380178651', '155085380178657', '资生堂珊珂（SENKA）绵润泡沫洁面乳120g（日本进口洗面奶 深层清洁 清爽滋养 男女适用）', 'upload/goods/2019-02/5c7026cf6b192.jpg', '1', '0', '56.00', '45.00', '10', '10000', '支', '', '1', '0', '1', '0', '1', '51_165_172_', '172', '14', '17', '0', '<h1 class=\"mh\" id=\"productMainName\" style=\"font-size:16px;font-family:&quot;color:#333333;\">\n	资生堂珊珂（SENKA）绵润泡沫洁面乳120g（日本进口洗面奶 深层清洁 清爽滋养 男女适用）\n</h1>', '1', '0', '2019-02-23 00:44:34', '0', '0', '0', 'upload/goods/2019-02/5c7026d474ef2.jpg,upload/goods/2019-02/5c7026d4d59e9.jpg', '资生堂珊珂（SENKA）绵润泡沫洁面乳120g（日本进口洗面奶 深层清洁 清爽滋养 男女适用）', null, '1', '2019-02-23 00:44:34', '0', '资生堂珊珂（SENKA）绵润泡沫洁面乳120g（日本进口洗面奶 深层清洁 清爽滋养 男女适用）');
INSERT INTO `ox_goods` VALUES ('42', '155085391329574', '155085391329574', '资生堂水之密语（AQUAIR）净澄水活(倍润型)洗护套装(洗发水600ml*2+护发素600ml*2)', 'upload/goods/2019-02/5c702746534f5.jpg', '1', '0', '145.00', '139.00', '10', '10000', '支', '', '1', '1', '1', '0', '1', '51_164_168_', '168', '14', '15', '0', '<h1 class=\"mh\" id=\"productMainName\" style=\"font-size:16px;font-family:&quot;color:#333333;\">\n	资生堂水之密语（AQUAIR）净澄水活(倍润型)洗护套装(洗发水600ml*2+护发素600ml*2)\n</h1>', '1', '0', '2019-02-23 00:46:28', '0', '0', '0', '', '资生堂水之密语（AQUAIR）净澄水活(倍润型)洗护套装(洗发水600ml*2+护发素600ml*2)', null, '1', '2019-02-23 00:46:28', '0', '资生堂水之密语（AQUAIR）净澄水活(倍润型)洗护套装(洗发水600ml*2+护发素600ml*2)');
INSERT INTO `ox_goods` VALUES ('43', '155085403436449', '155085403436442', '夏依女性专用洗液237ml（敏感肌肤）*2支装 护理液 私处私密护理 美国原装进口', 'upload/goods/2019-02/5c7027e1b2ede.jpg', '1', '0', '100.00', '89.00', '10', '10000', '支', '', '1', '0', '1', '1', '1', '51_166_176_', '176', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70282a12508.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70282a40b3b.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:49:49', '0', '0', '0', 'upload/goods/2019-02/5c7027ea09db1.jpg,upload/goods/2019-02/5c7027ea506a9.jpg,upload/goods/2019-02/5c7027ea8e6e8.jpg', '夏依女性专用洗液237ml（敏感肌肤）*2支装 护理液 私处私密护理 美国原装进口', null, '1', '2019-02-23 00:49:49', '0', '夏依女性专用洗液237ml（敏感肌肤）*2支装 护理液 私处私密护理 美国原装进口');
INSERT INTO `ox_goods` VALUES ('44', '155085421243310', '155085421243310', '妇炎洁 妇科洗液女性私处护理液伊斯蜜粉嫩缩阴紧致私密护理凝胶润滑油剂洁阴洗阴内道冲洗器洗阴液 私密洗液200ml+洗液380ml送冲洗器2个', 'upload/goods/2019-02/5c7028d66c84b.jpg', '1', '0', '89.00', '75.00', '10', '10000', '瓶', '', '1', '0', '1', '0', '1', '51_166_176_', '176', '14', '16', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702911ab6f3.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702911d31b9.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c7029121d330.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c7029123c53e.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c7029125cad4.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:53:45', '0', '0', '0', 'upload/goods/2019-02/5c7028dbaa9a8.jpg,upload/goods/2019-02/5c7028dc016b2.jpg', '妇炎洁 妇科洗液女性私处护理液伊斯蜜粉嫩缩阴紧致私密护理凝胶润滑油剂洁阴洗阴内道冲洗器洗阴液 私密洗液200ml+洗液380ml送冲洗器2个', null, '1', '2019-02-23 00:53:45', '0', '妇炎洁 妇科洗液女性私处护理液伊斯蜜粉嫩缩阴紧致私密护理凝胶润滑油剂洁阴洗阴内道冲洗器洗阴液 私密洗液200ml+洗液380ml送冲洗器2个');
INSERT INTO `ox_goods` VALUES ('45', '155085444960210', '155085444960217', '蜜丝佛陀（Max Factor）无暇持妆隔离霜 30ml SPF20（彩妆 妆前乳 防晒 裸妆 控油 持久）', 'upload/goods/2019-02/5c702959ec6e6.jpg', '1', '0', '110.00', '99.00', '10', '10000', '支', '', '1', '0', '1', '0', '1', '51_165_172_', '172', '0', '0', '0', '<h1 class=\"mh\" id=\"productMainName\" style=\"font-size:16px;font-family:&quot;color:#333333;\">\n	蜜丝佛陀（Max Factor）无暇持妆隔离霜 30ml SPF20（彩妆 妆前乳 防晒 裸妆 控油 持久）\n</h1>', '1', '0', '2019-02-23 00:55:18', '0', '0', '0', 'upload/goods/2019-02/5c7029614dd7a.jpg,upload/goods/2019-02/5c7029619699c.jpg,upload/goods/2019-02/5c702961cf001.jpg', '蜜丝佛陀（Max Factor）无暇持妆隔离霜 30ml SPF20（彩妆 妆前乳 防晒 裸妆 控油 持久）', null, '1', '2019-02-23 00:55:18', '0', '蜜丝佛陀（Max Factor）无暇持妆隔离霜 30ml SPF20（彩妆 妆前乳 防晒 裸妆 控油 持久）');
INSERT INTO `ox_goods` VALUES ('46', '155085452741648', '155085452741644', '谜尚（MISSHA）魅力润颜修容霜SPF42/PA+++[21号]50ml（气垫bb霜粉底遮瑕保湿防晒）（新老包装随机发货）', 'upload/goods/2019-02/5c7029d0616e3.jpg', '1', '0', '120.00', '99.00', '10', '10000', '支', '', '1', '1', '1', '0', '1', '51_165_172_', '172', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702a06c1809.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702a06edb1b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702a0778451.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702a0800676.jpg\" alt=\"\" />', '1', '0', '2019-02-23 00:57:47', '0', '0', '0', 'upload/goods/2019-02/5c7029d55ed08.jpg', '谜尚（MISSHA）魅力润颜修容霜SPF42/PA+++[21号]50ml（气垫bb霜粉底遮瑕保湿防晒）（新老包装随机发货）', null, '1', '2019-02-23 00:57:47', '0', '谜尚（MISSHA）魅力润颜修容霜SPF42/PA+++[21号]50ml（气垫bb霜粉底遮瑕保湿防晒）（新老包装随机发货）');
INSERT INTO `ox_goods` VALUES ('47', '155085467032901', '155085467032908', '欧莱雅（L\'OREAL） 男士水能护肤品洗面奶套装面霜补水保湿滋润肤乳液擦脸油护脸霜 保湿强润霜+酷爽水凝露120ml', 'upload/goods/2019-02/5c702ac2ef965.jpg', '1', '0', '120.00', '89.00', '10', '10000', '支', '', '1', '0', '1', '1', '1', '51_165_172_', '172', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702af26a667.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702af314b74.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702af3942a2.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:01:47', '0', '0', '0', 'upload/goods/2019-02/5c702aca27faf.jpg,upload/goods/2019-02/5c702ac9d9b60.jpg', '欧莱雅（L\'OREAL） 男士水能护肤品洗面奶套装面霜补水保湿滋润肤乳液擦脸油护脸霜 保湿强润霜+酷爽水凝露120ml', null, '1', '2019-02-23 01:01:47', '0', '欧莱雅（L\'OREAL） 男士水能护肤品洗面奶套装面霜补水保湿滋润肤乳液擦脸油护脸霜 保湿强润霜+酷爽水凝露120ml');
INSERT INTO `ox_goods` VALUES ('48', '155085509783922', '155085509783922', '五粮液52度普五 500ML（新老包装随机发货）', 'upload/goods/2019-02/5c702c18b06d8.jpg', '1', '0', '1200.00', '1050.00', '10', '10000', '瓶', '', '1', '1', '1', '0', '1', '49_78_293_', '293', '36', '38', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702c7a89a10.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702c7b0c566.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:08:14', '0', '0', '0', 'upload/goods/2019-02/5c702c23c9f93.jpg,upload/goods/2019-02/5c702c24160ba.jpg', '五粮液52度普五 500ML（新老包装随机发货）', null, '1', '2019-02-23 01:08:14', '0', '五粮液52度普五 500ML（新老包装随机发货）');
INSERT INTO `ox_goods` VALUES ('49', '155085531427345', '155085531427342', '泸州老窖 国窖 1573 52度 浓香型白酒 500ml （百年品牌 泸州老窖荣誉出品）', 'upload/goods/2019-02/5c702ce84a8c1.jpg', '1', '0', '1100.00', '969.00', '10', '10000', '瓶', '', '1', '1', '1', '0', '1', '49_78_293_', '293', '36', '37', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702d34cbe7d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702d350a6cc.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702d3593da7.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:11:20', '1', '0', '0', '', '泸州老窖 国窖 1573 52度 浓香型白酒 500ml （百年品牌 泸州老窖荣誉出品）', null, '1', '2019-02-23 01:11:20', '0', '泸州老窖 国窖 1573 52度 浓香型白酒 500ml （百年品牌 泸州老窖荣誉出品）');
INSERT INTO `ox_goods` VALUES ('50', '155085549028442', '155085549028447', '剑南春 水晶剑 52度 单瓶装白酒 500ml 口感浓香型', 'upload/goods/2019-02/5c702d7797b80.jpg', '1', '0', '1000.00', '898.00', '10', '10000', '瓶', '', '1', '1', '1', '0', '1', '49_78_293_', '293', '36', '37', '0', '<h1 class=\"mh\" id=\"productMainName\" style=\"font-size:16px;font-family:&quot;color:#333333;\">\n	剑南春 水晶剑 52度 单瓶装白酒 500ml 口感浓香型\n</h1>', '1', '0', '2019-02-23 01:12:59', '0', '0', '0', 'upload/goods/2019-02/5c702d7caebd4.jpg,upload/goods/2019-02/5c702d7d0416d.jpg,upload/goods/2019-02/5c702d7d48f0d.jpg', '剑南春 水晶剑 52度 单瓶装白酒 500ml 口感浓香型', null, '1', '2019-02-23 01:12:59', '0', '剑南春 水晶剑 52度 单瓶装白酒 500ml 口感浓香型');
INSERT INTO `ox_goods` VALUES ('51', '155085560443863', '155085560443861', '长城（GreatWall）红酒 特选5年橡木桶解百纳干红葡萄酒 整箱装 750ml*6瓶', 'upload/goods/2019-02/5c702de916219.jpg', '1', '0', '500.00', '399.00', '10', '10000', '瓶', '', '1', '0', '1', '1', '1', '49_78_294_', '294', '36', '39', '0', '<h1 class=\"mh\" id=\"productMainName\" style=\"font-size:16px;font-family:&quot;color:#333333;\">\n	长城（GreatWall）红酒 特选5年橡木桶解百纳干红葡萄酒 整箱装 750ml*6瓶\n</h1>', '1', '0', '2019-02-23 01:14:51', '0', '0', '0', 'upload/goods/2019-02/5c702dee1289e.jpg,upload/goods/2019-02/5c702dee683ca.jpg,upload/goods/2019-02/5c702dee9fe77.jpg', '长城（GreatWall）红酒 特选5年橡木桶解百纳干红葡萄酒 整箱装 750ml*6瓶', null, '1', '2019-02-23 01:14:51', '0', '长城（GreatWall）红酒 特选5年橡木桶解百纳干红葡萄酒 整箱装 750ml*6瓶');
INSERT INTO `ox_goods` VALUES ('52', '155085570890755', '155085570890752', '法国进口红酒 拉菲（LAFITE）传奇波尔多干红葡萄酒 整箱装 750ml*6瓶（ASC）', 'upload/goods/2019-02/5c702e71a981a.jpg', '1', '0', '650.00', '498.00', '10', '10000', '瓶', '', '1', '0', '1', '0', '0', '49_78_294_', '294', '36', '39', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702eab58e7c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702eabdbefe.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702eac6c76c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702eace217a.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:17:46', '0', '0', '0', 'upload/goods/2019-02/5c702e76d1211.jpg,upload/goods/2019-02/5c702e771cf50.jpg,upload/goods/2019-02/5c702e775422d.jpg', '法国进口红酒 拉菲（LAFITE）传奇波尔多干红葡萄酒 整箱装 750ml*6瓶（ASC）', null, '1', '2019-02-23 01:17:46', '0', '法国进口红酒 拉菲（LAFITE）传奇波尔多干红葡萄酒 整箱装 750ml*6瓶（ASC）');
INSERT INTO `ox_goods` VALUES ('53', '155085593740896', '155085593740892', '法国原瓶进口红酒凯旋干红葡萄酒礼盒750ml整箱6支装', 'upload/goods/2019-02/5c702f3c3603e.jpg', '1', '0', '305.00', '279.00', '10', '10000', '箱', '', '1', '1', '1', '0', '0', '49_78_294_', '294', '36', '40', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c702f743c9c0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702f7493b20.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702f752383b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c702f75a0523.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:21:03', '0', '0', '0', 'upload/goods/2019-02/5c702f4488a6b.jpg,upload/goods/2019-02/5c702f7c13821.jpg', '法国原瓶进口红酒凯旋干红葡萄酒礼盒750ml整箱6支装', null, '1', '2019-02-23 01:21:03', '0', '法国原瓶进口红酒凯旋干红葡萄酒礼盒750ml整箱6支装');
INSERT INTO `ox_goods` VALUES ('54', '155085607093157', '155085607093150', '送2香槟杯 尚尼酒庄魔幻云星空酒起泡葡萄酒4支组合整箱 火焰酒女士钟爱的配制甜红酒气泡果酒 4*750ml', 'upload/goods/2019-02/5c702fe72a7ce.jpg', '1', '0', '200.00', '158.00', '10', '10000', '瓶箱', '', '1', '0', '1', '0', '1', '49_78_297_', '297', '36', '40', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70300f732a4.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70300fd9ffa.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c7030105cf9b.jpg\" alt=\"\" />', '1', '0', '2019-02-23 01:23:30', '0', '0', '0', 'upload/goods/2019-02/5c702feb8afc1.jpg,upload/goods/2019-02/5c702febf1879.jpg', '送2香槟杯 尚尼酒庄魔幻云星空酒起泡葡萄酒4支组合整箱 火焰酒女士钟爱的配制甜红酒气泡果酒 4*750ml', null, '1', '2019-02-23 01:23:30', '0', '送2香槟杯 尚尼酒庄魔幻云星空酒起泡葡萄酒4支组合整箱 火焰酒女士钟爱的配制甜红酒气泡果酒 4*750ml');
INSERT INTO `ox_goods` VALUES ('55', '155088550521760', '155088550521769', '劲牌 劲酒 中国劲酒 35度 1.5L', 'upload/goods/2019-02/5c70a28a95b15.jpg', '1', '0', '125.00', '99.00', '10', '10000', '瓶', '新品上市，诚邀新老客户品鉴，凭购买记录优惠20元', '1', '0', '1', '1', '1', '49_78_293_', '293', '36', '38', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a2fbd6433.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a3017db7e.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a307511f2.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:34:02', '1', '0', '0', 'upload/goods/2019-02/5c70a29151abd.jpg,upload/goods/2019-02/5c70a29190a9c.jpg,upload/goods/2019-02/5c70a291c7991.jpg', '劲牌 劲酒 中国劲酒 35度 1.5L', null, '1', '2019-02-23 09:34:02', '0', '劲牌 劲酒 中国劲酒 35度 1.5L');
INSERT INTO `ox_goods` VALUES ('56', '155088572544924', '155088572544927', '劲牌 劲酒 中国劲酒 35度 125ml*12瓶 礼盒装', 'upload/goods/2019-02/5c70a3a9a9921.jpg', '1', '0', '200.00', '179.00', '10', '10000', '瓶', '', '1', '1', '1', '0', '0', '49_78_293_', '293', '36', '37', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a3dbdb198.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a3dc7ca03.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a3dd07b09.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a3dd906a9.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:37:35', '0', '0', '0', 'upload/goods/2019-02/5c70a3b1ea622.jpg,upload/goods/2019-02/5c70a3b2357a9.jpg,upload/goods/2019-02/5c70a3b275b10.jpg,upload/goods/2019-02/5c70a3b2ba4c8.jpg', '劲牌 劲酒 中国劲酒 35度 125ml*12瓶 礼盒装', null, '1', '2019-02-23 09:37:35', '0', '劲牌 劲酒 中国劲酒 35度 125ml*12瓶 礼盒装');
INSERT INTO `ox_goods` VALUES ('57', '155088588416731', '155088588416737', 'HE小酒 JOY纪念版 洋河+习酒+古井贡酒+劲牌+黄金酒 大牌畅饮盒', 'upload/goods/2019-02/5c70a465ca3a2.jpg', '1', '0', '310.00', '279.00', '10', '1000000', '箱', '', '1', '0', '1', '1', '0', '49_78_293_', '293', '36', '37', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a4892b0d7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a4895fca4.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a489d99f8.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a48a5fcdd.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:40:29', '0', '0', '0', 'upload/goods/2019-02/5c70a46b7a78e.jpg,upload/goods/2019-02/5c70a46bc3b7f.jpg,upload/goods/2019-02/5c70a46c0f8be.jpg', 'HE小酒 JOY纪念版 洋河+习酒+古井贡酒+劲牌+黄金酒 大牌畅饮盒', null, '1', '2019-02-23 09:40:29', '0', 'HE小酒 JOY纪念版 洋河+习酒+古井贡酒+劲牌+黄金酒 大牌畅饮盒');
INSERT INTO `ox_goods` VALUES ('58', '155088605646015', '155088605646016', '洋河蓝色经典 梦之蓝M3 52度 礼盒装 500ml*2瓶白酒 口感绵柔浓香型', 'upload/goods/2019-02/5c70a50fc7b7c.jpg', '1', '0', '15000.00', '1098.00', '10', '100000', '盒', '', '1', '1', '1', '0', '0', '49_78_293_', '293', '36', '37', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a5505041e.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a55072aee.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a55099bf7.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:43:49', '0', '0', '0', 'upload/goods/2019-02/5c70a513920f5.jpg,upload/goods/2019-02/5c70a513ce5db.jpg,upload/goods/2019-02/5c70a5140f34f.jpg', '洋河蓝色经典 梦之蓝M3 52度 礼盒装 500ml*2瓶白酒 口感绵柔浓香型', null, '1', '2019-02-23 09:43:49', '0', '洋河蓝色经典 梦之蓝M3 52度 礼盒装 500ml*2瓶白酒 口感绵柔浓香型');
INSERT INTO `ox_goods` VALUES ('59', '155088623897765', '155088623897768', '郎酒 郎牌郎酒 酱香型 53度 整箱装 500ml*6瓶', 'upload/goods/2019-02/5c70a5a1b86c0.jpg', '1', '0', '1300.00', '1128.00', '10', '10000', '瓶', '', '1', '0', '1', '1', '0', '49_78_293_', '293', '36', '37', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a5f8e8c23.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a5f975c69.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a5fa03c50.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a5fa7dd8c.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:46:38', '0', '0', '0', 'upload/goods/2019-02/5c70a5b164697.jpg,upload/goods/2019-02/5c70a5b1a0795.jpg,upload/goods/2019-02/5c70a5cb27bc8.jpg', '郎酒 郎牌郎酒 酱香型 53度 整箱装 500ml*6瓶', null, '1', '2019-02-23 09:46:38', '0', '郎酒 郎牌郎酒 酱香型 53度 整箱装 500ml*6瓶');
INSERT INTO `ox_goods` VALUES ('60', '155088647094285', '155088647094280', '优露清（Explution） 油烟机清洗剂瓷砖浴室清洁剂厨房油污浴室玻璃清洗液厨卫清洁套装1L', 'upload/goods/2019-02/5c70a69e78cff.jpg', '1', '0', '90.00', '89.70', '10', '10000', '套', '', '1', '0', '1', '1', '1', '48_258_267_', '267', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a6ca81ba6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a6cadbd23.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a6cb65e89.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a6cbe2abe.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:50:11', '0', '0', '0', 'upload/goods/2019-02/5c70a6a5ed9db.png,upload/goods/2019-02/5c70a6a995c6b.png,upload/goods/2019-02/5c70a6a881025.png', '优露清（Explution） 油烟机清洗剂瓷砖浴室清洁剂厨房油污浴室玻璃清洗液厨卫清洁套装1L', null, '1', '2019-02-23 09:50:11', '0', '优露清（Explution） 油烟机清洗剂瓷砖浴室清洁剂厨房油污浴室玻璃清洗液厨卫清洁套装1L');
INSERT INTO `ox_goods` VALUES ('61', '155088662493170', '155088662493174', '优露清（Explution） 顽固污渍干洗剂 羽绒服清洗剂 衣服去油渍 布艺沙发免水洗去污清洁剂 1瓶装', 'upload/goods/2019-02/5c70a73a4e4f8.jpg', '1', '0', '87.50', '93.00', '10', '10000', '瓶', '', '1', '0', '1', '0', '1', '48_258_267_', '267', '20', '22', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a76d9d270.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a76dc3ba9.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a76e4e4de.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a76ecad2c.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:52:49', '0', '0', '0', 'upload/goods/2019-02/5c70a744a9852.jpg,upload/goods/2019-02/5c70a744f37fb.jpg,upload/goods/2019-02/5c70a7453f53a.jpg', '优露清（Explution） 顽固污渍干洗剂 羽绒服清洗剂 衣服去油渍 布艺沙发免水洗去污清洁剂 1瓶装', null, '1', '2019-02-23 09:52:49', '0', '优露清（Explution） 顽固污渍干洗剂 羽绒服清洗剂 衣服去油渍 布艺沙发免水洗去污清洁剂 1瓶装');
INSERT INTO `ox_goods` VALUES ('62', '155088679433830', '155088679433833', '优露清（Explution） 便携式去污笔去渍笔 衣服免水洗去油渍干洗剂 应急去污魔法笔随身携带 一盒装', 'upload/goods/2019-02/5c70a7d044711.jpg', '1', '0', '35.00', '26.90', '10', '10000', '瓶', '', '1', '1', '1', '0', '1', '48_258_267_', '267', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a8098d437.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a8090bdc8.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a80886e6c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a807ec362.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:55:48', '0', '0', '0', 'upload/goods/2019-02/5c70a7e05023f.jpg,upload/goods/2019-02/5c70a7e09192f.jpg', '优露清（Explution） 便携式去污笔去渍笔 衣服免水洗去油渍干洗剂 应急去污魔法笔随身携带 一盒装', null, '1', '2019-02-23 09:55:48', '0', '优露清（Explution） 便携式去污笔去渍笔 衣服免水洗去油渍干洗剂 应急去污魔法笔随身携带 一盒装');
INSERT INTO `ox_goods` VALUES ('63', '155088696774534', '155088696774536', '优露清 【榜单商品】油污清洁剂 油烟机清洗剂厨房去油污强力清洁剂瓷砖去油污净500ml', 'upload/goods/2019-02/5c70a8706d7f2.png', '1', '0', '55.00', '49.90', '10', '100000', '瓶', '', '1', '0', '1', '1', '1', '48_258_267_', '267', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a8ad3efb9.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a8ac3eb97.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a8acb5623.jpg\" alt=\"\" />', '1', '0', '2019-02-23 09:58:15', '0', '0', '0', 'upload/goods/2019-02/5c70a8739ce79.jpg', '优露清 【榜单商品】油污清洁剂 油烟机清洗剂厨房去油污强力清洁剂瓷砖去油污净500ml', null, '1', '2019-02-23 09:58:15', '0', '优露清 【榜单商品】油污清洁剂 油烟机清洗剂厨房去油污强力清洁剂瓷砖去油污净500ml');
INSERT INTO `ox_goods` VALUES ('64', '155088710371201', '155088710371207', '威猛先生（Mr Muscle） 【领券满65减50】家用厨卫清洁组合套装灶台重油污净油烟', 'upload/goods/2019-02/5c70a8faf0d36.jpg', '1', '0', '55.00', '46.90', '10', '100000', '瓶', '', '1', '1', '1', '0', '1', '48_258_273_', '273', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a934e81d2.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a9356ae06.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:00:25', '0', '0', '0', 'upload/goods/2019-02/5c70a9031c4af.jpg,upload/goods/2019-02/5c70a90364130.jpg,upload/goods/2019-02/5c70a903a11ce.jpg', '威猛先生（Mr Muscle） 【领券满65减50】家用厨卫清洁组合套装灶台重油污净油烟', null, '1', '2019-02-23 10:00:25', '0', '威猛先生（Mr Muscle） 【领券满65减50】家用厨卫清洁组合套装灶台重油污净油烟');
INSERT INTO `ox_goods` VALUES ('65', '155088726129516', '155088726129618', '立白 茶籽洗洁精双瓶省心装 1.45kg*2瓶', 'upload/goods/2019-02/5c70a9a526db4.jpg', '1', '0', '29.00', '23.90', '10', '100000', '套', '', '1', '0', '1', '1', '1', '48_258_267_', '267', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70a9f8b7941.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a9f83b0f4.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70a9f79cb51.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:03:53', '0', '0', '0', 'upload/goods/2019-02/5c70a9cf1715a.jpg,upload/goods/2019-02/5c70a9cf643cc.jpg,upload/goods/2019-02/5c70a9cfa7614.jpg', '立白 茶籽洗洁精双瓶省心装 1.45kg*2瓶', null, '1', '2019-02-23 10:03:53', '0', '立白 茶籽洗洁精双瓶省心装 1.45kg*2瓶');
INSERT INTO `ox_goods` VALUES ('66', '155088744403257', '155088744403252', '立白 柠檬去油洗洁精（清新柠檬）1.5kg/瓶', 'upload/goods/2019-02/5c70aa5233c56.jpg', '1', '0', '15.00', '13.50', '10', '100000', '瓶', '', '1', '1', '1', '0', '1', '48_258_267_', '267', '20', '21', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70aa8189a32.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70aa7fe9ce6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70aa808190f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70aa8109364.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:06:09', '0', '0', '0', 'upload/goods/2019-02/5c70aa57f2868.jpg,upload/goods/2019-02/5c70aa5837076.jpg', '立白 柠檬去油洗洁精（清新柠檬）1.5kg/瓶', null, '1', '2019-02-23 10:06:09', '0', '立白 柠檬去油洗洁精（清新柠檬）1.5kg/瓶');
INSERT INTO `ox_goods` VALUES ('67', '155088759935042', '155088759935045', '维达(Vinda) 抽纸 超韧3层130抽软抽*24包纸巾(小规格) 整箱销售', 'upload/goods/2019-02/5c70aaf0e5864.jpg', '1', '0', '70.00', '61.80', '10', '10000', '袋', '', '1', '0', '1', '1', '1', '48_74_75_', '75', '20', '21', '6', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70ab3ea666b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ab3e8958c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ab3e5f5a2.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:09:45', '0', '0', '0', 'upload/goods/2019-02/5c70aafb81932.jpg,upload/goods/2019-02/5c70aafbc4b7a.jpg,upload/goods/2019-02/5c70aafc19d2b.jpg,upload/goods/2019-02/5c70aafc59caa.jpg', '维达(Vinda) 抽纸 超韧3层130抽软抽*24包纸巾(小规格) 整箱销售', null, '1', '2019-02-23 10:09:16', '0', '维达(Vinda) 抽纸 超韧3层130抽软抽*24包纸巾(小规格) 整箱销售');
INSERT INTO `ox_goods` VALUES ('68', '155088780442217', '155088780442213', '清风 【第二件立减5元！多买多减！】抽纸原木纯品纸抽卫生纸3层餐巾纸共12包面巾纸家用纸巾抽纸', 'upload/goods/2019-02/5c70ab9b1b112.jpg', '1', '0', '45.00', '35.90', '10', '100000', '包', '', '1', '0', '1', '0', '1', '48_74_75_', '75', '20', '24', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70abdcdbe15.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70abdd6dc7c.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:11:47', '0', '0', '0', 'upload/goods/2019-02/5c70ab9ebf6cc.jpg,upload/goods/2019-02/5c70ab9f11d84.jpg', '清风 【第二件立减5元！多买多减！】抽纸原木纯品纸抽卫生纸3层餐巾纸共12包面巾纸家用纸巾抽纸', null, '1', '2019-02-23 10:11:47', '0', '清风 【第二件立减5元！多买多减！】抽纸原木纯品纸抽卫生纸3层餐巾纸共12包面巾纸家用纸巾抽纸');
INSERT INTO `ox_goods` VALUES ('69', '155088793047936', '155088793047938', '清风（APP）抽纸 柔韧2层200抽软抽*20包纸巾（新老包装交替发货）（整箱售卖）', 'upload/goods/2019-02/5c70ac1bc4583.jpg', '1', '0', '50.00', '46.50', '10', '10000', '箱子', '', '1', '1', '1', '0', '1', '48_74_75_', '75', '20', '24', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70ac5043ed4.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ac4f29c9d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ac4fbf360.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:13:50', '0', '0', '0', 'upload/goods/2019-02/5c70ac2fb8a90.jpg,upload/goods/2019-02/5c70ac30047cf.jpg', '清风（APP）抽纸 柔韧2层200抽软抽*20包纸巾（新老包装交替发货）（整箱售卖）', null, '1', '2019-02-23 10:13:50', '0', '清风（APP）抽纸 柔韧2层200抽软抽*20包纸巾（新老包装交替发货）（整箱售卖）');
INSERT INTO `ox_goods` VALUES ('70', '155088807225542', '155088807225542', '沙宣去屑洗发水水润去屑750ml（水润平衡 去屑轻盈 男士女士通用 新老包装随机发货）', 'upload/goods/2019-02/5c70acc11085f.jpg', '1', '0', '35.00', '27.90', '10', '100000', '瓶', '', '1', '0', '1', '0', '1', '51_164_168_', '168', '14', '15', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70ad0486a73.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ad04b316d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ad04d19bc.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:16:42', '0', '0', '0', 'upload/goods/2019-02/5c70acdac3597.jpg,upload/goods/2019-02/5c70acdb0d77d.jpg,upload/goods/2019-02/5c70acdb47553.jpg', '沙宣去屑洗发水水润去屑750ml（水润平衡 去屑轻盈 男士女士通用 新老包装随机发货）', null, '1', '2019-02-23 10:16:42', '0', '沙宣去屑洗发水水润去屑750ml（水润平衡 去屑轻盈 男士女士通用 新老包装随机发货）');
INSERT INTO `ox_goods` VALUES ('71', '155088822391516', '155088822391519', '马丁 男士沐浴露古龙香氛洗发水洁面乳套装（身体护理三件套）', 'upload/goods/2019-02/5c70ad43a2255.jpg', '1', '0', '150.00', '139.00', '10', '100000', '套', '', '1', '0', '1', '1', '1', '51_164_184_', '184', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70ad845f6c3.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ad84a05e2.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ad8528fd7.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:18:49', '0', '0', '0', 'upload/goods/2019-02/5c70ad4b1e69f.jpg,upload/goods/2019-02/5c70ad4b597fd.jpg,upload/goods/2019-02/5c70ad4b92e03.jpg', '马丁 男士沐浴露古龙香氛洗发水洁面乳套装（身体护理三件套）', null, '1', '2019-02-23 10:18:49', '0', '马丁 男士沐浴露古龙香氛洗发水洁面乳套装（身体护理三件套）');
INSERT INTO `ox_goods` VALUES ('72', '155088838546837', '155088838546839', '蓝月亮 芦荟抑菌 滋润保湿洗手液 300g/瓶', 'upload/goods/2019-02/5c70adfacbc42.jpg', '1', '0', '79.00', '71.50', '10', '100000', '瓶', '', '1', '1', '1', '0', '1', '51_164_168_', '168', '14', '17', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70ae29c22b0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ae2a4c02d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ae29329ae.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:21:46', '1', '0', '0', 'upload/goods/2019-02/5c70ae00bbfad.jpg,upload/goods/2019-02/5c70ae0102ae3.jpg', '蓝月亮 芦荟抑菌 滋润保湿洗手液 300g/瓶', null, '1', '2019-02-23 10:21:46', '0', '蓝月亮 芦荟抑菌 滋润保湿洗手液 300g/瓶');
INSERT INTO `ox_goods` VALUES ('73', '155088856959299', '155088856959290', '烟台红富士 苹果 5kg 一级铂金果 单果190-240g 新鲜水果', 'upload/goods/2019-02/5c70aeb179999.jpg', '1', '0', '120.00', '99.00', '10', '100000', '箱', '', '1', '1', '1', '0', '1', '47_61_73_', '73', '1', '2', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70aee9519bb.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70aee8c5cfd.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70aee83c1bd.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:37:25', '1', '0', '0', 'upload/goods/2019-02/5c70aeb955552.jpg,upload/goods/2019-02/5c70aeb9a0c6c.jpg,upload/goods/2019-02/5c70aeb9eb3e5.jpg', '烟台红富士 苹果 5kg 一级铂金果 单果190-240g 新鲜水果', null, '1', '2019-02-23 10:24:56', '0', '烟台红富士 苹果 5kg 一级铂金果 单果190-240g 新鲜水果,常温,安徽');
INSERT INTO `ox_goods` VALUES ('74', '155088872686997', '155088872686992', '新奇士Sunkist 美国进口脐橙 12个装 单果约140-190g 新鲜水果', 'upload/goods/2019-02/5c70af43e03b0.jpg', '1', '0', '65.00', '59.90', '10', '10000', '袋', '', '1', '1', '1', '0', '1', '47_61_72_', '72', '1', '2', '10', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70af5ad3db1.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:39:20', '0', '0', '0', 'upload/goods/2019-02/5c70af6416880.jpg,upload/goods/2019-02/5c70af645a298.jpg,upload/goods/2019-02/5c70af64a2eb9.jpg', '新奇士Sunkist 美国进口脐橙 12个装 单果约140-190g 新鲜水果', null, '1', '2019-02-23 10:26:46', '0', '新奇士Sunkist 美国进口脐橙 12个装 单果约140-190g 新鲜水果,常温,江西');
INSERT INTO `ox_goods` VALUES ('75', '155088901270129', '155088901270120', '华为（HUAWEI） 荣耀 畅玩7 全网通 移动联通电信4G 全面屏智能老人手机 双卡双待 金色 (2G RAM+16G ROM)', 'upload/goods/2019-02/5c70b08d0e3a2.jpg', '3', '0', '599.00', '538.00', '10', '900000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '66', '69', '5', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b0c533e06.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b0c5126d6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b0c55320d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b0c574d25.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:42:56', '1', '0', '1', 'upload/goods/2019-02/5c70b0e0a0e6f.jpg,upload/goods/2019-02/5c70b0e0db7fd.jpg,upload/goods/2019-02/5c70b0e11f452.jpg', '华为（HUAWEI） 荣耀 畅玩7 全网通 移动联通电信4G 全面屏智能老人手机 双卡双待 金色 (2G RAM+16G ROM)', null, '1', '2019-02-23 10:35:37', '0', '华为（HUAWEI） 荣耀 畅玩7 全网通 移动联通电信4G 全面屏智能老人手机 双卡双待 金色 (2G RAM+16G ROM),金色,16GB,32GB,64GB,黑色,蓝色,安卓,全高清FHD,4.6-5.0英寸,双核,2GB,4GB,16GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('76', '155088981799531', '155088981799538', '华为 HUAWEI nova 3全面屏高清四摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G手机 双卡双待', 'upload/goods/2019-02/5c70b3bd08499.jpg', '3', '0', '3100.00', '3088.00', '10', '600000', '台', '', '1', '1', '1', '0', '1', '334_348_351_', '351', '66', '67', '5', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b3e61f90f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b3e64faa3.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b3e682eff.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:48:28', '1', '0', '1', 'upload/goods/2019-02/5c70b3c372559.jpg,upload/goods/2019-02/5c70b3c3b01af.jpg,upload/goods/2019-02/5c70b3c3e8bfd.jpg', '华为 HUAWEI nova 3全面屏高清四摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G手机 双卡双待', null, '1', '2019-02-23 10:48:28', '0', '华为 HUAWEI nova 3全面屏高清四摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G手机 双卡双待,亮黑色,64,128,浅艾蓝,蓝楹紫,安卓,超高清FHD以上,4.6-5.0英寸,八核,2GB,4GB,8GB,16GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('77', '155089011352223', '155089011352225', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G手机', 'upload/goods/2019-02/5c70b4e9ee51e.jpg', '3', '0', '4999.00', '4799.00', '10', '600000', '台', '迎国庆震撼促销，优惠错过不再有！', '1', '1', '1', '0', '1', '334_348_351_', '351', '66', '67', '5', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b578ea750.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b579135ef.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b57938ba0.jpg\" alt=\"\" />', '1', '0', '2019-02-23 10:55:18', '0', '0', '1', 'upload/goods/2019-02/5c70b54b857b3.jpg,upload/goods/2019-02/5c70b54bc5349.jpg,upload/goods/2019-02/5c70b54c0ed60.jpg', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G手机', null, '1', '2019-02-23 10:55:18', '0', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G手机,亮黑色,64GB,128GB,极光色,樱粉金全,安卓,超高清FHD以上,5.1-5.5英寸,八核,2GB,4GB,8GB,16GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('78', '155089055208439', '155089055208436', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G手机 双卡双待', 'upload/goods/2019-02/5c70b6730392e.jpg', '3', '0', '3188.00', '3088.00', '10', '900000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '66', '67', '5', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b6980261a.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b6975e69f.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:00:25', '0', '0', '1', 'upload/goods/2019-02/5c70b677e4fc0.jpg,upload/goods/2019-02/5c70b6785ef52.jpg,upload/goods/2019-02/5c70b67828c15.jpg', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G手机 双卡双待', null, '1', '2019-02-23 11:00:25', '0', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G手机 双卡双待,极光色,32,64,128,珠光贝母色,亮黑色,安卓,高清HD,4.6-5.0英寸,八核,4GB,8GB,16GB,32GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('79', '155089084437307', '155089084437307', '华为（HUAWEI） 华为荣耀V10手机 魅丽红 全网通高配版(6G+64G)', 'upload/goods/2019-02/5c70b7f9216f8.jpg', '3', '0', '2800.00', '1979.00', '10', '600000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '66', '67', '5', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b81e6f97f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b81d6320b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b81de92b2.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:06:16', '0', '0', '1', 'upload/goods/2019-02/5c70b7fe9fbbc.jpg,upload/goods/2019-02/5c70b7fee12ab.jpg,upload/goods/2019-02/5c70b7ff29939.jpg', '华为（HUAWEI） 华为荣耀V10手机 魅丽红 全网通高配版(6G+64G)', null, '1', '2019-02-23 11:06:16', '0', '华为（HUAWEI） 华为荣耀V10手机 魅丽红 全网通高配版(6G+64G),魅丽红,16,32,64,沙滩金,安卓,全高清FHD,4.6-5.0英寸,四核,4GB,8GB,16GB,32GB,16GB,32GB,64GB');
INSERT INTO `ox_goods` VALUES ('80', '155089130317329', '155089130317321', 'Apple iPhone 8 Plus (A1864) 64GB 金色 移动联通电信4G手机', 'upload/goods/2019-02/5c70b9839a2dc.jpg', '5', '0', '5000.00', '4799.00', '10', '600000', '台', '爆款直降】5.5英寸高清视网膜显示屏！抗水防尘！支持无线充！', '1', '0', '1', '0', '1', '334_348_351_', '351', '70', '71', '4', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70b99fbbc65.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b99fe4caf.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b9a06da8c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70b9a0e9339.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:12:47', '0', '0', '1', 'upload/goods/2019-02/5c70b989097a9.jpg,upload/goods/2019-02/5c70b9894cdd9.jpg,upload/goods/2019-02/5c70b98985056.jpg', 'Apple iPhone 8 Plus (A1864) 64GB 金色 移动联通电信4G手机', null, '1', '2019-02-23 11:12:47', '0', 'Apple iPhone 8 Plus (A1864) 64GB 金色 移动联通电信4G手机,金色,32,128,深空灰,银色,苹果,超高清FHD以上,5.1-5.5英寸,八核,8GB,32GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('81', '155089160666265', '155089160666265', 'Apple iPhone 7 Plus (A1661) 32G 黑色 移动联通电信4G手机', 'upload/goods/2019-02/5c70bac7e38e1.jpg', '5', '0', '4000.00', '3699.00', '10', '600000', '台', '5.5英寸高清视网膜显示屏！抗水防尘！1200万像素双镜头人像模式！4K视频录制！', '1', '1', '1', '0', '1', '334_348_351_', '351', '70', '71', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70bae19aea7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bae11a3f1.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bae22483c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bae29ce21.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:17:18', '0', '0', '1', 'upload/goods/2019-02/5c70bacf79759.jpg,upload/goods/2019-02/5c70bacfbb231.jpg,upload/goods/2019-02/5c70bacff250e.jpg', 'Apple iPhone 7 Plus (A1661) 32G 黑色 移动联通电信4G手机', null, '1', '2019-02-23 11:17:18', '0', 'Apple iPhone 7 Plus (A1661) 32G 黑色 移动联通电信4G手机,黑色,32,128,金色,玫瑰金,苹果,全高清FHD,5.1-5.5英寸,四核,4GB,16GB,32GB,128GB');
INSERT INTO `ox_goods` VALUES ('82', '155089192280471', '155089192280471', 'Apple 苹果 iPhone Xs 手机 金色 全网通 64GB', 'upload/goods/2019-02/5c70bbce1a234.jpg', '5', '0', '8088.00', '8088.00', '10', '400000', '台', '上市抢购，售完需要预约等待', '1', '0', '1', '1', '1', '334_348_351_', '351', '70', '75', '4', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70bc1821c37.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bc183dd75.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bc185f4a5.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bc17e689c.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:22:35', '0', '0', '1', 'upload/goods/2019-02/5c70bbd412e5a.jpg,upload/goods/2019-02/5c70bbd451a50.jpg,upload/goods/2019-02/5c70bbd485e4d.jpg', 'Apple 苹果 iPhone Xs 手机 金色 全网通 64GB', null, '1', '2019-02-23 11:22:35', '0', 'Apple 苹果 iPhone Xs 手机 金色 全网通 64GB,金色,64,128,深空灰,苹果,超高清FHD以上,5.6英寸以上,八核,16GB,32GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('83', '155089219666031', '155089219666036', 'Apple iPad mini 4 平板电脑 7.9英寸（128G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9Q2CH）金色', 'upload/goods/2019-02/5c70bce555b38.jpg', '5', '0', '2699.00', '2699.00', '10', '100000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '72', '73', '4', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70bd098fd31.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bd09ace10.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:25:27', '0', '0', '0', '', 'Apple iPad mini 4 平板电脑 7.9英寸（128G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9Q2CH）金色', null, '1', '2019-02-23 11:25:00', '0', 'Apple iPad mini 4 平板电脑 7.9英寸（128G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9Q2CH）金色,全高清FHD,5.6英寸以上,四核,16GB,32GB');
INSERT INTO `ox_goods` VALUES ('84', '155089256894166', '155089256894167', '十月稻田 稻花香米 东北大米 大米5kg', 'upload/goods/2019-02/5c70be4e021d5.jpg', '11', '0', '60.00', '55.00', '10', '1000000', '包', '饱润香甜 喜欢你爱吃的样子', '1', '0', '1', '1', '1', '50_222_237_', '237', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70be8709422.png\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70be8786828.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70be868778f.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:31:33', '0', '0', '0', 'upload/goods/2019-02/5c70be54e2550.jpg,upload/goods/2019-02/5c70be55426cc.jpg,upload/goods/2019-02/5c70be55a58d3.jpg', '十月稻田 稻花香米 东北大米 大米5kg', null, '1', '2019-02-23 11:31:33', '0', '十月稻田 稻花香米 东北大米 大米5kg');
INSERT INTO `ox_goods` VALUES ('85', '155089274810992', '155089274810999', '十月稻田 长粒香大米 东北大米5kg', 'upload/goods/2019-02/5c70bf06eb2a7.jpg', '11', '0', '31.00', '39.00', '10', '100000', '袋', '一年一季 鲜稻加工', '1', '1', '1', '1', '1', '50_221_229_', '229', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70bf4a167af.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bf4b28ce4.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bf4bac293.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bf4c37399.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bf4aa31d0.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:35:03', '0', '0', '0', 'upload/goods/2019-02/5c70bf0c132c4.jpg,upload/goods/2019-02/5c70bf0c54d9b.jpg', '十月稻田 长粒香大米 东北大米5kg', null, '1', '2019-02-23 11:35:03', '0', '十月稻田 长粒香大米 东北大米5kg');
INSERT INTO `ox_goods` VALUES ('86', '155089290713709', '155089290713709', '福临门 东北大米 水晶米 中粮出品 大米5kg', 'upload/goods/2019-02/5c70bf9fbfe3c.jpg', '11', '0', '30.00', '28.50', '10', '100000', '袋', '口味纯正 清香扑鼻', '1', '0', '1', '0', '1', '50_221_229_', '229', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70bfd728134.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70bfd6c25df.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:37:03', '0', '0', '0', 'upload/goods/2019-02/5c70bfa3b10d6.jpg,upload/goods/2019-02/5c70bfa4004c5.jpg,upload/goods/2019-02/5c70bfa444a95.jpg', '福临门 东北大米 水晶米 中粮出品 大米5kg', null, '1', '2019-02-23 11:37:03', '0', '福临门 东北大米 水晶米 中粮出品 大米5kg');
INSERT INTO `ox_goods` VALUES ('87', '155089302644087', '155089302644089', '福临门 泰玉香 一品茉莉香米 进口原粮 大米 中粮出品 5kg（包装更新，新老包装随机发放）', 'upload/goods/2019-02/5c70c02c69f69.jpg', '11', '0', '31.00', '29.90', '10', '100000', '袋', '米香浓郁 软滑爽口', '1', '0', '1', '1', '1', '50_221_229_', '229', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c06148088.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c06059993.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c060c0a1b.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:39:28', '0', '0', '0', 'upload/goods/2019-02/5c70c03220117.jpg,upload/goods/2019-02/5c70c03263f17.jpg', '福临门 泰玉香 一品茉莉香米 进口原粮 大米 中粮出品 5kg（包装更新，新老包装随机发放）', null, '1', '2019-02-23 11:39:28', '0', '福临门 泰玉香 一品茉莉香米 进口原粮 大米 中粮出品 5kg（包装更新，新老包装随机发放）');
INSERT INTO `ox_goods` VALUES ('88', '155089319227536', '155089319227536', '华润 五丰 东北大米 优选东北珍珠米5kg', 'upload/goods/2019-02/5c70c0c84b2e4.jpg', '11', '0', '32.00', '28.90', '10', '100000', '袋', '清香甘甜 弹软适口', '1', '0', '1', '0', '1', '50_221_229_', '229', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c0ebf1f05.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c0ec94af9.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:41:39', '0', '0', '0', 'upload/goods/2019-02/5c70c0ccbef74.jpg,upload/goods/2019-02/5c70c0cd08d73.jpg', '华润 五丰 东北大米 优选东北珍珠米5kg', null, '1', '2019-02-23 11:41:39', '0', '华润 五丰 东北大米 优选东北珍珠米5kg');
INSERT INTO `ox_goods` VALUES ('89', '155089332837014', '155089332837013', '十月稻田 黄小米 （ 月子米 小米粥 杂粮 真空装 粥米伴侣 大米搭档）1kg', 'upload/goods/2019-02/5c70c1478f9bc.jpg', '11', '0', '30.00', '21.50', '10', '100000', '包', '营养早餐 从一碗小米粥开始', '1', '0', '1', '0', '1', '50_222_237_', '237', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c1819cded.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c181c42de.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:44:05', '0', '0', '0', 'upload/goods/2019-02/5c70c14c9d1b6.jpg,upload/goods/2019-02/5c70c14d00dca.jpg,upload/goods/2019-02/5c70c14d47aab.jpg', '十月稻田 黄小米 （ 月子米 小米粥 杂粮 真空装 粥米伴侣 大米搭档）1kg', null, '1', '2019-02-23 11:44:05', '0', '十月稻田 黄小米 （ 月子米 小米粥 杂粮 真空装 粥米伴侣 大米搭档）1kg');
INSERT INTO `ox_goods` VALUES ('90', '155089347326748', '155089347326749', '十月稻田 八宝粥米（红豆 小麦仁 糯米 绿豆 黑米 薏仁米等 杂粮 腊八粥料 大米伴侣） 1kg', 'upload/goods/2019-02/5c70c1eca012e.jpg', '11', '0', '20.00', '16.90', '10', '100000', '包', '', '1', '0', '1', '0', '1', '50_222_240_', '240', '76', '78', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c206d6652.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c2073b9d7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c207b572b.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:47:38', '0', '0', '0', 'upload/goods/2019-02/5c70c258d9014.jpg,upload/goods/2019-02/5c70c2592ed7e.jpg,upload/goods/2019-02/5c70c2597eae8.jpg', '十月稻田 八宝粥米（红豆 小麦仁 糯米 绿豆 黑米 薏仁米等 杂粮 腊八粥料 大米伴侣） 1kg', null, '1', '2019-02-23 11:46:59', '0', '十月稻田 八宝粥米（红豆 小麦仁 糯米 绿豆 黑米 薏仁米等 杂粮 腊八粥料 大米伴侣） 1kg');
INSERT INTO `ox_goods` VALUES ('91', '155089366417335', '155089366417339', '十月稻田 黑米（ 杂粮 粗粮 真空装 大米 粥米伴侣） 1kg', 'upload/goods/2019-02/5c70c2ca22bfa.jpg', '11', '0', '21.00', '19.80', '10', '100000', '袋', '', '1', '0', '1', '1', '1', '50_222_240_', '240', '76', '78', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c2f6a5bdd.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c310a88bd.jpg\" alt=\"\" /> <img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70c32ff17e3.jpg\" alt=\"\" /> <img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70c32f6ea05.jpg\" alt=\"\" /> <img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70c32f4de8d.jpg\" alt=\"\" /><img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70c32f9051d.jpg\" alt=\"\" /><img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70c32fcfccb.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c32f2dae6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c32faddcc.jpg\" alt=\"\" /> \n<p>\n	<br />\n</p>', '1', '0', '2019-02-23 11:54:43', '0', '0', '0', 'upload/goods/2019-02/5c70c2d20a336.jpg,upload/goods/2019-02/5c70c2d252f57.jpg,upload/goods/2019-02/5c70c2d298c97.jpg', '十月稻田 黑米（ 杂粮 粗粮 真空装 大米 粥米伴侣） 1kg', null, '1', '2019-02-23 11:54:43', '0', '十月稻田 黑米（ 杂粮 粗粮 真空装 大米 粥米伴侣） 1kg');
INSERT INTO `ox_goods` VALUES ('92', '155089411636815', '155089411636810', '柴火大院 柴火长粒香 东北大米 5kg', 'upload/goods/2019-02/5c70c44994807.jpg', '11', '0', '60.00', '55.00', '10', '1000000', '袋', '浓郁米香 颗粒饱满', '1', '0', '1', '0', '1', '50_221_229_', '229', '76', '77', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c480846c5.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c4804e388.jpg\" alt=\"\" />', '1', '0', '2019-02-23 11:56:56', '0', '0', '0', 'upload/goods/2019-02/5c70c44d70e94.jpg,upload/goods/2019-02/5c70c44dadb4a.jpg', '柴火大院 柴火长粒香 东北大米 5kg', null, '1', '2019-02-23 11:56:56', '0', '柴火大院 柴火长粒香 东北大米 5kg');
INSERT INTO `ox_goods` VALUES ('93', '155089430080874', '155089430080877', '小米（MI） 红米6A 移动联通电信全网通4G 老年智能老人手机 双卡双待 流沙金 (3G RAM+32G ROM)', 'upload/goods/2019-02/5c70c50e739b3.jpg', '1', '0', '799.00', '688.00', '10', '600000', '台', '', '1', '0', '1', '0', '1', '334_348_351_', '351', '31', '34', '1', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c5928a726.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c59221b46.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:03:29', '0', '0', '1', 'upload/goods/2019-02/5c70c5229073a.jpg,upload/goods/2019-02/5c70c522d5caa.jpg', '小米（MI） 红米6A 移动联通电信全网通4G 老年智能老人手机 双卡双待 流沙金 (3G RAM+32G ROM)', null, '1', '2019-02-23 12:03:29', '1', '小米（MI） 红米6A 移动联通电信全网通4G 老年智能老人手机 双卡双待 流沙金 (3G RAM+32G ROM),沙滩金,16,32,巴黎蓝,铂银灰,安卓,标清SD,4.6-5.0英寸,双核,2GB,4GB,16GB,32GB');
INSERT INTO `ox_goods` VALUES ('94', '155089461089442', '155089461089448', '小米（MI） 红米6 小米手机 流沙金 全网通 (3G+32G)', 'upload/goods/2019-02/5c70c67722b48.jpg', '1', '0', '799.00', '688.00', '10', '400000', '台', '', '1', '0', '1', '0', '1', '334_348_351_', '351', '31', '34', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c6a369645.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c6a39caa1.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c6a3cd01d.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:07:17', '0', '0', '1', 'upload/goods/2019-02/5c70c6b257c73.jpg,upload/goods/2019-02/5c70c6b2931b9.jpg', '小米（MI） 红米6 小米手机 流沙金 全网通 (3G+32G)', null, '1', '2019-02-23 12:07:17', '0', '小米（MI） 红米6 小米手机 流沙金 全网通 (3G+32G),流沙金,32,64,樱花粉,安卓,标清SD,4.6-5.0英寸,四核,4GB,8GB,32GB,64GB');
INSERT INTO `ox_goods` VALUES ('95', '155089483928856', '155089483928854', '小米（MI） 小米mix2s 手机 黑色 全网通(6GB+128GB)', 'upload/goods/2019-02/5c70c74fde4d7.jpg', '1', '0', '2999.00', '2599.00', '10', '400000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '31', '34', '1', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c77e85992.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c77f279cd.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:11:06', '0', '0', '1', 'upload/goods/2019-02/5c70c75582958.jpg,upload/goods/2019-02/5c70c755be286.jpg,upload/goods/2019-02/5c70c756051a4.jpg', '小米（MI） 小米mix2s 手机 黑色 全网通(6GB+128GB)', null, '1', '2019-02-23 12:11:06', '0', '小米（MI） 小米mix2s 手机 黑色 全网通(6GB+128GB),黑色,132,64,白色,安卓,全高清FHD,5.1-5.5英寸,八核,4GB,8GB,32GB,64GB');
INSERT INTO `ox_goods` VALUES ('96', '155089506757357', '155089506757352', '小米（MI） 红米6 学生手机 流沙金 4G+64G 全网通', 'upload/goods/2019-02/5c70c82579097.jpg', '1', '0', '999.00', '899.00', '10', '40000', '台', '先到先得，售完即止', '1', '0', '1', '1', '1', '334_348_351_', '351', '31', '34', '1', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c878b8749.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:43:00', '0', '0', '1', 'upload/goods/2019-02/5c70c82d0c02f.jpg,upload/goods/2019-02/5c70c82d4c396.jpg,upload/goods/2019-02/5c70c82d80b7a.jpg', '小米（MI） 红米6 学生手机 流沙金 4G+64G 全网通', null, '1', '2019-02-23 12:15:05', '1', '小米（MI） 红米6 学生手机 流沙金 4G+64G 全网通,流沙金,32GB,64GB,樱花粉,安卓,标清SD,5.1-5.5英寸,四核,4GB,32GB,64GB');
INSERT INTO `ox_goods` VALUES ('97', '155089535937623', '155089535937627', '小米（MI） 红米Note5 全网通4G 智能手机 双卡双待 玫瑰金 4G+64G', 'upload/goods/2019-02/5c70c939e7963.jpg', '1', '0', '1099.00', '1099.00', '10', '600000', '台', '新品上市，值得拥有', '1', '1', '1', '1', '1', '334_348_351_', '351', '31', '34', '1', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70c985c9e27.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c98654f2d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c984f0b0f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70c9854aae1.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:42:46', '1', '0', '1', 'upload/goods/2019-02/5c70c94092f68.jpg,upload/goods/2019-02/5c70c940cf836.jpg', '小米（MI） 红米Note5 全网通4G 智能手机 双卡双待 玫瑰金 4G+64G', null, '1', '2019-02-23 12:20:49', '1', '小米（MI） 红米Note5 全网通4G 智能手机 双卡双待 玫瑰金 4G+64G,玫瑰金,64GB,128GB,金色,黑色,安卓,高清HD,5.1-5.5英寸,八核,8GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('98', '155089572512320', '155089572512326', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', 'upload/goods/2019-02/5c70cb554764c.jpg', '1', '0', '3799.00', '3700.00', '10', '40000', '台', '', '1', '1', '1', '1', '1', '334_348_351_', '351', '31', '35', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70cac61125c.gif\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cac57f3f5.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:42:22', '2', '0', '1', 'upload/goods/2019-02/5c70cb125b360.jpg,upload/goods/2019-02/5c70cb1295136.jpg', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', null, '1', '2019-02-23 12:25:59', '0', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待,亮瓷黑,64GB,128GB,电光紫,安卓,全高清FHD,5.1-5.5英寸,八核,8GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('99', '155089600732135', '155089600732131', '一加 5T（A5010）手机 OnePlus5T 砂岩白 全网通(8G+128G)', 'upload/goods/2019-02/5c70cba74c71f.jpg', '1', '0', '2719.00', '2719.00', '10', '40000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '31', '35', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70cbdb4ee16.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:29:33', '1', '0', '1', 'upload/goods/2019-02/5c70cbab66dea.jpg,upload/goods/2019-02/5c70cbaba80f1.jpg', '一加 5T（A5010）手机 OnePlus5T 砂岩白 全网通(8G+128G)', null, '1', '2019-02-23 12:29:33', '0', '一加 5T（A5010）手机 OnePlus5T 砂岩白 全网通(8G+128G),砂岩白,64GB,128GB,熔岩红,安卓,全高清FHD,5.1-5.5英寸,八核,8GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('100', '155089624395288', '155089624395287', 'vivo Y81s 刘海全面屏 3GB+64GB 宝石红 移动联通电信4G手机', 'upload/goods/2019-02/5c70cc9bb859d.jpg', '1', '0', '1300.00', '1198.00', '10', '40000', '台', '', '1', '0', '1', '1', '1', '334_348_351_', '351', '31', '33', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70cd25de69b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cd265209b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cd26cd948.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:41:40', '2', '0', '1', 'upload/goods/2019-02/5c70cca0d3089.jpg,upload/goods/2019-02/5c70cca11c2cf.jpg', 'vivo Y81s 刘海全面屏 3GB+64GB 宝石红 移动联通电信4G手机', null, '1', '2019-02-23 12:33:50', '0', 'vivo Y81s 刘海全面屏 3GB+64GB 宝石红 移动联通电信4G手机,香槟金,32GB,64GB,宝石红,安卓,高清HD,5.1-5.5英寸,四核,4GB,32GB,64GB');
INSERT INTO `ox_goods` VALUES ('101', '155089643205865', '155089643205863', 'vivo X23全息幻彩版 6GB+128GB 星语新愿 水滴屏全面屏 游戏手机 移动联通电信全网通4G手机', 'upload/goods/2019-02/5c70cd9ed1b28.jpg', '1', '0', '2799.00', '2799.00', '10', '30000', '台', '', '1', '1', '1', '1', '1', '334_348_351_', '351', '31', '33', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70cdb79a611.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cdb703fae.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cdb823fa7.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:38:53', '1', '0', '1', 'upload/goods/2019-02/5c70cdce66f09.jpg,upload/goods/2019-02/5c70cdcea7658.jpg', 'vivo X23全息幻彩版 6GB+128GB 星语新愿 水滴屏全面屏 游戏手机 移动联通电信全网通4G手机', null, '1', '2019-02-23 12:38:53', '1', 'vivo X23全息幻彩版 6GB+128GB 星语新愿 水滴屏全面屏 游戏手机 移动联通电信全网通4G手机,星语新愿,64GB,北极晨曦,星夜海洋,安卓,超高清FHD以上,5.1-5.5英寸,八核,16GB,64GB');
INSERT INTO `ox_goods` VALUES ('102', '155089674864374', '155089674864371', '荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待', 'upload/goods/2019-02/5c70cf18228bc.jpg', '1', '0', '1199.00', '1199.00', '0', '40000', '台', '', '1', '1', '1', '1', '1', '334_348_351_', '351', '31', '33', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70cf1213531.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cf123ec8b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70cf125a9e2.jpg\" alt=\"\" />', '1', '0', '2019-02-23 12:42:01', '1', '0', '1', 'upload/goods/2019-02/5c70cee3b1db6.jpg,upload/goods/2019-02/5c70cee3ed2fc.jpg,upload/goods/2019-02/5c70cee42ada7.jpg', '荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待', null, '1', '2019-02-23 12:42:01', '0', '荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待,魅海蓝,64GB,128GB,碧玉青,安卓,全高清FHD,5.1-5.5英寸,四核,8GB,64GB,128GB');
INSERT INTO `ox_goods` VALUES ('103', '155089913335812', '155089913335817', '咕呗孕妇枕头护腰侧睡枕侧卧枕靠枕用品u型枕多功能托腹睡觉抱枕 蜜橙色+托腹枕', 'upload/goods/2019-02/5c70d821ad4c4.jpg', '1', '0', '169.00', '150.00', '10', '100000', '套', '', '1', '0', '1', '1', '1', '55_108_116_', '116', '25', '28', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70d84723261.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70d84740ef8.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70d847c3507.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70d8484c2e4.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:22:27', '0', '0', '0', 'upload/goods/2019-02/5c70d83384c68.jpg,upload/goods/2019-02/5c70d833cccd1.jpg,upload/goods/2019-02/5c70d834143bf.jpg', '咕呗孕妇枕头护腰侧睡枕侧卧枕靠枕用品u型枕多功能托腹睡觉抱枕 蜜橙色+托腹枕', null, '1', '2019-02-23 13:22:27', '0', '咕呗孕妇枕头护腰侧睡枕侧卧枕靠枕用品u型枕多功能托腹睡觉抱枕 蜜橙色+托腹枕');
INSERT INTO `ox_goods` VALUES ('104', '155089936898663', '155089936898769', '十月结晶 孕妇待产包母婴全套秋冬季产妇入院包产褥期专用卫生巾月子牙刷牙膏入院必备用品套装待产护理 基础款16件套', 'upload/goods/2019-02/5c70d8ddbc601.png', '1', '0', '150.00', '119.00', '10', '1000000', '套', '', '1', '1', '1', '0', '1', '55_108_116_', '116', '25', '28', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70d9419443f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70d94118b92.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70d940e9762.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:25:43', '0', '0', '0', 'upload/goods/2019-02/5c70d8e52cae1.jpg,upload/goods/2019-02/5c70d8e56ce48.jpg,upload/goods/2019-02/5c70d8e5b0478.jpg,upload/goods/2019-02/5c70d8e5ef06e.jpg', '十月结晶 孕妇待产包母婴全套秋冬季产妇入院包产褥期专用卫生巾月子牙刷牙膏入院必备用品套装待产护理 基础款16件套', null, '1', '2019-02-23 13:25:43', '0', '十月结晶 孕妇待产包母婴全套秋冬季产妇入院包产褥期专用卫生巾月子牙刷牙膏入院必备用品套装待产护理 基础款16件套');
INSERT INTO `ox_goods` VALUES ('105', '155089956434078', '155089956434073', '十月结晶婴儿肚脐贴新生儿透气护脐贴宝宝洗澡游泳防水脐带贴10片', 'upload/goods/2019-02/5c70d9c352733.jpg', '1', '0', '15.00', '13.50', '10', '100000', '张', '', '1', '1', '1', '0', '1', '55_108_111_', '111', '25', '28', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70da1196318.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70da1118f13.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70da1097668.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:29:07', '0', '0', '0', 'upload/goods/2019-02/5c70d9c95d085.jpg,upload/goods/2019-02/5c70d9c9a54d6.jpg', '十月结晶婴儿肚脐贴新生儿透气护脐贴宝宝洗澡游泳防水脐带贴10片', null, '1', '2019-02-23 13:29:07', '0', '十月结晶婴儿肚脐贴新生儿透气护脐贴宝宝洗澡游泳防水脐带贴10片');
INSERT INTO `ox_goods` VALUES ('106', '155089978796452', '155089978796452', '全棉时代 婴儿纯棉柔巾/抽纸巾 干湿柔巾手帕纸新生儿 11*20cm 6包/提', 'upload/goods/2019-02/5c70da7502a7e.jpg', '1', '0', '90.00', '81.00', '10', '100000', '提', '', '1', '1', '1', '1', '1', '48_74_75_', '75', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70daa929f55.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70daa81eb69.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70daa89ee4f.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:32:52', '1', '0', '0', 'upload/goods/2019-02/5c70da79943a4.jpg,upload/goods/2019-02/5c70da79e1617.jpg,upload/goods/2019-02/5c70da7a23ee3.jpg', '全棉时代 婴儿纯棉柔巾/抽纸巾 干湿柔巾手帕纸新生儿 11*20cm 6包/提', null, '1', '2019-02-23 13:31:59', '0', '全棉时代 婴儿纯棉柔巾/抽纸巾 干湿柔巾手帕纸新生儿 11*20cm 6包/提');
INSERT INTO `ox_goods` VALUES ('107', '155089999028314', '155089999028310', 'gb好孩子 婴儿湿巾 干湿两用纯棉柔巾 100片*8包', 'upload/goods/2019-02/5c70db5f17422.jpg', '1', '0', '90.00', '85.00', '10', '100000', '包', '', '1', '1', '1', '0', '1', '55_108_110_', '110', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70dbd302e78.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dbd46c64a.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dbd3e309d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dbd36413f.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:37:22', '1', '0', '0', 'upload/goods/2019-02/5c70db6b0d6a6.jpg,upload/goods/2019-02/5c70db6b49f75.jpg,upload/goods/2019-02/5c70db6b802b1.jpg', 'gb好孩子 婴儿湿巾 干湿两用纯棉柔巾 100片*8包', null, '1', '2019-02-23 13:37:22', '0', 'gb好孩子 婴儿湿巾 干湿两用纯棉柔巾 100片*8包');
INSERT INTO `ox_goods` VALUES ('108', '155090027681851', '155090027681852', '安慕斯 婴儿棉柔巾15cm*20cm 100抽*6包加大加厚宝宝手口干湿柔巾抽纸新生儿棉手帕纸巾', 'upload/goods/2019-02/5c70dc6b2c948.jpg', '1', '0', '78.00', '65.00', '10', '100000', '包', '', '1', '1', '1', '0', '1', '48_74_75_', '75', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70dc9ddd505.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dc9e79397.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:40:11', '0', '0', '0', 'upload/goods/2019-02/5c70dcb772bcc.jpg,upload/goods/2019-02/5c70dcb7b3aeb.jpg,upload/goods/2019-02/5c70dcb7ef801.jpg', '安慕斯 婴儿棉柔巾15cm*20cm 100抽*6包加大加厚宝宝手口干湿柔巾抽纸新生儿棉手帕纸巾', null, '1', '2019-02-23 13:40:11', '0', '安慕斯 婴儿棉柔巾15cm*20cm 100抽*6包加大加厚宝宝手口干湿柔巾抽纸新生儿棉手帕纸巾');
INSERT INTO `ox_goods` VALUES ('109', '155090045438071', '155090045438072', '全棉时代 盒装居家洁面纯棉柔巾 纯棉抽纸巾洗脸巾擦脸巾 20*20cm 100片/盒-经济型', 'upload/goods/2019-02/5c70dd1048084.jpg', '1', '0', '23.00', '18.90', '10', '100000', '盒', '', '1', '0', '1', '0', '1', '48_74_75_', '75', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70dd71ca0e7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dd7048657.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dd70c2f64.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dd714c129.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:43:27', '0', '0', '0', 'upload/goods/2019-02/5c70dd3e2b9ec.jpg,upload/goods/2019-02/5c70dd3e71efd.jpg,upload/goods/2019-02/5c70dd3ebb6d6.jpg', '全棉时代 盒装居家洁面纯棉柔巾 纯棉抽纸巾洗脸巾擦脸巾 20*20cm 100片/盒-经济型', null, '1', '2019-02-23 13:43:27', '0', '全棉时代 盒装居家洁面纯棉柔巾 纯棉抽纸巾洗脸巾擦脸巾 20*20cm 100片/盒-经济型');
INSERT INTO `ox_goods` VALUES ('110', '155090063484202', '155090063484202', '子初婴儿隔尿垫 防水透气新生儿床单儿童一次性床垫50片 33*45cm', 'upload/goods/2019-02/5c70ddd9954e7.jpg', '1', '0', '35.00', '33.00', '10', '100000', '包', '', '1', '1', '1', '0', '1', '48_74_75_', '75', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70de35bd696.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70de34c14de.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70de353c7f8.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:46:48', '0', '0', '0', 'upload/goods/2019-02/5c70dddddf18d.jpg,upload/goods/2019-02/5c70ddde3df80.jpg,upload/goods/2019-02/5c70ddde8dceb.jpg', '子初婴儿隔尿垫 防水透气新生儿床单儿童一次性床垫50片 33*45cm', null, '1', '2019-02-23 13:46:48', '1', '子初婴儿隔尿垫 防水透气新生儿床单儿童一次性床垫50片 33*45cm');
INSERT INTO `ox_goods` VALUES ('111', '155090085389956', '155090085389957', '怡恩贝（ein.b）婴儿护肤柔湿巾 80片*5包 手口湿纸巾带盖抽纸湿巾', 'upload/goods/2019-02/5c70dec2f3243.jpg', '1', '0', '23.00', '19.90', '10', '1000000', '盒', '', '1', '1', '1', '0', '1', '48_74_265_', '265', '25', '27', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70def39ab59.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70def472701.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70def3e9d0c.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:50:05', '0', '0', '0', 'upload/goods/2019-02/5c70decad920f.jpg,upload/goods/2019-02/5c70decb26e8e.jpg,upload/goods/2019-02/5c70decb61c04.jpg', '怡恩贝（ein.b）婴儿护肤柔湿巾 80片*5包 手口湿纸巾带盖抽纸湿巾', null, '1', '2019-02-23 13:50:05', '0', '怡恩贝（ein.b）婴儿护肤柔湿巾 80片*5包 手口湿纸巾带盖抽纸湿巾');
INSERT INTO `ox_goods` VALUES ('112', '155090103947712', '155090103947717', '多米贝贝孕妇枕头护腰侧睡枕U型卧枕托腹睡觉神器抱枕怀孕期用品 蓝云雨滴', 'upload/goods/2019-02/5c70df758b309.jpg', '1', '0', '50.00', '39.50', '10', '100000', '个', '', '1', '0', '1', '0', '1', '55_108_116_', '116', '25', '26', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70dfaa82a6f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70dfa9eb22e.jpg\" alt=\"\" />', '1', '0', '2019-02-23 13:52:52', '0', '0', '0', 'upload/goods/2019-02/5c70df7b0b17b.jpg,upload/goods/2019-02/5c70df7b48601.jpg,upload/goods/2019-02/5c70df7b84317.jpg', '多米贝贝孕妇枕头护腰侧睡枕U型卧枕托腹睡觉神器抱枕怀孕期用品 蓝云雨滴', null, '1', '2019-02-23 13:52:52', '0', '多米贝贝孕妇枕头护腰侧睡枕U型卧枕托腹睡觉神器抱枕怀孕期用品 蓝云雨滴');
INSERT INTO `ox_goods` VALUES ('113', '155090120760576', '155090120760575', '精品脐橙 约3kg装 铂金果 家庭分享装 新老包装随机发货 橙子水果', 'upload/goods/2019-02/5c70e01ca013e.jpg', '1', '0', '51.00', '48.50', '10', '100000', '箱', '', '1', '0', '1', '0', '1', '47_61_72_', '72', '1', '2', '8', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e04c04bbb.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e04c29d84.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e04c5ca10.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:37:10', '1', '0', '0', 'upload/goods/2019-02/5c70e0239d006.jpg,upload/goods/2019-02/5c70e02406dc4.jpg', '精品脐橙 约3kg装 铂金果 家庭分享装 新老包装随机发货 橙子水果', null, '1', '2019-02-23 13:55:28', '0', '精品脐橙 约3kg装 铂金果 家庭分享装 新老包装随机发货 橙子水果,常温,江西');
INSERT INTO `ox_goods` VALUES ('114', '155090138700303', '155090138700303', '潘苹果 花牛苹果/蛇果 12个 单果180-210g 净重4.5斤 自营水果', 'upload/goods/2019-02/5c70e0be487db.jpg', '1', '0', '60.00', '49.90', '10', '1000000', '箱', '', '1', '0', '1', '0', '1', '47_61_73_', '73', '1', '2', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e11abb4ec.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e11b8ee2b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e11c1128f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e11b0df8d.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:36:56', '0', '0', '0', 'upload/goods/2019-02/5c70e0ec1520e.jpg,upload/goods/2019-02/5c70e0ec5da47.jpg,upload/goods/2019-02/5c70e0eca7609.jpg,upload/goods/2019-02/5c70e0ece0ff6.jpg', '花牛苹果/蛇果 12个 单果180-210g 净重4.5斤 自营水果', null, '1', '2019-02-23 13:59:10', '0', '潘苹果 花牛苹果/蛇果 12个 单果180-210g 净重4.5斤 自营水果,云南,新疆,安徽');
INSERT INTO `ox_goods` VALUES ('115', '155090161392108', '155090161392107', '同城果鮮 进口车厘子京东新鲜水果1kg 单果约28-30mm 大樱桃 生鲜', 'upload/goods/2019-02/5c70e1f2a8983.jpg', '1', '0', '130.00', '118.00', '10', '1000000', '箱', '产地直销，新鲜上市', '1', '0', '1', '1', '1', '47_61_251_', '251', '1', '2', '11', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e2323f867.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e23262ed7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e23281ef6.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:36:40', '0', '0', '0', 'upload/goods/2019-02/5c70e2007ae39.jpg,upload/goods/2019-02/5c70e200cc6fc.jpg,upload/goods/2019-02/5c70e2011843b.jpg', '同城果鮮 进口车厘子京东新鲜水果1kg 单果约28-30mm 大樱桃 生鲜', null, '1', '2019-02-23 14:03:46', '0', '同城果鮮 进口车厘子京东新鲜水果1kg 单果约28-30mm 大樱桃 生鲜,冷藏,广东,四川,云南,湖南');
INSERT INTO `ox_goods` VALUES ('116', '155090192161261', '155090192161262', '荷兰 进口青啤梨 4个装 大果 单果重约170-220g 新鲜水果', 'upload/goods/2019-02/5c70e2cce0604.jpg', '1', '0', '30.00', '24.00', '10', '1000000', '公斤', '', '1', '1', '1', '0', '1', '47_61_249_', '249', '1', '2', '7', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e316bc0dd.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e315b1c91.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e316442c8.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:36:01', '0', '0', '0', 'upload/goods/2019-02/5c70e2d1665e6.jpg,upload/goods/2019-02/5c70e2d1cb346.jpg,upload/goods/2019-02/5c70e2d22a139.jpg,upload/goods/2019-02/5c70e2d2715ea.jpg', '荷兰 进口青啤梨 4个装 大果 单果重约170-220g 新鲜水果', null, '1', '2019-02-23 14:07:29', '0', '荷兰 进口青啤梨 4个装 大果 单果重约170-220g 新鲜水果,常温,广东,四川,云南');
INSERT INTO `ox_goods` VALUES ('117', '155090210544018', '155090210544013', '云南天山雪莲果 红山泥沙新鲜水果 中圆果带箱11斤', 'upload/goods/2019-02/5c70e3a13f476.jpg', '1', '0', '24.00', '19.90', '10', '1000000', '斤', '', '1', '0', '1', '0', '1', '47_71_320_', '320', '1', '2', '7', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e417848eb.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e4171d47b.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e41760aab.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e41740ed3.jpg\" alt=\"\" />', '1', '0', '2019-02-23 15:36:24', '0', '0', '0', 'upload/goods/2019-02/5c70e3b10a084.jpg,upload/goods/2019-02/5c70e3b1645e9.jpg,upload/goods/2019-02/5c70e3b1a0ad0.jpg', '云南天山雪莲果 红山泥沙新鲜水果 中圆果带箱11斤', null, '1', '2019-02-23 14:12:14', '0', '云南天山雪莲果 红山泥沙新鲜水果 中圆果带箱11斤,常温,云南,江西');
INSERT INTO `ox_goods` VALUES ('118', '155090239697484', '155090239697489', '王老吉凉茶310ml*12罐礼盒装 草本凉茶植物清凉饮料 中华老字号', 'upload/goods/2019-02/5c70e4d8be300.jpg', '1', '0', '35.00', '31.00', '10', '100000', '箱', '', '1', '0', '0', '0', '1', '49_81_314_', '314', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e50a99c63.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e5092607f.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e509a05a3.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e50a20eaf.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:15:54', '0', '0', '0', 'upload/goods/2019-02/5c70e4de698cb.jpg,upload/goods/2019-02/5c70e4deabb72.jpg,upload/goods/2019-02/5c70e4deeb709.jpg', '王老吉凉茶310ml*12罐礼盒装 草本凉茶植物清凉饮料 中华老字号', null, '1', '2019-02-23 14:15:54', '0', '王老吉凉茶310ml*12罐礼盒装 草本凉茶植物清凉饮料 中华老字号');
INSERT INTO `ox_goods` VALUES ('119', '155090255634896', '155090255634891', '屈臣氏（Watsons）苏打汽水330ml*24罐 整箱装 苏打水汽水饮料', 'upload/goods/2019-02/5c70e55600c62.jpg', '1', '0', '95.00', '89.00', '10', '1000000', '罐', '', '1', '0', '1', '0', '1', '49_81_316_', '316', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e59578119.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e594f221d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e594638bb.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:18:23', '1', '0', '0', 'upload/goods/2019-02/5c70e570bca5d.jpg,upload/goods/2019-02/5c70e57119cf8.jpg', '屈臣氏（Watsons）苏打汽水330ml*24罐 整箱装 苏打水汽水饮料', null, '1', '2019-02-23 14:18:23', '0', '屈臣氏（Watsons）苏打汽水330ml*24罐 整箱装 苏打水汽水饮料');
INSERT INTO `ox_goods` VALUES ('120', '155090270511845', '155090270511849', '雪碧 Sprite 柠檬味 汽水 碳酸饮料 330ml*24罐 整箱装 可口可乐公司出品', 'upload/goods/2019-02/5c70e5f54cbaa.jpg', '1', '0', '50.00', '45.50', '10', '1000000', '排', '', '1', '0', '1', '0', '1', '49_81_316_', '316', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e62383546.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e622f1ac7.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e624078ea.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:20:31', '1', '0', '0', 'upload/goods/2019-02/5c70e5fc64828.jpg,upload/goods/2019-02/5c70e5fcb2e22.jpg', '雪碧 Sprite 柠檬味 汽水 碳酸饮料 330ml*24罐 整箱装 可口可乐公司出品', null, '1', '2019-02-23 14:20:31', '0', '雪碧 Sprite 柠檬味 汽水 碳酸饮料 330ml*24罐 整箱装 可口可乐公司出品');
INSERT INTO `ox_goods` VALUES ('121', '155090285572305', '155090285572307', '红牛 维生素功能饮料 250ml*6罐 组合装', 'upload/goods/2019-02/5c70e68c2ab3f.jpg', '1', '0', '40.00', '36.00', '10', '1000000', '排', '', '1', '0', '1', '1', '1', '49_81_316_', '316', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e6b73511d.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e6b7842cf.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e6b810b45.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e6b891213.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:22:56', '0', '0', '0', 'upload/goods/2019-02/5c70e691822e1.jpg,upload/goods/2019-02/5c70e691c840a.jpg,upload/goods/2019-02/5c70e692106b0.jpg', '红牛 维生素功能饮料 250ml*6罐 组合装', null, '1', '2019-02-23 14:22:56', '0', '红牛 维生素功能饮料 250ml*6罐 组合装');
INSERT INTO `ox_goods` VALUES ('122', '155090299813916', '155090299813914', '美汁源 Minute Maid 果粒橙 果汁饮料 1.25L*12瓶 整箱装 可口可乐公司出品 新老包装随机发货', 'upload/goods/2019-02/5c70e6f18d0af.jpg', '1', '0', '78.00', '71.80', '10', '1000000', '排', '', '1', '0', '1', '1', '1', '49_81_304_', '304', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e72fac2f0.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e7303ed10.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e730bb55d.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:24:57', '0', '0', '0', 'upload/goods/2019-02/5c70e6f67c441.jpg,upload/goods/2019-02/5c70e6f6be300.jpg', '美汁源 Minute Maid 果粒橙 果汁饮料 1.25L*12瓶 整箱装 可口可乐公司出品 新老包装随机发货', null, '1', '2019-02-23 14:24:57', '0', '美汁源 Minute Maid 果粒橙 果汁饮料 1.25L*12瓶 整箱装 可口可乐公司出品 新老包装随机发货');
INSERT INTO `ox_goods` VALUES ('123', '155090312507447', '155090312507444', '信远斋 桂花酸梅汤饮料 300ml*12瓶 整箱装', 'upload/goods/2019-02/5c70e7972cf77.jpg', '1', '0', '65.00', '59.90', '10', '100000', '罐', '', '1', '0', '1', '1', '1', '49_81_304_', '304', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e7b88a34c.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e7b9138fa.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e7b997678.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e7b821b54.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:27:26', '0', '0', '0', 'upload/goods/2019-02/5c70e79c07ae4.png,upload/goods/2019-02/5c70e79d1d2e2.png', '信远斋 桂花酸梅汤饮料 300ml*12瓶 整箱装', null, '1', '2019-02-23 14:27:26', '0', '信远斋 桂花酸梅汤饮料 300ml*12瓶 整箱装');
INSERT INTO `ox_goods` VALUES ('124', '155090327082172', '155090327082170', '依能 加锌 无糖无汽弱碱 苏打水饮料 500ml*15瓶 塑膜量贩装', 'upload/goods/2019-02/5c70e8305bc89.jpg', '1', '0', '35.00', '28.90', '10', '100000', '排', '', '1', '0', '0', '1', '1', '49_81_313_', '313', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e856868d8.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e85665591.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e85642308.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:30:00', '0', '0', '0', 'upload/goods/2019-02/5c70e836c0758.jpg,upload/goods/2019-02/5c70e83714969.jpg,upload/goods/2019-02/5c70e83758769.jpg', '依能 加锌 无糖无汽弱碱 苏打水饮料 500ml*15瓶 塑膜量贩装', null, '1', '2019-02-23 14:30:00', '0', '依能 加锌 无糖无汽弱碱 苏打水饮料 500ml*15瓶 塑膜量贩装');
INSERT INTO `ox_goods` VALUES ('125', '155090343083399', '155090343083398', '脉动（Mizone）青柠口味 维生素饮料 400ml*15瓶 整箱装', 'upload/goods/2019-02/5c70e8c945813.jpg', '1', '0', '45.00', '36.50', '10', '1000000', '箱', '', '1', '0', '0', '1', '1', '49_81_316_', '316', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e8eed1ad8.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e8ef15b15.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e8ef97954.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e8f0212e9.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:32:21', '0', '0', '0', 'upload/goods/2019-02/5c70e8cd1343c.jpg,upload/goods/2019-02/5c70e8cd5acd5.jpg', '脉动（Mizone）青柠口味 维生素饮料 400ml*15瓶 整箱装', null, '1', '2019-02-23 14:32:21', '0', '脉动（Mizone）青柠口味 维生素饮料 400ml*15瓶 整箱装');
INSERT INTO `ox_goods` VALUES ('126', '155090355881323', '155090355881321', '名仁 苏打水汽水 330ml*24罐 整箱装 无糖气泡水蜜桃味 汽水汤力水饮料', 'upload/goods/2019-02/5c70e9691c091.jpg', '1', '0', '60.00', '55.90', '10', '100000', '排', '', '1', '0', '0', '0', '1', '49_81_316_', '316', '9', '12', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70e99446dfe.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e9946ac3e.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70e99487165.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:35:09', '0', '0', '0', 'upload/goods/2019-02/5c70e9717f461.jpg,upload/goods/2019-02/5c70e971c70e2.jpg,upload/goods/2019-02/5c70e97212269.jpg', '名仁 苏打水汽水 330ml*24罐 整箱装 无糖气泡水蜜桃味 汽水汤力水饮料', null, '1', '2019-02-23 14:35:09', '0', '名仁 苏打水汽水 330ml*24罐 整箱装 无糖气泡水蜜桃味 汽水汤力水饮料');
INSERT INTO `ox_goods` VALUES ('127', '155090376379697', '155090376379691', '银鹭 花生牛奶口味 复合蛋白饮料 250ml*16盒 整箱', 'upload/goods/2019-02/5c70ea2b969fd.jpg', '1', '0', '35.00', '26.90', '10', '100000', '箱', '', '1', '0', '0', '0', '1', '49_82_305_', '305', '9', '13', '0', '<img src=\"${DOMAIN}/upload/image/2019-02/5c70eac464c19.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ea8c633dd.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70eb17d2136.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70eb0023ac1.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ea8cc3aec.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70ea8d4fb92.jpg\" alt=\"\" /><img src=\"http://localhost${DOMAIN}/upload/image/2019-02/5c70eb3f5c76a.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70eb635eeb6.jpg\" alt=\"\" /><img src=\"${DOMAIN}/upload/image/2019-02/5c70eb749b768.jpg\" alt=\"\" />', '1', '0', '2019-02-23 14:43:03', '1', '0', '0', 'upload/goods/2019-02/5c70ea346f327.jpg,upload/goods/2019-02/5c70ea34b19b7.jpg', '银鹭 花生牛奶口味 复合蛋白饮料 250ml*16盒 整箱', null, '1', '2019-02-23 14:43:03', '0', '银鹭 花生牛奶口味 复合蛋白饮料 250ml*16盒 整箱');

-- ----------------------------
-- Table structure for ox_goods_appraises
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_appraises`;
CREATE TABLE `ox_goods_appraises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `orderId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `goodsSpecId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  `goodsScore` int(11) NOT NULL DEFAULT '0',
  `serviceScore` int(11) NOT NULL DEFAULT '0',
  `timeScore` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `shopReply` text,
  `images` text,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `replyTime` date DEFAULT NULL,
  `orderGoodsId` int(10) unsigned NOT NULL COMMENT '订单商品表Id',
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`),
  KEY `goodsId` (`goodsId`,`goodsSpecId`,`dataFlag`,`isShow`) USING BTREE,
  KEY `userId` (`userId`),
  KEY `orderGoodsId` (`orderGoodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_appraises
-- ----------------------------

-- ----------------------------
-- Table structure for ox_goods_attributes
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_attributes`;
CREATE TABLE `ox_goods_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `attrId` int(11) NOT NULL,
  `attrVal` text NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`),
  KEY `goodsId` (`goodsId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_attributes
-- ----------------------------
INSERT INTO `ox_goods_attributes` VALUES ('7', '3', '75', '6', '安卓', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('8', '3', '75', '4', '全高清FHD', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('9', '3', '75', '5', '4.6-5.0英寸', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('10', '3', '75', '7', '双核', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('11', '3', '75', '8', '2GB,4GB', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('12', '3', '75', '9', '16GB,32GB,64GB,128GB', '2019-02-23 10:42:56');
INSERT INTO `ox_goods_attributes` VALUES ('13', '3', '76', '6', '安卓', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('14', '3', '76', '4', '超高清FHD以上', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('15', '3', '76', '5', '4.6-5.0英寸', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('16', '3', '76', '7', '八核', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('17', '3', '76', '8', '2GB,4GB,8GB,16GB,32GB', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('18', '3', '76', '9', '64GB,128GB', '2019-02-23 10:48:28');
INSERT INTO `ox_goods_attributes` VALUES ('19', '3', '77', '6', '安卓', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('20', '3', '77', '4', '超高清FHD以上', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('21', '3', '77', '5', '5.1-5.5英寸', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('22', '3', '77', '7', '八核', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('23', '3', '77', '8', '2GB,4GB,8GB,16GB,32GB', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('24', '3', '77', '9', '64GB,128GB', '2019-02-23 10:55:18');
INSERT INTO `ox_goods_attributes` VALUES ('25', '3', '78', '6', '安卓', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('26', '3', '78', '4', '高清HD', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('27', '3', '78', '5', '4.6-5.0英寸', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('28', '3', '78', '7', '八核', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('29', '3', '78', '8', '4GB,8GB,16GB,32GB', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('30', '3', '78', '9', '32GB,64GB,128GB', '2019-02-23 11:00:25');
INSERT INTO `ox_goods_attributes` VALUES ('31', '3', '79', '6', '安卓', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('32', '3', '79', '4', '全高清FHD', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('33', '3', '79', '5', '4.6-5.0英寸', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('34', '3', '79', '7', '四核', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('35', '3', '79', '8', '4GB,8GB,16GB,32GB', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('36', '3', '79', '9', '16GB,32GB,64GB', '2019-02-23 11:06:17');
INSERT INTO `ox_goods_attributes` VALUES ('37', '5', '80', '6', '苹果', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('38', '5', '80', '4', '超高清FHD以上', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('39', '5', '80', '5', '5.1-5.5英寸', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('40', '5', '80', '7', '八核', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('41', '5', '80', '8', '8GB,32GB', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('42', '5', '80', '9', '32GB,64GB,128GB', '2019-02-23 11:12:47');
INSERT INTO `ox_goods_attributes` VALUES ('43', '5', '81', '6', '苹果', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('44', '5', '81', '4', '全高清FHD', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('45', '5', '81', '5', '5.1-5.5英寸', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('46', '5', '81', '7', '四核', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('47', '5', '81', '8', '4GB,16GB', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('48', '5', '81', '9', '32GB,128GB', '2019-02-23 11:17:19');
INSERT INTO `ox_goods_attributes` VALUES ('49', '5', '82', '6', '苹果', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('50', '5', '82', '4', '超高清FHD以上', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('51', '5', '82', '5', '5.6英寸以上', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('52', '5', '82', '7', '八核', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('53', '5', '82', '8', '16GB,32GB', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('54', '5', '82', '9', '64GB,128GB', '2019-02-23 11:22:35');
INSERT INTO `ox_goods_attributes` VALUES ('55', '5', '83', '4', '全高清FHD', '2019-02-23 11:25:28');
INSERT INTO `ox_goods_attributes` VALUES ('56', '5', '83', '5', '5.6英寸以上', '2019-02-23 11:25:28');
INSERT INTO `ox_goods_attributes` VALUES ('57', '5', '83', '7', '四核', '2019-02-23 11:25:28');
INSERT INTO `ox_goods_attributes` VALUES ('58', '5', '83', '8', '16GB', '2019-02-23 11:25:28');
INSERT INTO `ox_goods_attributes` VALUES ('59', '5', '83', '9', '32GB', '2019-02-23 11:25:28');
INSERT INTO `ox_goods_attributes` VALUES ('60', '1', '93', '6', '安卓', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('61', '1', '93', '4', '标清SD', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('62', '1', '93', '5', '4.6-5.0英寸', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('63', '1', '93', '7', '双核', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('64', '1', '93', '8', '2GB,4GB', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('65', '1', '93', '9', '16GB,32GB', '2019-02-23 12:03:29');
INSERT INTO `ox_goods_attributes` VALUES ('66', '1', '94', '6', '安卓', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('67', '1', '94', '4', '标清SD', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('68', '1', '94', '5', '4.6-5.0英寸', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('69', '1', '94', '7', '四核', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('70', '1', '94', '8', '4GB,8GB', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('71', '1', '94', '9', '32GB,64GB', '2019-02-23 12:07:17');
INSERT INTO `ox_goods_attributes` VALUES ('72', '1', '95', '6', '安卓', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('73', '1', '95', '4', '全高清FHD', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('74', '1', '95', '5', '5.1-5.5英寸', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('75', '1', '95', '7', '八核', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('76', '1', '95', '8', '4GB,8GB', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('77', '1', '95', '9', '32GB,64GB', '2019-02-23 12:11:06');
INSERT INTO `ox_goods_attributes` VALUES ('108', '1', '99', '6', '安卓', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('109', '1', '99', '4', '全高清FHD', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('110', '1', '99', '5', '5.1-5.5英寸', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('111', '1', '99', '7', '八核', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('112', '1', '99', '8', '8GB', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('113', '1', '99', '9', '64GB,128GB', '2019-02-23 12:29:34');
INSERT INTO `ox_goods_attributes` VALUES ('120', '1', '101', '6', '安卓', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('121', '1', '101', '4', '超高清FHD以上', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('122', '1', '101', '5', '5.1-5.5英寸', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('123', '1', '101', '7', '八核', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('124', '1', '101', '8', '16GB', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('125', '1', '101', '9', '64GB', '2019-02-23 12:38:54');
INSERT INTO `ox_goods_attributes` VALUES ('126', '1', '102', '6', '安卓', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('127', '1', '102', '4', '全高清FHD', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('128', '1', '102', '5', '5.1-5.5英寸', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('129', '1', '102', '7', '四核', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('130', '1', '102', '8', '8GB', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('131', '1', '102', '9', '64GB,128GB', '2019-02-23 12:42:01');
INSERT INTO `ox_goods_attributes` VALUES ('132', '1', '116', '2', '常温', '2019-02-23 15:36:01');
INSERT INTO `ox_goods_attributes` VALUES ('133', '1', '116', '3', '广东,四川,云南', '2019-02-23 15:36:01');
INSERT INTO `ox_goods_attributes` VALUES ('134', '1', '117', '2', '常温', '2019-02-23 15:36:24');
INSERT INTO `ox_goods_attributes` VALUES ('135', '1', '117', '3', '云南,江西', '2019-02-23 15:36:24');
INSERT INTO `ox_goods_attributes` VALUES ('136', '1', '115', '2', '冷藏', '2019-02-23 15:36:40');
INSERT INTO `ox_goods_attributes` VALUES ('137', '1', '115', '3', '广东,四川,云南,湖南', '2019-02-23 15:36:40');
INSERT INTO `ox_goods_attributes` VALUES ('138', '1', '114', '3', '云南,新疆,安徽', '2019-02-23 15:36:56');
INSERT INTO `ox_goods_attributes` VALUES ('139', '1', '113', '2', '常温', '2019-02-23 15:37:10');
INSERT INTO `ox_goods_attributes` VALUES ('140', '1', '113', '3', '江西', '2019-02-23 15:37:10');
INSERT INTO `ox_goods_attributes` VALUES ('141', '1', '73', '2', '常温', '2019-02-23 15:37:25');
INSERT INTO `ox_goods_attributes` VALUES ('142', '1', '73', '3', '安徽', '2019-02-23 15:37:25');
INSERT INTO `ox_goods_attributes` VALUES ('143', '1', '1', '2', '常温', '2019-02-23 15:37:42');
INSERT INTO `ox_goods_attributes` VALUES ('144', '1', '1', '3', '四川', '2019-02-23 15:37:42');
INSERT INTO `ox_goods_attributes` VALUES ('145', '1', '3', '2', '常温', '2019-02-23 15:37:58');
INSERT INTO `ox_goods_attributes` VALUES ('146', '1', '3', '3', '广东,四川,云南,湖南', '2019-02-23 15:37:58');
INSERT INTO `ox_goods_attributes` VALUES ('147', '1', '2', '2', '常温', '2019-02-23 15:39:03');
INSERT INTO `ox_goods_attributes` VALUES ('148', '1', '2', '3', '广东,江西', '2019-02-23 15:39:03');
INSERT INTO `ox_goods_attributes` VALUES ('149', '1', '74', '2', '常温', '2019-02-23 15:39:20');
INSERT INTO `ox_goods_attributes` VALUES ('150', '1', '74', '3', '江西', '2019-02-23 15:39:20');
INSERT INTO `ox_goods_attributes` VALUES ('151', '1', '100', '6', '安卓', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('152', '1', '100', '4', '高清HD', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('153', '1', '100', '5', '5.1-5.5英寸', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('154', '1', '100', '7', '四核', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('155', '1', '100', '8', '4GB', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('156', '1', '100', '9', '32GB,64GB', '2019-02-23 15:41:40');
INSERT INTO `ox_goods_attributes` VALUES ('157', '1', '98', '6', '安卓', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('158', '1', '98', '4', '全高清FHD', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('159', '1', '98', '5', '5.1-5.5英寸', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('160', '1', '98', '7', '八核', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('161', '1', '98', '8', '8GB', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('162', '1', '98', '9', '64GB,128GB', '2019-02-23 15:42:22');
INSERT INTO `ox_goods_attributes` VALUES ('163', '1', '97', '6', '安卓', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('164', '1', '97', '4', '高清HD', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('165', '1', '97', '5', '5.1-5.5英寸', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('166', '1', '97', '7', '八核', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('167', '1', '97', '8', '8GB', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('168', '1', '97', '9', '64GB,128GB', '2019-02-23 15:42:46');
INSERT INTO `ox_goods_attributes` VALUES ('169', '1', '96', '6', '安卓', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('170', '1', '96', '4', '标清SD', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('171', '1', '96', '5', '5.1-5.5英寸', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('172', '1', '96', '7', '四核', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('173', '1', '96', '8', '4GB', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('174', '1', '96', '9', '32GB,64GB', '2019-02-23 15:43:00');
INSERT INTO `ox_goods_attributes` VALUES ('175', '12', '16', '2', '常温', '2019-02-23 15:45:59');
INSERT INTO `ox_goods_attributes` VALUES ('176', '12', '16', '3', '广东,四川,云南,湖南,江西,辽宁', '2019-02-23 15:45:59');
INSERT INTO `ox_goods_attributes` VALUES ('177', '12', '10', '2', '常温', '2019-02-23 15:46:11');
INSERT INTO `ox_goods_attributes` VALUES ('178', '12', '10', '3', '新疆,安徽', '2019-02-23 15:46:11');
INSERT INTO `ox_goods_attributes` VALUES ('179', '12', '12', '2', '冷藏', '2019-02-23 15:46:26');
INSERT INTO `ox_goods_attributes` VALUES ('180', '12', '12', '3', '广东,四川,云南,湖南,江西,辽宁,黑龙江,湖北,西藏,新疆,内蒙古,安徽', '2019-02-23 15:46:26');
INSERT INTO `ox_goods_attributes` VALUES ('181', '12', '8', '2', '冷藏', '2019-02-23 15:46:36');
INSERT INTO `ox_goods_attributes` VALUES ('182', '12', '8', '3', '广东,四川,云南,湖南,江西', '2019-02-23 15:46:36');
INSERT INTO `ox_goods_attributes` VALUES ('186', '12', '13', '2', '冷藏,常温', '2019-02-23 15:47:10');
INSERT INTO `ox_goods_attributes` VALUES ('187', '12', '13', '3', '四川,云南', '2019-02-23 15:47:10');
INSERT INTO `ox_goods_attributes` VALUES ('188', '12', '14', '2', '冷藏', '2019-02-23 15:47:17');
INSERT INTO `ox_goods_attributes` VALUES ('189', '12', '14', '3', '云南,湖南,江西,黑龙江,湖北', '2019-02-23 15:47:17');
INSERT INTO `ox_goods_attributes` VALUES ('190', '12', '15', '2', '常温', '2019-02-23 15:47:24');
INSERT INTO `ox_goods_attributes` VALUES ('191', '12', '15', '3', '西藏,内蒙古,安徽', '2019-02-23 15:47:24');
INSERT INTO `ox_goods_attributes` VALUES ('192', '12', '5', '2', '常温', '2019-02-23 15:47:31');
INSERT INTO `ox_goods_attributes` VALUES ('193', '12', '5', '3', '云南,湖南,江西', '2019-02-23 15:47:31');
INSERT INTO `ox_goods_attributes` VALUES ('194', '12', '11', '2', '冷藏', '2019-02-23 15:47:43');
INSERT INTO `ox_goods_attributes` VALUES ('195', '12', '11', '3', '湖南,辽宁,新疆', '2019-02-23 15:47:43');
INSERT INTO `ox_goods_attributes` VALUES ('196', '12', '9', '2', '冷藏', '2019-02-23 15:47:52');
INSERT INTO `ox_goods_attributes` VALUES ('197', '12', '9', '3', '广东,四川,云南,湖南', '2019-02-23 15:47:52');
INSERT INTO `ox_goods_attributes` VALUES ('198', '12', '7', '2', '冷藏,常温', '2019-02-23 15:48:05');
INSERT INTO `ox_goods_attributes` VALUES ('199', '12', '7', '3', '广东,江西,辽宁,湖北', '2019-02-23 15:48:05');
INSERT INTO `ox_goods_attributes` VALUES ('200', '12', '6', '2', '冷藏', '2019-02-23 15:48:18');
INSERT INTO `ox_goods_attributes` VALUES ('201', '12', '6', '3', '辽宁,黑龙江,湖北,西藏,新疆,内蒙古,安徽', '2019-02-23 15:48:18');

-- ----------------------------
-- Table structure for ox_goods_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_cats`;
CREATE TABLE `ox_goods_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `catName` varchar(20) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `isFloor` tinyint(4) NOT NULL DEFAULT '1',
  `catSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `commissionRate` decimal(11,2) DEFAULT '-1.00',
  `catImg` varchar(150) DEFAULT NULL,
  `subTitle` varchar(150) DEFAULT '' COMMENT '楼层副标题',
  `simpleName` varchar(20) NOT NULL,
  `seoTitle` varchar(200) NOT NULL COMMENT '分类SEO标题',
  `seoKeywords` varchar(200) NOT NULL COMMENT '分类SEO关键字',
  `seoDes` varchar(200) NOT NULL COMMENT '分类SEO描述',
  `catListTheme` varchar(200) NOT NULL DEFAULT 'goods_list' COMMENT '商品分类列表风格',
  `detailTheme` varchar(200) NOT NULL DEFAULT 'goods_detail' COMMENT '商品详情风格',
  `mobileCatListTheme` varchar(200) NOT NULL DEFAULT 'goods_list' COMMENT '移动端商品分类列表风格',
  `mobileDetailTheme` varchar(200) NOT NULL DEFAULT 'goods_detail' COMMENT '移动端商品详情风格',
  `wechatCatListTheme` varchar(200) NOT NULL DEFAULT 'goods_list' COMMENT '微信端商品分类列表风格',
  `wechatDetailTheme` varchar(200) NOT NULL DEFAULT 'goods_detail' COMMENT '微信端商品详情风格',
  PRIMARY KEY (`catId`),
  KEY `parentId` (`parentId`,`isShow`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_cats
-- ----------------------------
INSERT INTO `ox_goods_cats` VALUES ('47', '0', '时蔬水果、网上菜场', '1', '1', '-5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '时蔬水果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('48', '0', '厨卫清洁、纸制用品', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '厨卫清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('49', '0', '酒水饮料、茶叶冲饮', '1', '1', '-3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '酒水饮料', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('50', '0', '粮油食品、南北干货', '1', '1', '-2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '粮油食品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('51', '0', '美容护理、洗浴用品', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '美容护理', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('52', '0', '休闲食品、进口食品', '1', '1', '-8', '1', '2016-09-28 13:53:41', '-1.00', null, '', '休闲食品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('53', '0', '营养保健、调理用品', '1', '1', '-6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '营养保健', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('54', '0', '家居家电、厨具卫浴', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '家居家电', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('55', '0', '床上用品、玩具乐器', '1', '0', '9', '1', '2016-09-28 13:53:41', '-1.00', null, '', '床上用品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('56', '0', '虚拟服务、优惠票券', '1', '0', '12', '1', '2016-09-28 13:53:41', '-1.00', null, '', '虚拟服务', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('57', '0', '母婴、玩具乐器', '1', '1', '11', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '母婴、玩', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('58', '0', '食品饮料、酒类、生鲜', '1', '1', '12', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '食品饮料', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('59', '0', '营养保健', '1', '1', '13', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '营养保健', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('60', '0', '彩票、旅行、充值、票务', '1', '1', '14', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '彩票、旅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('61', '47', '进口水果', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口水果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('62', '47', '新鲜蔬菜', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '新鲜蔬菜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('63', '47', '美食净菜', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '美食净菜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('64', '47', '肉类蛋禽', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '肉类蛋禽', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('65', '47', '海鲜水产', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '海鲜水产', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('66', '47', '速冻食品', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '速冻食品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('67', '47', '生活', '1', '1', '0', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '生活', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('68', '47', '科技', '1', '1', '0', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '科技', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('69', '47', '少儿', '1', '1', '0', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '少儿', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('70', '47', '教育', '1', '1', '0', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '教育', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('71', '47', '其它', '1', '1', '7', '1', '2016-09-28 13:53:41', '-1.00', null, '', '其它', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('72', '61', '橙柚', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '橙柚', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('73', '61', '苹果', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '苹果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('74', '48', '纸制品', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '纸制品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('75', '74', '软包抽纸', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '软包抽纸', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('76', '61', '凤梨', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '凤梨', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('77', '61', '火龙果', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '火龙果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('78', '49', '酒水', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '酒水', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('79', '49', '咖啡', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '咖啡', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('80', '49', '茶叶', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '茶叶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('81', '49', '饮料饮品', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '饮料饮品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('82', '49', '成人奶粉', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '成人奶粉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('83', '49', '养生茶', '1', '1', '6', '-1', '2016-09-28 13:53:41', '-1.00', null, '', '养生茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('84', '56', '通讯充值', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '通讯充值', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('85', '56', '本地生活', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '本地生活', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('86', '56', '演出票务', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '演出票务', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('87', '56', '教育培训', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '教育培训', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('88', '87', '早教幼教', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '早教幼教', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('89', '87', '艺术培训', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '艺术培训', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('90', '87', '语言培训', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '语言培训', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('91', '87', '网络课程', '1', '0', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '网络课程', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('92', '87', '学习培训', '1', '0', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '学习培训', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('93', '86', '电影选座', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电影选座', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('94', '86', '演唱会', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '演唱会', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('95', '86', '音乐会', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '音乐会', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('96', '86', '体育赛事', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '体育赛事', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('97', '85', '外卖订座', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '外卖订座', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('98', '85', '生活缴费', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '生活缴费', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('99', '85', '汽车养护', '1', '0', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '汽车养护', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('100', '84', '移动话费充值', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '移动话费', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('101', '84', '电信话费充值', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电信话费', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('102', '84', '联通话费充值', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '联通话费', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('103', '55', '儿童玩具', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '儿童玩具', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('104', '103', '毛绒玩具', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '毛绒玩具', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('105', '103', '电动车', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电动车', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('106', '103', '积木拼插', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '积木拼插', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('107', '103', '滑板车', '1', '0', '7', '1', '2016-09-28 13:53:41', '-1.00', null, '', '滑板车', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('108', '55', '婴幼家纺', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '婴幼家纺', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('109', '55', '床上用品', '1', '0', '7', '1', '2016-09-28 13:53:41', '-1.00', null, '', '床上用品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('110', '108', '婴儿枕', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '婴儿枕', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('111', '108', '冬抱被', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '冬抱被', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('112', '108', '床垫', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '床垫', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('113', '109', '记忆枕', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '记忆枕', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('114', '109', '电热毯', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电热毯', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('115', '109', '床单床笠', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '床单床笠', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('116', '108', '床品套件', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '床品套件', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('117', '109', '全棉四件套', '1', '0', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '全棉四件', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('118', '54', '厨具锅具', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '厨具锅具', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('119', '54', '厨房电器', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '厨房电器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('120', '54', '电器附件', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电器附件', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('121', '54', '日常电器', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '日常电器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('122', '118', '压力锅', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '压力锅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('123', '118', '平底锅', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '平底锅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('124', '118', '铲勺', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '铲勺', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('125', '118', '烘焙工具', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '烘焙工具', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('126', '119', '电饭煲', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电饭煲', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('127', '119', '电磁炉', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电磁炉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('128', '119', '电炖锅', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电炖锅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('129', '120', '万能遥控器', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '万能遥控', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('130', '120', '电池', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电池', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('131', '120', '电视挂架', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电视挂架', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('132', '120', '插头', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '插头', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('133', '121', '理发器', '1', '0', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '理发器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('134', '121', '电吹风', '1', '0', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '电吹风', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('135', '121', '脱毛器', '1', '0', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '脱毛器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('136', '121', '美发器', '1', '0', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '美发器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('137', '53', '日常用药', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '日常用药', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('138', '53', '营养健康', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '营养健康', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('139', '53', '调理用药', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '调理用药', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('140', '53', '传统滋补', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '传统滋补', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('141', '53', '营养成分', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '营养成分', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('142', '137', '感冒发热', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '感冒发热', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('143', '137', '咽喉肿痛', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '咽喉肿痛', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('144', '137', '止咳化痰', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '止咳化痰', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('145', '137', '牙龈肿痛', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '牙龈肿痛', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('146', '137', '跌打损伤', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '跌打损伤', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('147', '138', '增强免疫', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '增强免疫', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('148', '138', '改善睡眠', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '改善睡眠', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('149', '138', '补肾健体', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '补肾健体', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('150', '138', '延缓衰老', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '延缓衰老', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('151', '138', '美白养颜', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '美白养颜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('152', '139', '补脑安神', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '补脑安神', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('153', '139', '减肥瘦身', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '减肥瘦身', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('154', '139', '健脾消食', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '健脾消食', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('155', '139', '养肝护胆', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '养肝护胆', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('156', '140', '蜂蜜/蜂产品', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '蜂蜜/蜂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('157', '140', '阿胶', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '阿胶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('158', '140', '燕窝', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '燕窝', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('159', '141', '鱼油', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '鱼油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('160', '141', '螺旋藻', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '螺旋藻', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('161', '141', '海狗/海豹油', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '海狗/海', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('162', '141', '蛋白质/氨基酸', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '蛋白质/', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('163', '141', '葡萄糖', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '葡萄糖', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('164', '51', '洗浴用品', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '洗浴用品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('165', '51', '进口美护', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口美护', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('166', '51', '女性护理', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '女性护理', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('167', '51', '缤纷彩妆', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '缤纷彩妆', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('168', '164', '沐浴露', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '沐浴露', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('169', '164', '舒肤佳', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '舒肤佳', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('170', '164', '浴球/浴擦', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '浴球/浴', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('171', '164', '威露士', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '威露士', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('172', '165', '进口护肤品', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口护肤', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('173', '165', '进口男士护理', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口男士', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('174', '165', '进口沐浴', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口沐浴', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('175', '165', '进口美妆', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口美妆', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('176', '166', '日用卫生巾', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '日用卫生', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('177', '166', '夜用卫生巾', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '夜用卫生', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('178', '166', '护垫', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '护垫', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('179', '166', '卫生棉条', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '卫生棉条', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('180', '167', '润唇膏', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '润唇膏', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('181', '167', '眼线笔', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '眼线笔', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('182', '167', '粉底', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '粉底', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('183', '167', '眼影', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '眼影', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('184', '164', '沐浴套装', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '沐浴套装', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('185', '164', '滴露', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '滴露', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('186', '164', '女性洗液', '1', '1', '7', '1', '2016-09-28 13:53:41', '-1.00', null, '', '女性洗液', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('187', '164', '香皂', '1', '1', '8', '1', '2016-09-28 13:53:41', '-1.00', null, '', '香皂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('188', '167', '指甲油', '1', '1', '8', '1', '2016-09-28 13:53:41', '-1.00', null, '', '指甲油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('189', '52', '坚果/蜜饯', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '坚果/蜜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('190', '52', '休闲零食', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '休闲零食', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('191', '52', '进口速食调料', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口速食', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('192', '52', '进口休闲零食', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口休闲', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('193', '52', '进口饼干/糕点', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口饼干', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('194', '193', '进口曲奇', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口曲奇', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('195', '193', '进口蛋卷', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口蛋卷', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('196', '193', '进口西式糕点', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口西式', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('197', '193', '进口夹心饼干', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口夹心', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('198', '193', '进口威化', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口威化', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('199', '189', '坚果', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '坚果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('200', '189', '核桃', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '核桃', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('201', '189', '夏威夷果', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '夏威夷果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('202', '189', '开心果', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '开心果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('203', '189', '百草味', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '百草味', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('204', '190', '薯片', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '薯片', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('205', '190', '牛肉干', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '牛肉干', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('206', '190', '鱼豆腐', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '鱼豆腐', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('207', '190', '鱼干', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '鱼干', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('208', '190', '凤爪鸡翅', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '凤爪鸡翅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('209', '191', '进口意面酱', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口意面', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('210', '191', '进口调味油', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口调味', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('211', '191', '进口肉罐头', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口肉罐', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('212', '191', '进口水果罐头', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口水果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('213', '191', '进口咖喱', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口咖喱', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('214', '192', '进口薯片', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口薯片', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('215', '192', '进口玉米片', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口玉米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('216', '192', '进口果冻', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口果冻', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('217', '192', '进口海苔', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口海苔', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('218', '192', '进口海鲜零食', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '进口海鲜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('219', '50', '南北干货', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '南北干货', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('220', '50', '食用油', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '食用油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('221', '50', '大米面粉', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '大米面粉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('222', '50', '健康杂粮', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '健康杂粮', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('223', '50', '方便速食', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '方便速食', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('224', '219', '枸杞', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '枸杞', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('225', '219', '桂圆/龙眼干', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '桂圆/龙', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('226', '219', '莲子/枣子', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '莲子/枣', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('227', '219', '腌干水产品', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '腌干水产', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('228', '219', '猴头菇', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '猴头菇', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('229', '221', '大米', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '大米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('230', '221', '面粉', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '面粉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('231', '221', '豆类', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '豆类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('232', '223', '方便面', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '方便面', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('233', '223', '方便粉丝', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '方便粉丝', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('234', '223', '蛋制品', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '蛋制品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('235', '223', '八宝粥', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '八宝粥', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('236', '223', '罐头食品', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '罐头食品', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('237', '222', '小米', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '小米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('238', '222', '糙米', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '糙米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('239', '222', '玉米', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '玉米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('240', '222', '杂粮', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '杂粮', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('241', '222', '薏仁米', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '薏仁米', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('242', '220', '调和油', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '调和油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('243', '220', '葵花籽油', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '葵花籽油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('244', '220', '玉米油', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '玉米油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('245', '220', '花生油', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '花生油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('246', '220', '橄榄油', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '橄榄油', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('247', '221', '粗粮', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '粗粮', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('248', '82', '脱脂', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '脱脂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('249', '61', '梨', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '梨', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('250', '61', '芒果', '1', '1', '8', '1', '2016-09-28 13:53:41', '-1.00', null, '', '芒果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('251', '61', '蓝莓', '1', '1', '12', '1', '2016-09-28 13:53:41', '-1.00', null, '', '蓝莓', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('252', '62', '茄果类', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '茄果类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('253', '62', '农场菜', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '农场菜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('254', '62', '叶菜类', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '叶菜类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('255', '62', '营养菜', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '营养菜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('256', '62', '根茎类', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '根茎类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('257', '62', '豆角类', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '豆角类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('258', '48', '厨卫清洁', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '厨卫清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('259', '48', '居室清洁', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '居室清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('260', '48', '整理收纳', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '整理收纳', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('261', '48', '一次性用品', '1', '1', '7', '1', '2016-09-28 13:53:41', '-1.00', null, '', '一次性用', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('262', '74', '卷筒纸', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '卷筒纸', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('263', '74', '手帕纸', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '手帕纸', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('264', '74', '平板纸', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '平板纸', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('265', '74', '湿巾纸', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '湿巾纸', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('266', '74', '商务卫生纸', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '商务卫生', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('267', '258', '洗洁精', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '洗洁精', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('268', '261', '垃圾袋', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '垃圾袋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('269', '261', '保鲜袋', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '保鲜袋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('270', '261', '保鲜膜', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '保鲜膜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('271', '261', '牙签', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '牙签', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('272', '261', '一次性鞋套', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '一次性鞋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('273', '258', '油污净', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '油污净', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('274', '258', '洁厕剂', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '洁厕剂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('275', '258', '浴室清洁', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '浴室清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('276', '258', '管道疏通', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '管道疏通', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('277', '261', '一次性手套', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '一次性手', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('278', '259', '地板清洁', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '地板清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('279', '259', '灭蟑驱虫 ', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '灭蟑驱虫', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('280', '259', '空气清新', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '空气清新', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('281', '259', '家具清洁', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '家具清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('282', '259', '玻璃清洁', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '玻璃清洁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('283', '260', '挂钩/粘钩', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '挂钩/粘', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('284', '260', '收纳盒', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '收纳盒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('285', '260', '防尘罩', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '防尘罩', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('286', '260', '整理架', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '整理架', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('287', '260', '压缩袋', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '压缩袋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('288', '65', '海鲜', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '海鲜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('289', '65', '贝类', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '贝类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('290', '65', '蟹类', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '蟹类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('291', '65', '虾类', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '虾类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('292', '65', '加工水产', '1', '1', '8', '1', '2016-09-28 13:53:41', '-1.00', null, '', '加工水产', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('293', '78', '白酒', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '白酒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('294', '78', '葡萄酒', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '葡萄酒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('295', '78', '黄酒', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '黄酒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('296', '78', '啤酒', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '啤酒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('297', '78', '起泡酒', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '起泡酒', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('298', '79', '速溶咖啡', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '速溶咖啡', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('299', '79', '白咖啡', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '白咖啡', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('300', '82', '低脂', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '低脂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('301', '82', '全脂', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '全脂', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('302', '79', '咖啡伴侣', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '咖啡伴侣', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('303', '80', '乌龙茶', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '乌龙茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('304', '81', '果蔬汁', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '果蔬汁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('305', '82', '甜奶粉', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '甜奶粉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('306', '82', '高钙', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '高钙', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('307', '80', '红茶', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '红茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('308', '79', '雀巢咖啡', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '雀巢咖啡', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('309', '80', '花草茶', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '花草茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('310', '79', '咖啡豆', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '咖啡豆', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('311', '80', '绿茶', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '绿茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('312', '80', '水果茶', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '水果茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('313', '81', '功能饮料', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '功能饮料', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('314', '81', '凉茶', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '凉茶', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('315', '81', '椰汁', '1', '1', '4', '1', '2016-09-28 13:53:41', '-1.00', null, '', '椰汁', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('316', '81', '碳酸饮料', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '碳酸饮料', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('317', '64', '新鲜鸡蛋', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '新鲜鸡蛋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('318', '63', '凉菜', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '凉菜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('319', '66', '冰冻鸡翅', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '冰冻鸡翅', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('320', '71', '其他蔬果', '1', '1', '1', '1', '2016-09-28 13:53:41', '-1.00', null, '', '其他蔬果', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('321', '63', '乳肉', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '乳肉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('322', '64', '新鲜鸭蛋', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '新鲜鸭蛋', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('323', '66', '冰冻鸭', '1', '1', '2', '1', '2016-09-28 13:53:41', '-1.00', null, '', '冰冻鸭', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('324', '66', '冰激凌', '1', '1', '3', '1', '2016-09-28 13:53:41', '-1.00', null, '', '冰激凌', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('325', '61', 'dddd', '1', '1', '0', '-1', '2016-09-28 13:53:41', '-1.00', null, '', 'dddd', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('326', '64', '肉类', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '肉类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('327', '64', '骨头', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '骨头', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('328', '64', '牛肉', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '牛肉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('329', '258', '洗衣粉', '1', '1', '10', '1', '2016-09-28 13:53:41', '-1.00', null, '', '洗衣粉', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('330', '223', '火腿肠', '1', '1', '5', '1', '2016-09-28 13:53:41', '-1.00', null, '', '火腿肠', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('331', '167', '化妆品套装', '1', '1', '10', '1', '2016-09-28 13:53:41', '-1.00', null, '', '化妆品套', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('332', '66', '冰冻海鲜', '1', '1', '0', '1', '2016-09-28 13:53:41', '-1.00', null, '', '冰冻海鲜', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('333', '223', '其他', '1', '1', '20', '1', '2016-09-28 13:53:41', '-1.00', null, '', '其他', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('334', '0', '手机数码、家用电器', '1', '1', '6', '1', '2016-09-28 13:53:41', '-1.00', null, '', '手机数码', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('335', '0', '图书音像、电子书籍', '1', '0', '11', '1', '2016-09-28 13:54:00', '-1.00', null, '', '图书音像', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('336', '0', '113', '1', '1', '13', '-1', '2016-09-28 13:54:30', '-1.00', null, '', '113', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('337', '0', '114', '1', '1', '14', '-1', '2016-09-29 14:38:18', '-1.00', null, '', '114', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('338', '337', '这是分类142', '1', '1', '0', '-1', '2016-09-29 18:20:50', '-1.00', null, '', '这是分类', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('339', '335', '经管励志', '1', '0', '1', '1', '2016-10-08 10:07:16', '-1.00', null, '', '经管励志', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('340', '335', '人文社科', '1', '0', '2', '1', '2016-10-08 10:07:30', '-1.00', null, '', '人文社科', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('341', '339', '管理', '1', '0', '1', '1', '2016-10-08 10:07:48', '-1.00', null, '', '管理', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('342', '339', '金融与投资', '1', '0', '2', '1', '2016-10-08 10:08:03', '-1.00', null, '', '金融与投', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('343', '339', '经济', '1', '0', '3', '1', '2016-10-08 10:09:20', '-1.00', null, '', '经济', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('344', '339', '励志与成功', '1', '0', '4', '1', '2016-10-08 10:09:39', '-1.00', null, '', '励志与成', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('345', '340', '历史心理学', '1', '0', '1', '1', '2016-10-08 10:10:20', '-1.00', null, '', '历史心理', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('346', '340', '社会科学', '1', '0', '2', '1', '2016-10-08 10:11:36', '-1.00', null, '', '社会科学', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('347', '340', '法律文化', '1', '0', '3', '1', '2016-10-08 10:12:00', '-1.00', null, '', '法律文化', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('348', '334', '手机通讯', '1', '1', '1', '1', '2016-10-08 10:15:12', '-1.00', null, '', '手机通讯', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('349', '334', '手机配件', '1', '1', '2', '1', '2016-10-08 10:15:48', '-1.00', null, '', '手机配件', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('350', '334', '摄影摄像', '1', '1', '3', '1', '2016-10-08 10:16:05', '-1.00', null, '', '摄影摄像', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('351', '348', '手机', '1', '1', '1', '1', '2016-10-08 10:16:48', '-1.00', null, '', '手机', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('352', '348', '对讲机', '1', '1', '2', '1', '2016-10-08 10:17:08', '-1.00', null, '', '对讲机', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('353', '348', '以旧换新', '1', '1', '3', '1', '2016-10-08 10:17:20', '-1.00', null, '', '以旧换新', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('354', '348', '手机维修', '1', '1', '4', '1', '2016-10-08 10:17:31', '-1.00', null, '', '手机维修', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('355', '349', '手机存储卡', '1', '1', '1', '1', '2016-10-08 10:17:58', '-1.00', null, '', '手机存储', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('356', '348', '数据线', '1', '1', '2', '1', '2016-10-08 10:18:11', '-1.00', null, '', '数据线', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('357', '349', '充电器', '1', '1', '3', '1', '2016-10-08 10:18:23', '-1.00', null, '', '充电器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('358', '350', '数码相机', '1', '1', '1', '1', '2016-10-08 10:18:40', '-1.00', null, '', '数码相机', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('359', '350', '单电/微单相机', '1', '1', '3', '1', '2016-10-08 10:18:53', '-1.00', null, '', '单电/微', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('360', '350', '拍立得运动相机', '1', '1', '3', '1', '2016-10-08 10:19:08', '-1.00', null, '', '拍立得运', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('361', '334', '生活电器', '1', '1', '4', '1', '2016-10-08 10:20:19', '-1.00', null, '', '生活电器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('362', '361', '电风扇', '1', '1', '1', '1', '2016-10-08 10:20:42', '-1.00', null, '', '电风扇', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('363', '361', '加湿器', '1', '1', '2', '1', '2016-10-08 10:20:54', '-1.00', null, '', '加湿器', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');
INSERT INTO `ox_goods_cats` VALUES ('364', '361', '净水设备', '1', '1', '3', '1', '2016-10-08 10:21:50', '-1.00', null, '', '净水设备', '', '', '', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail', 'goods_list', 'goods_detail');

-- ----------------------------
-- Table structure for ox_goods_consult
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_consult`;
CREATE TABLE `ox_goods_consult` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsId` int(10) unsigned NOT NULL COMMENT '商品id',
  `userId` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `consultType` tinyint(3) unsigned DEFAULT NULL COMMENT '咨询类别',
  `consultContent` varchar(500) DEFAULT NULL COMMENT '咨询内容',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '咨询时间',
  `reply` varchar(255) NOT NULL DEFAULT '' COMMENT '商家回复',
  `replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `dataFlag` tinyint(4) DEFAULT '1' COMMENT '数据有效标志',
  `isShow` tinyint(4) DEFAULT '1' COMMENT '是否显示数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_consult
-- ----------------------------

-- ----------------------------
-- Table structure for ox_goods_scores
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_scores`;
CREATE TABLE `ox_goods_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `shopId` int(11) NOT NULL DEFAULT '0',
  `totalScore` int(11) NOT NULL DEFAULT '0',
  `totalUsers` int(11) NOT NULL DEFAULT '0',
  `goodsScore` int(11) NOT NULL DEFAULT '0',
  `goodsUsers` int(11) NOT NULL DEFAULT '0',
  `serviceScore` int(11) NOT NULL DEFAULT '0',
  `serviceUsers` int(11) NOT NULL DEFAULT '0',
  `timeScore` int(11) NOT NULL DEFAULT '0',
  `timeUsers` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scoreId`),
  KEY `goodsId` (`goodsId`,`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_scores
-- ----------------------------
INSERT INTO `ox_goods_scores` VALUES ('1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('2', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('3', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('4', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('5', '5', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('6', '6', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('7', '7', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('8', '8', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('9', '9', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('10', '10', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('11', '11', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('12', '12', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('13', '13', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('14', '14', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('15', '15', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('16', '16', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('17', '17', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('18', '18', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('19', '19', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('20', '20', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('21', '21', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('22', '22', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('23', '23', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('24', '24', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('25', '25', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('26', '26', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('27', '27', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('28', '28', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('29', '29', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('30', '30', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('31', '31', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('32', '32', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('33', '33', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('34', '34', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('35', '35', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('36', '36', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('37', '37', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('38', '38', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('39', '39', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('40', '40', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('41', '41', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('42', '42', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('43', '43', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('44', '44', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('45', '45', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('46', '46', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('47', '47', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('48', '48', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('49', '49', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('50', '50', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('51', '51', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('52', '52', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('53', '53', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('54', '54', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('55', '55', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('56', '56', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('57', '57', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('58', '58', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('59', '59', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('60', '60', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('61', '61', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('62', '62', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('63', '63', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('64', '64', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('65', '65', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('66', '66', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('67', '67', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('68', '68', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('69', '69', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('70', '70', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('71', '71', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('72', '72', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('73', '73', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('74', '74', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('75', '75', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('76', '76', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('77', '77', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('78', '78', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('79', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('80', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('81', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('82', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('83', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('84', '84', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('85', '85', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('86', '86', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('87', '87', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('88', '88', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('89', '89', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('90', '90', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('91', '91', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('92', '92', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('93', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('94', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('95', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('96', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('97', '97', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('98', '98', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('99', '99', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('100', '100', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('101', '101', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('102', '102', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('103', '103', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('104', '104', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('105', '105', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('106', '106', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('107', '107', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('108', '108', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('109', '109', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('110', '110', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('111', '111', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('112', '112', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('113', '113', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('114', '114', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('115', '115', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('116', '116', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('117', '117', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('118', '118', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('119', '119', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('120', '120', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('121', '121', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('122', '122', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('123', '123', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('124', '124', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('125', '125', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('126', '126', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_goods_scores` VALUES ('127', '127', '1', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ox_goods_specs
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_specs`;
CREATE TABLE `ox_goods_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `productNo` varchar(20) NOT NULL,
  `specIds` varchar(255) NOT NULL,
  `marketPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `specPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `specStock` int(11) NOT NULL DEFAULT '0',
  `warnStock` int(11) NOT NULL DEFAULT '0',
  `saleNum` int(11) NOT NULL DEFAULT '0',
  `isDefault` tinyint(4) DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `shopId` (`goodsId`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_specs
-- ----------------------------
INSERT INTO `ox_goods_specs` VALUES ('1', '3', '75', '155088901270120-1', '1:2', '599.00', '538.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('2', '3', '75', '155088901270120-2', '1:3', '639.00', '588.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('3', '3', '75', '155088901270120-3', '1:4', '689.00', '615.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('4', '3', '75', '155088901270120-4', '5:2', '599.00', '528.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('5', '3', '75', '155088901270120-5', '5:3', '639.00', '615.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('6', '3', '75', '155088901270120-6', '5:4', '689.00', '588.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('7', '3', '75', '155088901270120-7', '6:2', '599.00', '538.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('8', '3', '75', '155088901270120-8', '6:3', '639.00', '588.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('9', '3', '75', '155088901270120-9', '6:4', '689.00', '615.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('10', '3', '76', '155088981799538-1', '7:8', '3100.00', '3088.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('11', '3', '76', '155088981799538-2', '7:9', '3200.00', '3088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('12', '3', '76', '155088981799538-3', '10:8', '3100.00', '2999.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('13', '3', '76', '155088981799538-4', '10:9', '3200.00', '3088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('14', '3', '76', '155088981799538-5', '11:8', '3100.00', '2999.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('15', '3', '76', '155088981799538-6', '11:9', '31200.00', '3088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('16', '3', '77', '155089011352225-1', '12:13', '4999.00', '4799.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('17', '3', '77', '155089011352225-2', '12:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('18', '3', '77', '155089011352225-3', '15:13', '4999.00', '4799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('19', '3', '77', '155089011352225-4', '15:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('20', '3', '77', '155089011352225-5', '16:13', '4999.00', '4799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('21', '3', '77', '155089011352225-6', '16:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('22', '3', '78', '155089055208436-1', '17:18', '3188.00', '3088.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('23', '3', '78', '155089055208436-2', '17:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('24', '3', '78', '155089055208436-3', '17:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('25', '3', '78', '155089055208436-4', '21:18', '3188.00', '3088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('26', '3', '78', '155089055208436-5', '21:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('27', '3', '78', '155089055208436-6', '21:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('28', '3', '78', '155089055208436-7', '22:18', '3188.00', '3088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('29', '3', '78', '155089055208436-8', '22:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('30', '3', '78', '155089055208436-9', '22:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('31', '3', '79', '155089084437307-1', '23:24', '2800.00', '1979.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('32', '3', '79', '155089084437307-2', '23:25', '2900.00', '2079.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('33', '3', '79', '155089084437307-3', '23:26', '3000.00', '2179.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('34', '3', '79', '155089084437307-4', '27:24', '2800.00', '1979.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('35', '3', '79', '155089084437307-5', '27:25', '2900.00', '2079.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('36', '3', '79', '155089084437307-6', '27:26', '3000.00', '2179.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('37', '5', '80', '155089130317321-1', '28:29', '5000.00', '4799.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('38', '5', '80', '155089130317321-2', '28:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('39', '5', '80', '155089130317321-3', '31:29', '5000.00', '4799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('40', '5', '80', '155089130317321-4', '31:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('41', '5', '80', '155089130317321-5', '32:29', '5000.00', '4799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('42', '5', '80', '155089130317321-6', '32:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('43', '5', '81', '155089160666265-1', '33:34', '4000.00', '3699.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('44', '5', '81', '155089160666265-2', '33:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('45', '5', '81', '155089160666265-3', '36:34', '4000.00', '3699.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('46', '5', '81', '155089160666265-4', '36:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('47', '5', '81', '155089160666265-5', '37:34', '4000.00', '3699.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('48', '5', '81', '155089160666265-6', '37:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('49', '5', '82', '155089192280471-1', '38:39', '8088.00', '8088.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('50', '5', '82', '155089192280471-2', '38:40', '9088.00', '9088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('51', '5', '82', '155089192280471-3', '41:39', '8088.00', '8088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('52', '5', '82', '155089192280471-4', '41:40', '9088.00', '9088.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('53', '1', '93', '155089430080877-1', '42:43', '799.00', '688.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('54', '1', '93', '155089430080877-2', '42:44', '899.00', '788.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('55', '1', '93', '155089430080877-3', '45:43', '799.00', '688.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('56', '1', '93', '155089430080877-4', '45:44', '899.00', '788.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('57', '1', '93', '155089430080877-5', '46:43', '799.00', '688.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('58', '1', '93', '155089430080877-6', '46:44', '899.00', '788.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('59', '1', '94', '155089461089448-1', '47:48', '799.00', '688.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('60', '1', '94', '155089461089448-2', '47:49', '899.00', '788.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('61', '1', '94', '155089461089448-3', '50:48', '799.00', '688.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('62', '1', '94', '155089461089448-4', '50:49', '899.00', '788.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('63', '1', '95', '155089483928854-1', '51:52', '2999.00', '2599.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('64', '1', '95', '155089483928854-2', '51:53', '3299.00', '2899.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('65', '1', '95', '155089483928854-3', '54:52', '2999.00', '2599.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('66', '1', '95', '155089483928854-4', '54:53', '3299.00', '2899.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('67', '1', '96', '155089506757352-1', '55:56', '999.00', '899.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('68', '1', '96', '155089506757352-2', '55:57', '1099.00', '999.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('69', '1', '96', '155089506757352-3', '58:56', '999.00', '899.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('70', '1', '96', '155089506757352-4', '58:57', '1099.00', '999.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('71', '1', '97', '155089535937627-1', '59:60', '1099.00', '1099.00', '100000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('72', '1', '97', '155089535937627-2', '59:61', '1299.00', '1299.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('73', '1', '97', '155089535937627-3', '62:60', '1499.00', '1499.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('74', '1', '97', '155089535937627-4', '62:61', '1099.00', '1099.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('75', '1', '97', '155089535937627-5', '63:60', '1299.00', '1299.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('76', '1', '97', '155089535937627-6', '63:61', '1499.00', '1499.00', '100000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('77', '1', '98', '155089572512326-1', '64:65', '3799.00', '3700.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('78', '1', '98', '155089572512326-2', '64:66', '3999.00', '3900.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('79', '1', '98', '155089572512326-3', '67:65', '3799.00', '3700.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('80', '1', '98', '155089572512326-4', '67:66', '3999.00', '3900.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('81', '1', '99', '155089600732131-1', '68:69', '2719.00', '2719.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('82', '1', '99', '155089600732131-2', '68:70', '2919.00', '2919.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('83', '1', '99', '155089600732131-3', '71:69', '2719.00', '2719.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('84', '1', '99', '155089600732131-4', '71:70', '2919.00', '2919.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('85', '1', '100', '155089624395287-1', '72:73', '1300.00', '1198.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('86', '1', '100', '155089624395287-2', '72:74', '1500.00', '1398.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('87', '1', '100', '155089624395287-3', '75:73', '1300.00', '1198.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('88', '1', '100', '155089624395287-4', '75:74', '1500.00', '1398.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('89', '1', '101', '155089643205863-1', '76:77', '2799.00', '2799.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('90', '1', '101', '155089643205863-2', '78:77', '2799.00', '2799.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('91', '1', '101', '155089643205863-3', '79:77', '2799.00', '2799.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('92', '1', '102', '155089674864371-1', '80:81', '1199.00', '1199.00', '10000', '10', '0', '1', '1');
INSERT INTO `ox_goods_specs` VALUES ('93', '1', '102', '155089674864371-2', '80:82', '1399.00', '1399.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('94', '1', '102', '155089674864371-3', '83:81', '1199.00', '1199.00', '10000', '10', '0', '0', '1');
INSERT INTO `ox_goods_specs` VALUES ('95', '1', '102', '155089674864371-4', '83:82', '1399.00', '1399.00', '10000', '10', '0', '0', '1');

-- ----------------------------
-- Table structure for ox_goods_virtuals
-- ----------------------------
DROP TABLE IF EXISTS `ox_goods_virtuals`;
CREATE TABLE `ox_goods_virtuals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `cardNo` varchar(20) NOT NULL,
  `cardPwd` varchar(20) NOT NULL,
  `orderId` int(11) NOT NULL DEFAULT '0',
  `orderNo` varchar(20) DEFAULT NULL,
  `isUse` tinyint(4) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`,`cardNo`),
  KEY `goodsId` (`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_goods_virtuals
-- ----------------------------

-- ----------------------------
-- Table structure for ox_home_menus
-- ----------------------------
DROP TABLE IF EXISTS `ox_home_menus`;
CREATE TABLE `ox_home_menus` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `menuName` varchar(100) NOT NULL,
  `menuUrl` varchar(100) NOT NULL,
  `menuOtherUrl` text,
  `menuType` tinyint(4) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) DEFAULT '1',
  `menuSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime DEFAULT NULL,
  `menuMark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menuId`),
  KEY `parentId` (`parentId`,`isShow`,`dataFlag`),
  KEY `menuType` (`menuType`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_home_menus
-- ----------------------------
INSERT INTO `ox_home_menus` VALUES ('1', '0', '买家中心', 'home/users/index', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('2', '1', '我的订单', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('3', '2', '待付款订单', 'home/orders/waitPay', 'home/orders/waitPayByPage,home/orders/cancellation,home/orders/detail', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('5', '2', '待收货订单', 'home/orders/waitReceive', 'home/orders/waitReceiveByPage,home/orders/cancellation,home/orders/detail,home/orders/receive,home/orders/toReject,home/ordercomplains/complain', '0', '1', '1', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('6', '2', '待评价订单', 'home/orders/waitAppraise', 'home/orders/waitAppraiseByPage,home/orders/detail,home/orders/orderAppraise,home/ordercomplains/complain', '0', '1', '2', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('7', '2', '已取消订单', 'home/orders/cancel', 'home/orders/cancelByPage,home/orders/detail', '0', '1', '4', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('8', '2', '拒收/退款', 'home/orders/abnormal', 'home/orders/abnormalByPage,home/ordercomplains/complain', '0', '1', '5', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('9', '2', '我的评价', 'home/goodsappraises/myAppraise', 'home/goodsappraises/userAppraise', '0', '1', '6', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('10', '1', '收藏管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('11', '43', '资金管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('13', '11', '积分管理', 'home/userscores/index', 'home/userscores/pageQuery', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('14', '1', '帐户设置', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('15', '14', '用户资料', 'home/users/edit', 'home/users/toEdit,home/users/editUserPhoto', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('16', '14', '安全设置', 'home/users/security', 'home/users/editPass,home/users/editEmail,home/users/editPhone', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('17', '14', '用户地址', 'home/useraddress/index', 'home/useraddress/listQuery,home/useraddress/edit,home/useraddress/setDefault,home/useraddress/del', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('19', '1', '客户管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('20', '19', '投诉管理', 'home/ordercomplains/index', 'home/ordercomplains/queryUserComplainByPage,home/ordercomplains/getUserComplainDetail', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('22', '0', '卖家中心', 'shop/shops/index', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('23', '22', '交易管理', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('24', '23', '待发货订单', 'shop/orders/waitdelivery', 'shop/orders/waitDeliveryByPage,shop/orders/deliver,shop/orders/view,shop/orders/getMoneyByOrder,shop/orders/orderPrint,shop/orders/view,shop/orders/toExport', '1', '1', '2', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('25', '23', '投诉订单', 'shop/ordercomplains/shopComplain', 'shop/ordercomplains/queryShopComplainByPage,shop/ordercomplains/getShopComplainDetail,shop/ordercomplains/respond', '1', '1', '5', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('29', '22', '商品管理', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('30', '29', '商品分类', 'shop/shopcats/index', 'shop/shopcats/batchSaveCats,shop/shopcats/del,shop/shopcats/editName,shop/shopcats/editSort,shop/shopcats/changeCatStatus', '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('31', '29', '新增商品', 'shop/goods/add', null, '1', '1', '1', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('32', '29', '出售中的商品', 'shop/goods/sale', 'shop/goods/editGoodsBase,shop/goods/saleByPage,shop/goods/edit,shop/goods/del,shop/goods/batchDel,shop/goods/changeGoodsStatus,shop/goods/changeSale,shop/goods/changSaleStatus,shop/goodsvirtuals/stock,shop/goodsvirtuals/stockByPage,shop/goodsvirtuals/edit,shop/goodsvirtuals/add,shop/goodsvirtuals/toadd,shop/goodsvirtuals/toEdit,shop/goodsvirtuals/del', '1', '1', '2', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('33', '29', '审核中的商品', 'shop/goods/audit', 'shop/goods/editGoodsBase,shop/goods/auditByPage,shop/goods/edit,shop/goods/del,shop/goods/batchDel,shop/goods/changeGoodsStatus,shop/goods/changeSale,shop/goods/changSaleStatus,shop/goodsvirtuals/stock,shop/goodsvirtuals/stockByPage,shop/goodsvirtuals/edit,shop/goodsvirtuals/add,shop/goodsvirtuals/toadd,shop/goodsvirtuals/toEdit,shop/goodsvirtuals/del', '1', '1', '3', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('34', '29', '仓库中的商品', 'shop/goods/store', 'shop/goods/editGoodsBase,shop/goods/storeByPage,shop/goods/illegalByPage,shop/goods/edit,shop/goods/del,shop/goods/batchDel,shop/goods/changeGoodsStatus,shop/goods/changeSale,shop/goods/changSaleStatus,shop/goodsvirtuals/stock,shop/goodsvirtuals/stockByPage,shop/goodsvirtuals/edit,shop/goodsvirtuals/add,shop/goodsvirtuals/toEdit,shop/goodsvirtuals/toadd,shop/goodsvirtuals/del', '1', '1', '4', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('35', '29', '评价管理', 'shop/goodsappraises/index', 'shop/goodsappraises/queryByPage,shop/goodsappraises/shopReply', '1', '1', '8', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('36', '29', '数据导入', 'shop/Imports/index', 'shop/goods/importGoods', '1', '1', '7', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('38', '22', '店铺设置', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('39', '38', '店铺资料', 'shop/shops/info', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('40', '38', '店铺设置', 'shop/shopconfigs/toShopCfg', null, '1', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('41', '10', '我关注的商品', 'home/favorites/goods', 'home/favorites/listGoodsQuery,home/favorites/cancel', '0', '1', '0', '1', '2016-08-14 18:37:18', null);
INSERT INTO `ox_home_menus` VALUES ('42', '38', '运费设置', 'shop/Shopfreights/index', 'shop/shopfreights/listProvince,shop/shopfreights/index', '1', '1', '0', '1', '2016-08-24 15:29:21', null);
INSERT INTO `ox_home_menus` VALUES ('43', '0', '资金管理', 'home/users/index', '', '0', '1', '0', '1', '2016-09-18 10:24:47', null);
INSERT INTO `ox_home_menus` VALUES ('44', '23', '已收货订单', 'shop/orders/finished', 'shop/orders/finishedByPage,shop/orders/view,shop/orders/orderPrint,shop/orders/view,shop/orders/toExport', '1', '1', '1', '1', '2016-09-18 10:30:29', null);
INSERT INTO `ox_home_menus` VALUES ('45', '23', '取消/拒收订单', 'shop/orders/failure', 'shop/orders/failureByPage,shop/orders/view,shop/orders/confer,shop/orders/confer,shop/orders/orderPrint,shop/orders/view,shop/orders/toExport', '1', '1', '4', '1', '2016-09-18 10:31:01', null);
INSERT INTO `ox_home_menus` VALUES ('46', '10', '我关注的商家', 'home/favorites/shops', 'home/favorites/listShopQuery,home/favorites/cancel', '0', '1', '2', '1', '2016-09-24 00:09:34', null);
INSERT INTO `ox_home_menus` VALUES ('48', '2', '已完成订单', 'home/orders/finish', 'home/orders/finishByPage,home/orders/detail,home/orders/orderAppraise,home/ordercomplains/complain', '0', '1', '3', '1', '2016-09-22 10:18:16', null);
INSERT INTO `ox_home_menus` VALUES ('49', '19', '用户信息', 'home/messages/index', 'home/messages/queryByList,home/messages/showMsg,home/messages/batchRead,home/messages/del,home/messages/batchDel', '0', '1', '3', '1', '2016-09-22 10:54:49', null);
INSERT INTO `ox_home_menus` VALUES ('53', '23', '已发货订单', 'shop/orders/delivered', 'shop/orders/deliveredByPage,shop/orders/view,shop/orders/orderPrint,shop/orders/view,shop/orders/toExport', '1', '1', '3', '1', '2016-10-10 16:11:39', null);
INSERT INTO `ox_home_menus` VALUES ('54', '29', '库存预警', 'shop/goods/stockWarnByPage', 'shop/goods/changSaleStatus,shop/goodsvirtuals/stock,shop/goodsvirtuals/stockByPage,shop/goodsvirtuals/edit,shop/goodsvirtuals/add,shop/goodsvirtuals/toadd,shop/goodsvirtuals/toEdit,shop/goodsvirtuals/del', '1', '1', '5', '1', '2016-10-11 11:50:56', null);
INSERT INTO `ox_home_menus` VALUES ('55', '23', '待付款订单', 'shop/orders/waituserPay', 'shop/orders/waituserPayByPage,shop/orders/editOrderMoney,shop/orders/view,shop/orders/view,shop/orders/toExport', '1', '1', '1', '1', '2016-10-14 14:58:59', null);
INSERT INTO `ox_home_menus` VALUES ('56', '29', '违规商品', 'shop/goods/illegal', '', '1', '1', '6', '1', '2016-10-14 22:13:33', null);
INSERT INTO `ox_home_menus` VALUES ('57', '0', '运营管理', 'shop/shops/index', '', '1', '1', '1', '1', '2016-11-08 14:33:14', null);
INSERT INTO `ox_home_menus` VALUES ('58', '57', '资金管理', '#', '', '1', '1', '0', '1', '2016-11-08 15:14:33', null);
INSERT INTO `ox_home_menus` VALUES ('59', '58', '订单结算', 'shop/settlements/index', 'shop/settlements/pageQuery,shop/settlements/pageUnSettledQuery,shop/settlements/pageSettledQuery,shop/settlements/settlement', '1', '1', '0', '1', '2016-11-08 15:34:38', null);
INSERT INTO `ox_home_menus` VALUES ('60', '11', '资金流水', 'home/logmoneys/usermoneys', 'home/logmoneys/pageUserQuery', '0', '1', '1', '1', '2016-11-09 23:53:50', null);
INSERT INTO `ox_home_menus` VALUES ('61', '58', '资金流水', 'shop/logmoneys/shopmoneys', 'shop/logmoneys/pageShopQuery', '1', '1', '3', '1', '2016-11-11 10:41:02', null);
INSERT INTO `ox_home_menus` VALUES ('62', '11', '提现管理', 'home/cashdraws/index', 'home/cashdraws/pageQuery,home/cashdraws/toEdit,home/cashdraws/drawMoney,home/cashconfigs/pageQuery,home/cashconfigs/toEdit,home/cashconfigs/add,home/cashconfigs/edit,home/cashconfigs/del', '0', '1', '5', '1', '2016-11-13 15:38:46', null);
INSERT INTO `ox_home_menus` VALUES ('63', '57', '报表统计', '#', '', '1', '1', '1', '1', '2016-11-30 17:12:54', null);
INSERT INTO `ox_home_menus` VALUES ('64', '63', '销售额统计', 'shop/reports/statSales', 'shop/reports/getStatSales', '1', '1', '1', '1', '2016-11-30 17:13:58', null);
INSERT INTO `ox_home_menus` VALUES ('65', '63', '销售订单统计', 'shop/reports/statOrders', 'shop/reports/getStatOrders', '1', '1', '2', '1', '2016-11-30 17:14:40', null);
INSERT INTO `ox_home_menus` VALUES ('66', '63', '商品销售排行', 'shop/reports/topSaleGoods', 'shop/reports/getTopSaleGoods', '1', '1', '0', '1', '2016-11-30 17:20:26', null);
INSERT INTO `ox_home_menus` VALUES ('67', '58', '提现管理', 'shop/cashdraws/shopIndex', 'shop/cashdraws/pageQueryByShop,shop/cashdraws/drawMoneyByShop,shop/cashdraws/toEditByShop', '1', '1', '4', '1', '2017-01-16 23:12:57', null);
INSERT INTO `ox_home_menus` VALUES ('68', '58', '钱包充值', 'shop/logmoneys/torecharge', '', '1', '1', '0', '1', '2017-01-17 16:26:56', null);
INSERT INTO `ox_home_menus` VALUES ('76', '0', '促销管理', 'shop/shops/index', '', '1', '1', '1', '1', '2017-02-15 10:33:31', null);
INSERT INTO `ox_home_menus` VALUES ('77', '76', '促销管理', '#', '', '1', '1', '1', '1', '2017-02-15 15:39:05', null);
INSERT INTO `ox_home_menus` VALUES ('100', '0', '营销活动', 'home/users/index', '', '0', '1', '2', '1', '2017-03-02 13:23:40', null);
INSERT INTO `ox_home_menus` VALUES ('101', '100', '营销活动', 'home/users/index', '', '0', '1', '2', '1', '2017-03-02 13:23:49', null);
INSERT INTO `ox_home_menus` VALUES ('102', '29', '商品咨询', 'shop/goodsconsult/shopReplyConsult', 'shop/goodsconsult/pageQuery,shop/goodsconsult/edit', '1', '1', '9', '1', '2017-06-29 14:48:15', null);
INSERT INTO `ox_home_menus` VALUES ('120', '38', '用户信息', 'shop/messages/shopMessage', 'shop/messages/queryByList,shop/messages/showShopMsg', '1', '1', '4', '1', '2017-01-01 13:35:20', null);
INSERT INTO `ox_home_menus` VALUES ('121', '38', '店铺公告', 'shop/shops/notice', '', '1', '1', '5', '1', '2017-07-13 22:40:56', null);
INSERT INTO `ox_home_menus` VALUES ('122', '19', '购买咨询', 'home/goodsconsult/myconsult', 'home/goodsconsult/myConsultByPage', '0', '1', '4', '1', '2017-08-21 15:35:33', null);
INSERT INTO `ox_home_menus` VALUES ('123', '11', '钱包充值', 'home/logmoneys/toUserRecharge', '', '0', '1', '0', '1', '2017-08-17 16:26:56', null);
INSERT INTO `ox_home_menus` VALUES ('124', '19', '违规举报', 'home/informs/index', 'home/informs/index', '0', '1', '6', '1', '2017-11-28 11:40:02', null);
INSERT INTO `ox_home_menus` VALUES ('231', '22', '帐号管理', '#', '', '1', '1', '4', '1', '2017-12-04 15:45:21', null);
INSERT INTO `ox_home_menus` VALUES ('232', '231', '角色管理', 'shop/shoproles/index', 'shop/shoproles/pageQuery,shop/shoproles/add,shop/shoproles/toAdd,shop/shoproles/edit,shop/shoproles/toEdit,shop/shoproles/del', '1', '1', '2', '1', '2017-12-04 15:49:48', null);
INSERT INTO `ox_home_menus` VALUES ('233', '231', '帐号列表', 'shop/shopusers/index', 'shop/shopusers/pageQuery,shop/shopusers/add,shop/shopusers/toAdd,shop/shopusers/edit,shop/shopusers/toEdit,shop/shopusers/del', '1', '1', '1', '1', '2017-12-04 15:52:35', null);
INSERT INTO `ox_home_menus` VALUES ('234', '231', '安全设置', 'shop/users/security', 'shop/users/editPass,shop/users/editEmail,shop/users/editPhone', '1', '1', '0', '1', null, null);
INSERT INTO `ox_home_menus` VALUES ('235', '231', '用户资料', 'shop/users/edit', 'shop/users/toEdit', '1', '1', '0', '1', null, null);
INSERT INTO `ox_home_menus` VALUES ('236', '38', '风格设置', 'shop/shopstyles/index', '', '1', '1', '0', '1', '2018-12-19 11:11:43', '');

-- ----------------------------
-- Table structure for ox_hooks
-- ----------------------------
DROP TABLE IF EXISTS `ox_hooks`;
CREATE TABLE `ox_hooks` (
  `hookId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hookRemarks` text NOT NULL COMMENT '描述',
  `hookType` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `addons` text,
  PRIMARY KEY (`hookId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_hooks
-- ----------------------------
INSERT INTO `ox_hooks` VALUES ('1', 'shopDocumentShopEditGoods', '编辑商品页设置', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('2', 'mobileControllerGoodsIndex', '跳转商品详情前执行', '1', '2016-12-26 19:48:25', '');
INSERT INTO `ox_hooks` VALUES ('3', 'afterUserRegist', '用户注册后', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('4', 'afterSubmitOrder', '提交订单后', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('5', 'afterUserReceive', '用户确认收货后', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('6', 'beforeEidtGoods', '编辑商品前执行', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('7', 'loadHomePage', '加载首页', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('8', 'homeDocumentShopHomeHeader', '店铺首页头部', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('9', 'homeDocumentGoodsDetail', '商品详情提示', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('10', 'mobileControllerIndexIndex', '跳转商城首页前执行', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('11', 'mobileDocumentUserIndex', '用户“我的”页', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('12', 'mobileDocumentGoodsDetailTips', '商品详情页提示', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('13', 'mobileDocumentGoodsDetail', '商品详情页文档内容', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('14', 'wechatControllerGoodsIndex', '跳转商品详情前执行', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('15', 'wechatDocumentUserIndex', '用户“我的”页', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('16', 'wechatDocumentGoodsDetailTips', '商品详情页提示', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('17', 'wechatDocumentGoodsDetail', '商品详情页文档内容', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('18', 'homeControllerCartsSettlement', '购物车结算', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('19', 'wechatControllerCartsSettlement', '购物车结算', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('20', 'mobileControllerCartsSettlement', '购物车结算', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('21', 'beforeSubmitOrder', '提交订单前', '1', '2016-12-26 19:46:50', '');
INSERT INTO `ox_hooks` VALUES ('22', 'sendSMS', '发送短信', '1', '2017-01-24 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('23', 'afterCancelOrder', '取消订单之后执行', '1', '2017-02-16 10:35:10', '');
INSERT INTO `ox_hooks` VALUES ('24', 'afterEditGoods', '商品编辑之后执行', '1', '2017-02-16 10:35:10', '');
INSERT INTO `ox_hooks` VALUES ('25', 'homeDocumentLogin', '用户登录页', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('26', 'afterUserLogin', '用户登录后', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('27', 'mobileDocumentLogin', '用户登录页', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('28', 'beforeUserLogin', '用户登录前', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('29', 'afterUserLogout', '用户退出后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('30', 'homeControllerBase', '基础构造方式执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('31', 'afterEditPass', '修改用户登录密码后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('32', 'afterEditEmail', '修改用户邮箱后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('33', 'homeControllerUsersEditEmail', '修改用户邮箱后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('34', 'homeDocumentOrderView', '订单详情', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('35', 'mobileDocumentOrderList', '订单列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('36', 'afterQueryUserOrders', '查询订单列表后', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('37', 'wechatDocumentOrderList', '订单列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('38', 'beforeCancelOrder', '订单取消前', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('39', 'initCronHook', '页面初始化定时任务', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('40', 'wechatDocumentUserIndexTools', '用户“我的”工具', '1', '2017-03-08 14:34:07', '');
INSERT INTO `ox_hooks` VALUES ('41', 'mobileDocumentUserIndexTools', '用户“我的”工具', '1', '2017-03-08 14:34:07', '');
INSERT INTO `ox_hooks` VALUES ('42', 'adminAfterAddUser', '管理员添加用户后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('43', 'adminAfterEditUser', '管理员修改用户资料后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('44', 'adminAfterEditUserPass', '管理员修改用户密码后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('45', 'adminAfterDelUser', '管理员删除用户后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('46', 'initConfigHook', '初始化配置时执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('47', 'homeBeforeGoShopHome', '跳去店铺首页前执行', '1', '2017-03-23 14:34:10', '');
INSERT INTO `ox_hooks` VALUES ('49', 'wechatControllerIndexIndex', '跳转商城首页前执行', '1', '2017-03-23 14:34:10', '');
INSERT INTO `ox_hooks` VALUES ('50', 'adminDocumentOrderView', '订单详情', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('51', 'homeDocumentGoodsPropDetail', '商品详情页-商品价格属性区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('52', 'mobileDocumentGoodsPropDetail', '商品详情页-商品价格属性区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('53', 'wechatDocumentGoodsPropDetail', '商品详情页-商品价格属性区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('54', 'afterQueryGoods', '商品列表查询之后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('55', 'afterQueryShops', '店铺列表查询之后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('56', 'afterQueryCarts', '购物车列表查询之后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('57', 'homeDocumentCartShopPromotion', '购物车-店铺列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('58', 'mobileDocumentCartShopPromotion', '购物车列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('59', 'wechatDocumentCartShopPromotion', '购物车列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('60', 'afterCalculateCartMoney', '计算购物车金额', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('61', 'beforeInsertOrder', '创建订单前执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('62', 'adminDocumentOrderSummaryView', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('63', 'homeDocumentOrderSummaryView', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('64', 'mobileDocumentOrderSummaryView', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('65', 'wechatDocumentOrderSummaryView', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('66', 'afterChangeShopStatus', '更改店铺状态之后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('67', 'afterChangeGoodsStatus', '更改商品状态之后执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('68', 'homeDocumentGoodsPromotionDetail', '商品详情页-促销区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('69', 'homeDocumentCartGoodsPromotion', '购物车-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('70', 'homeDocumentSettlementGoodsPromotion', '购物车结算-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('71', 'homeDocumentSettlementShopPromotion', '购物车结算-店铺列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('72', 'beforeInsertOrderGoods', '创建订单商品前执行', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('73', 'homeDocumentOrderViewGoodsPromotion', '订单详情-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('74', 'adminDocumentOrderViewGoodsPromotion', '订单详情-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('75', 'mobileDocumentCartGoodsPromotion', '购物车-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('76', 'mobileDocumentSettlementGoodsPromotion', '购物车结算-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('77', 'mobileDocumentGoodsPromotionDetail', '商品详情页-促销区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('78', 'wechatDocumentCartGoodsPromotion', '购物车-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('79', 'wechatDocumentSettlementGoodsPromotion', '购物车结算-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('80', 'wechatDocumentGoodsPromotionDetail', '商品详情页-促销区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('81', 'mobileDocumentCartShopDetail', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('82', 'wechatDocumentCartShopDetail', '订单结算区域显示', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('83', 'homeDocumentSettlementShopSummary', '订单结算-店铺区域', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('84', 'mobileDocumentOrderViewGoodsPromotion', '订单详情-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('85', 'wechatDocumentOrderViewGoodsPromotion', '订单详情-商品列表', '1', '2017-02-13 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('86', 'mobileDocumentUserIndexTerm', '用户“我的”财产', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('87', 'wechatDocumentUserIndexTerm', '用户“我的”财产', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('88', 'homeDocumentContact', '在线客服pc版入口', '1', '2018-05-09 15:03:53', '');
INSERT INTO `ox_hooks` VALUES ('89', 'homeDocumentListener', '在线客服pc版监听', '1', '2018-05-09 15:03:53', '');
INSERT INTO `ox_hooks` VALUES ('90', 'mobileDocumentContact', '在线客服手机版入口', '1', '2018-05-10 14:54:30', '');
INSERT INTO `ox_hooks` VALUES ('91', 'mobileDocumentBottomNav', '最近会话列表入口', '1', '2018-05-10 15:10:14', '');
INSERT INTO `ox_hooks` VALUES ('92', 'wechatDocumentBottomNav', '最近会话列表入口', '1', '2018-05-10 16:33:58', '');
INSERT INTO `ox_hooks` VALUES ('93', 'wechatDocumentContact', '在线客服微信版入口', '1', '2018-05-10 16:34:29', '');
INSERT INTO `ox_hooks` VALUES ('94', 'adminDocumentSysConfig', '商城设置', '1', '2018-05-10 17:24:42', '');
INSERT INTO `ox_hooks` VALUES ('95', 'adminAfterConfigAddon', '插件配置保存之后', '1', '2018-05-10 17:24:42', '');
INSERT INTO `ox_hooks` VALUES ('96', 'beforeEditOrderMoney', '修改订单价格前执行', '1', '2018-08-08 08:10:25', '');
INSERT INTO `ox_hooks` VALUES ('97', 'afterUploadPic', '图片上传之后处理', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('98', 'delPic', '删除图片', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('99', 'shopDocumentOrderViewGoodsPromotion', '订单详情-商品列表', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('100', 'shopDocumentOrderSummaryView', '订单结算区域显示', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('101', 'shopDocumentOrderView', '	订单详情', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('102', 'shopDocumentListener', '客服系统监听', '1', '2017-12-26 08:10:30', '');
INSERT INTO `ox_hooks` VALUES ('103', 'shopControllerUsersEditEmail', '修改用户邮箱后执行', '1', '2017-12-26 08:10:30', '');

-- ----------------------------
-- Table structure for ox_images
-- ----------------------------
DROP TABLE IF EXISTS `ox_images`;
CREATE TABLE `ox_images` (
  `imgId` int(11) NOT NULL AUTO_INCREMENT,
  `fromType` tinyint(4) NOT NULL DEFAULT '0',
  `dataId` int(11) NOT NULL DEFAULT '0',
  `imgPath` varchar(150) NOT NULL,
  `imgSize` int(11) NOT NULL DEFAULT '0',
  `isUse` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `fromTable` varchar(50) DEFAULT NULL,
  `ownId` int(11) DEFAULT NULL,
  `dataFlag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`imgId`),
  KEY `isUse` (`isUse`,`fromTable`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_images
-- ----------------------------
INSERT INTO `ox_images` VALUES ('1', '1', '58', 'upload/sysconfigs/2019-02/5c6f6e57055c5.png', '7124', '1', '2019-02-22 11:36:55', 'sysconfigs', '1', '1');
INSERT INTO `ox_images` VALUES ('2', '1', '105', 'upload/sysconfigs/2019-02/5c6f6e601b75d.jpg', '40044', '1', '2019-02-22 11:37:04', 'sysconfigs', '1', '1');
INSERT INTO `ox_images` VALUES ('5', '1', '1', 'upload/staffs/2019-02/5c6f702add5df.png', '2182', '1', '2019-02-22 11:44:42', 'staffs', '1', '1');
INSERT INTO `ox_images` VALUES ('6', '1', '0', 'upload/shops/2019-02/5c6f735eecb98.png', '2991', '0', '2019-02-22 11:58:22', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('7', '1', '1', 'upload/accreds/2019-02/5c6f74197968c.png', '1199', '1', '2019-02-22 12:01:29', 'accreds', '1', '1');
INSERT INTO `ox_images` VALUES ('8', '1', '2', 'upload/accreds/2019-02/5c6f74289d057.png', '3229', '1', '2019-02-22 12:01:44', 'accreds', '1', '1');
INSERT INTO `ox_images` VALUES ('9', '1', '1', 'upload/userranks/2019-02/5c6f75ec26d08.png', '1245', '1', '2019-02-22 12:09:16', 'userranks', '1', '1');
INSERT INTO `ox_images` VALUES ('10', '1', '2', 'upload/userranks/2019-02/5c6f75ff8b2ee.png', '1232', '1', '2019-02-22 12:09:35', 'userranks', '1', '1');
INSERT INTO `ox_images` VALUES ('11', '1', '3', 'upload/userranks/2019-02/5c6f760e5f336.png', '1344', '1', '2019-02-22 12:09:50', 'userranks', '1', '1');
INSERT INTO `ox_images` VALUES ('12', '1', '4', 'upload/userranks/2019-02/5c6f761f97d68.png', '1218', '1', '2019-02-22 12:10:07', 'userranks', '1', '1');
INSERT INTO `ox_images` VALUES ('13', '1', '44', 'upload/adspic/2019-02/5c6fbbca43a13.png', '882975', '1', '2019-02-22 17:07:22', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('14', '1', '45', 'upload/adspic/2019-02/5c6fbbf11ed19.png', '375081', '1', '2019-02-22 17:08:01', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('15', '1', '46', 'upload/adspic/2019-02/5c6fbc05a2740.png', '1225762', '1', '2019-02-22 17:08:21', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('16', '1', '47', 'upload/adspic/2019-02/5c6fbc2de1c27.png', '799225', '1', '2019-02-22 17:09:01', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('17', '1', '48', 'upload/adspic/2019-02/5c6fbc65742f0.jpg', '25743', '1', '2019-02-22 17:09:57', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('18', '1', '49', 'upload/adspic/2019-02/5c6fbcd873592.png', '90801', '1', '2019-02-22 17:11:52', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('19', '1', '2', 'upload/shops/2019-02/5c6fc2798c5ac.jpg', '43797', '1', '2019-02-22 17:35:53', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('20', '1', '3', 'upload/shops/2019-02/5c6fc4ad72c81.png', '10401', '0', '2019-02-22 17:45:17', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('21', '1', '4', 'upload/shops/2019-02/5c6fc531dd9c8.jpg', '6448', '1', '2019-02-22 17:47:29', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('22', '1', '3', 'upload/shops/2019-02/5c6fc5d92df80.png', '124107', '1', '2019-02-22 17:50:17', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('23', '1', '5', 'upload/shops/2019-02/5c6fc6b7cf47f.png', '28913', '1', '2019-02-22 17:53:59', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('24', '1', '6', 'upload/shops/2019-02/5c6fc7f049f2f.png', '33313', '1', '2019-02-22 17:59:12', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('25', '1', '7', 'upload/shops/2019-02/5c6fcbaf19537.jpg', '37904', '1', '2019-02-22 18:15:11', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('26', '1', '8', 'upload/shops/2019-02/5c6fcdcf02675.png', '138739', '1', '2019-02-22 18:24:15', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('27', '1', '9', 'upload/shops/2019-02/5c6fcf18365d3.png', '50563', '1', '2019-02-22 18:29:44', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('28', '1', '10', 'upload/shops/2019-02/5c6fd0793b4b2.png', '275481', '1', '2019-02-22 18:35:37', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('29', '1', '1', 'upload/shops/2019-02/5c6fd1074ce70.png', '2991', '1', '2019-02-22 18:37:59', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('30', '1', '11', 'upload/shops/2019-02/5c6fd345356c2.png', '109573', '1', '2019-02-22 18:47:33', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('31', '1', '1', 'upload/brands/2019-02/5c6fd56465c77.jpg', '6448', '1', '2019-02-22 18:56:36', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('32', '1', '2', 'upload/brands/2019-02/5c6fd5d79a69d.png', '275481', '1', '2019-02-22 18:58:31', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('33', '1', '3', 'upload/brands/2019-02/5c6fd65a654ed.jpg', '37904', '1', '2019-02-22 19:00:42', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('34', '1', '4', 'upload/brands/2019-02/5c6fd6786cceb.png', '28913', '1', '2019-02-22 19:01:12', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('35', '1', '5', 'upload/brands/2019-02/5c6fd6b8d24af.png', '124107', '1', '2019-02-22 19:02:16', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('36', '1', '6', 'upload/brands/2019-02/5c6fd79537a7b.png', '40722', '1', '2019-02-22 19:05:57', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('37', '1', '7', 'upload/brands/2019-02/5c6fd8563ad6b.png', '237526', '1', '2019-02-22 19:09:10', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('38', '1', '8', 'upload/brands/2019-02/5c6fd88b0ea78.png', '64997', '1', '2019-02-22 19:10:03', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('39', '1', '9', 'upload/brands/2019-02/5c6fd8a0b76a1.jpg', '43797', '1', '2019-02-22 19:10:24', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('40', '1', '10', 'upload/brands/2019-02/5c6fd8ef8638c.png', '126950', '1', '2019-02-22 19:11:43', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('41', '1', '11', 'upload/brands/2019-02/5c6fd935d7c53.png', '64450', '1', '2019-02-22 19:12:53', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('42', '1', '13', 'upload/brands/2019-02/5c6fd9aad38b6.png', '91498', '1', '2019-02-22 19:14:50', 'brands', '1', '1');
INSERT INTO `ox_images` VALUES ('43', '1', '12', 'upload/shops/2019-02/5c6fda722b6de.png', '91498', '1', '2019-02-22 19:18:10', 'shops', '1', '1');
INSERT INTO `ox_images` VALUES ('44', '0', '1', 'upload/goods/2019-02/5c6fdbb43c60b.jpg', '26985', '1', '2019-02-22 19:23:32', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('45', '0', '1', 'upload/goods/2019-02/5c6fdbcfb9c31.jpg', '56877', '1', '2019-02-22 19:23:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('46', '0', '1', 'upload/goods/2019-02/5c6fdbcfd78c8.jpg', '56228', '1', '2019-02-22 19:23:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('47', '0', '1', 'upload/image/2019-02/5c6fdc5a713c6.jpg', '164273', '1', '2019-02-22 19:26:18', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('48', '0', '1', 'upload/image/2019-02/5c6fdc68dc5f0.jpg', '54737', '1', '2019-02-22 19:26:32', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('49', '0', '1', 'upload/image/2019-02/5c6fdc7f17e75.jpg', '172457', '1', '2019-02-22 19:26:55', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('50', '0', '2', 'upload/goods/2019-02/5c6fdf5443b8b.jpg', '146587', '1', '2019-02-22 19:39:00', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('51', '0', '2', 'upload/goods/2019-02/5c6fdfa7be39b.jpg', '155880', '1', '2019-02-22 19:40:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('52', '0', '2', 'upload/goods/2019-02/5c6fdfa811224.jpg', '114041', '1', '2019-02-22 19:40:24', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('53', '0', '2', 'upload/image/2019-02/5c6fe04420022.jpg', '1076465', '1', '2019-02-22 19:43:00', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('54', '0', '3', 'upload/goods/2019-02/5c6fe180538b0.jpg', '100765', '1', '2019-02-22 19:48:16', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('55', '0', '3', 'upload/image/2019-02/5c6fe1e1e7a27.jpg', '178000', '1', '2019-02-22 19:49:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('56', '0', '3', 'upload/image/2019-02/5c6fe1e22aeac.jpg', '254761', '1', '2019-02-22 19:49:54', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('57', '0', '4', 'upload/goods/2019-02/5c6fe328ca438.jpg', '100102', '1', '2019-02-22 19:55:20', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('58', '0', '4', 'upload/image/2019-02/5c6fe36f07aff.png', '741726', '1', '2019-02-22 19:56:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('59', '0', '4', 'upload/image/2019-02/5c6fe36f58422.jpg', '478836', '1', '2019-02-22 19:56:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('60', '0', '4', 'upload/image/2019-02/5c6fe36fdc589.jpg', '333183', '1', '2019-02-22 19:56:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('61', '0', '4', 'upload/goods/2019-02/5c6fe3845fa1d.jpg', '63692', '1', '2019-02-22 19:56:52', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('62', '0', '4', 'upload/goods/2019-02/5c6fe38483475.jpg', '73432', '1', '2019-02-22 19:56:52', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('63', '0', '5', 'upload/goods/2019-02/5c6fe4e52497d.jpg', '73304', '1', '2019-02-22 20:02:45', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('64', '0', '5', 'upload/image/2019-02/5c6fe569827b9.jpg', '92262', '1', '2019-02-22 20:04:57', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('65', '0', '5', 'upload/image/2019-02/5c6fe569a4e89.jpg', '119925', '1', '2019-02-22 20:04:57', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('66', '0', '5', 'upload/image/2019-02/5c6fe56a345e0.jpg', '136852', '1', '2019-02-22 20:04:58', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('67', '0', '5', 'upload/goods/2019-02/5c6fe57fe08ba.jpg', '44795', '1', '2019-02-22 20:05:19', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('68', '0', '5', 'upload/goods/2019-02/5c6fe5801a8cc.jpg', '44795', '1', '2019-02-22 20:05:20', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('69', '0', '5', 'upload/goods/2019-02/5c6fe580440e6.jpg', '88040', '1', '2019-02-22 20:05:20', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('70', '0', '6', 'upload/goods/2019-02/5c7009f97fed8.jpg', '83618', '1', '2019-02-22 22:40:57', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('71', '0', '6', 'upload/goods/2019-02/5c7009ff963ac.jpg', '114207', '1', '2019-02-22 22:41:03', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('72', '0', '6', 'upload/goods/2019-02/5c7009ffbf7de.jpg', '154994', '1', '2019-02-22 22:41:03', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('73', '0', '6', 'upload/goods/2019-02/5c7009ffe8c10.jpg', '77766', '1', '2019-02-22 22:41:03', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('74', '0', '7', 'upload/goods/2019-02/5c700ac15dcb8.jpg', '63517', '1', '2019-02-22 22:44:17', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('75', '0', '7', 'upload/image/2019-02/5c700b4cc2c6c.jpg', '185200', '1', '2019-02-22 22:46:36', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('76', '0', '7', 'upload/image/2019-02/5c700b5af03eb.jpg', '107935', '1', '2019-02-22 22:46:50', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('77', '0', '7', 'upload/image/2019-02/5c700b5fddc24.jpg', '146687', '1', '2019-02-22 22:46:55', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('78', '0', '7', 'upload/goods/2019-02/5c700b686f485.jpg', '71729', '1', '2019-02-22 22:47:04', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('79', '0', '7', 'upload/goods/2019-02/5c700b68936ae.jpg', '66632', '1', '2019-02-22 22:47:04', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('80', '0', '7', 'upload/goods/2019-02/5c700b68b3e3d.jpg', '90502', '1', '2019-02-22 22:47:04', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('81', '0', '8', 'upload/goods/2019-02/5c700bc9270ce.jpg', '58428', '1', '2019-02-22 22:48:41', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('82', '0', '8', 'upload/goods/2019-02/5c700bd0e41fb.jpg', '53280', '1', '2019-02-22 22:48:48', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('83', '0', '8', 'upload/goods/2019-02/5c700bd1141e3.jpg', '76083', '1', '2019-02-22 22:48:49', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('84', '0', '8', 'upload/goods/2019-02/5c700bd13af04.jpg', '64518', '1', '2019-02-22 22:48:49', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('85', '0', '8', 'upload/goods/2019-02/5c700be42152d.jpg', '58428', '1', '2019-02-22 22:49:08', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('86', '0', '9', 'upload/goods/2019-02/5c700dece16ee.jpg', '49146', '1', '2019-02-22 22:57:48', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('87', '0', '9', 'upload/image/2019-02/5c700e6723a77.jpg', '161032', '1', '2019-02-22 22:59:51', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('88', '0', '9', 'upload/image/2019-02/5c700e679b4a3.jpg', '360126', '1', '2019-02-22 22:59:51', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('89', '0', '9', 'upload/image/2019-02/5c700e6824280.jpg', '306301', '1', '2019-02-22 22:59:52', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('90', '0', '9', 'upload/image/2019-02/5c700e68a5cd6.jpg', '163113', '1', '2019-02-22 22:59:52', 'image', '12', '1');
INSERT INTO `ox_images` VALUES ('91', '0', '9', 'upload/goods/2019-02/5c700e7648f99.jpg', '80375', '1', '2019-02-22 23:00:06', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('92', '0', '9', 'upload/goods/2019-02/5c700e76af851.jpg', '82461', '1', '2019-02-22 23:00:06', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('93', '0', '9', 'upload/goods/2019-02/5c700e771019d.jpg', '164595', '1', '2019-02-22 23:00:07', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('94', '0', '10', 'upload/goods/2019-02/5c700ec5be8a3.jpg', '86020', '1', '2019-02-22 23:01:25', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('95', '0', '10', 'upload/goods/2019-02/5c700ec631ebc.jpg', '137126', '1', '2019-02-22 23:01:26', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('96', '0', '10', 'upload/goods/2019-02/5c700ec69d1ad.jpg', '62627', '1', '2019-02-22 23:01:26', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('97', '0', '10', 'upload/goods/2019-02/5c700ec6f30c1.jpg', '47092', '1', '2019-02-22 23:01:26', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('98', '0', '10', 'upload/goods/2019-02/5c700ec8de13e.jpg', '75239', '1', '2019-02-22 23:01:28', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('99', '0', '11', 'upload/goods/2019-02/5c700f8c723d4.jpg', '54550', '1', '2019-02-22 23:04:44', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('100', '0', '11', 'upload/goods/2019-02/5c700f929a1ed.jpg', '33640', '1', '2019-02-22 23:04:50', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('101', '0', '11', 'upload/goods/2019-02/5c700f92dd04c.jpg', '42864', '1', '2019-02-22 23:04:50', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('102', '0', '11', 'upload/goods/2019-02/5c700f9328d8b.jpg', '55533', '1', '2019-02-22 23:04:51', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('103', '0', '12', 'upload/goods/2019-02/5c70102662730.jpg', '44762', '1', '2019-02-22 23:07:18', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('104', '0', '12', 'upload/goods/2019-02/5c70102c6a971.jpg', '37295', '1', '2019-02-22 23:07:24', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('105', '0', '12', 'upload/goods/2019-02/5c70102cbd9a4.jpg', '36216', '1', '2019-02-22 23:07:24', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('106', '0', '12', 'upload/goods/2019-02/5c70102d17977.jpg', '54556', '1', '2019-02-22 23:07:25', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('107', '0', '13', 'upload/goods/2019-02/5c7010b22b1bd.jpg', '60719', '1', '2019-02-22 23:09:38', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('108', '0', '13', 'upload/goods/2019-02/5c7010bad8d07.jpg', '46293', '1', '2019-02-22 23:09:46', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('109', '0', '13', 'upload/goods/2019-02/5c7010bb25dce.jpg', '52064', '1', '2019-02-22 23:09:47', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('110', '0', '14', 'upload/goods/2019-02/5c701163780f1.jpg', '51608', '1', '2019-02-22 23:12:35', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('111', '0', '14', 'upload/goods/2019-02/5c701167f1372.jpg', '61926', '1', '2019-02-22 23:12:39', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('112', '0', '14', 'upload/goods/2019-02/5c7011684690b.jpg', '89284', '1', '2019-02-22 23:12:40', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('113', '0', '14', 'upload/goods/2019-02/5c70116889f3b.jpg', '48470', '1', '2019-02-22 23:12:40', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('114', '0', '15', 'upload/goods/2019-02/5c70120f821b0.jpg', '39814', '1', '2019-02-22 23:15:27', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('115', '0', '15', 'upload/goods/2019-02/5c7012139a16a.jpg', '38598', '1', '2019-02-22 23:15:31', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('116', '0', '15', 'upload/goods/2019-02/5c701213da4d1.jpg', '38598', '1', '2019-02-22 23:15:31', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('117', '0', '16', 'upload/goods/2019-02/5c70136f86c0e.jpg', '51630', '1', '2019-02-22 23:21:19', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('118', '0', '16', 'upload/goods/2019-02/5c701375924ff.jpg', '73886', '1', '2019-02-22 23:21:25', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('119', '0', '16', 'upload/goods/2019-02/5c701375d62ff.jpg', '67913', '1', '2019-02-22 23:21:25', 'goods', '12', '1');
INSERT INTO `ox_images` VALUES ('120', '0', '17', 'upload/goods/2019-02/5c7014c7ac414.jpg', '52867', '1', '2019-02-22 23:27:03', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('121', '0', '17', 'upload/goods/2019-02/5c7014cdec4ea.jpg', '83529', '1', '2019-02-22 23:27:09', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('122', '0', '17', 'upload/goods/2019-02/5c7014ce431f4.jpg', '77979', '1', '2019-02-22 23:27:10', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('123', '0', '17', 'upload/goods/2019-02/5c7014ce9084e.jpg', '83337', '1', '2019-02-22 23:27:10', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('124', '0', '17', 'upload/goods/2019-02/5c7014ced4a36.jpg', '77744', '1', '2019-02-22 23:27:10', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('125', '0', '18', 'upload/goods/2019-02/5c70153c13a38.jpg', '60995', '1', '2019-02-22 23:29:00', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('126', '0', '18', 'upload/goods/2019-02/5c70154136226.jpg', '46501', '1', '2019-02-22 23:29:05', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('127', '0', '18', 'upload/goods/2019-02/5c70154173e7d.jpg', '52846', '1', '2019-02-22 23:29:05', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('128', '0', '19', 'upload/goods/2019-02/5c701600afae0.jpg', '60223', '1', '2019-02-22 23:32:16', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('129', '0', '19', 'upload/goods/2019-02/5c7016727f27a.jpg', '65024', '1', '2019-02-22 23:34:10', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('130', '0', '19', 'upload/goods/2019-02/5c701672d5576.jpg', '69273', '1', '2019-02-22 23:34:10', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('131', '0', '20', 'upload/goods/2019-02/5c7016c13f501.jpg', '45071', '1', '2019-02-22 23:35:29', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('132', '0', '20', 'upload/goods/2019-02/5c7016c6e911f.jpg', '45750', '1', '2019-02-22 23:35:34', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('133', '0', '20', 'upload/goods/2019-02/5c7016c7561a6.jpg', '50644', '1', '2019-02-22 23:35:35', 'goods', '2', '1');
INSERT INTO `ox_images` VALUES ('134', '0', '21', 'upload/goods/2019-02/5c7018f657ceb.png', '413294', '1', '2019-02-22 23:44:54', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('135', '0', '21', 'upload/goods/2019-02/5c70194e6f2de.jpg', '37812', '1', '2019-02-22 23:46:22', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('136', '0', '21', 'upload/goods/2019-02/5c70194eb196d.jpg', '62261', '1', '2019-02-22 23:46:22', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('137', '0', '21', 'upload/goods/2019-02/5c70194ef1504.jpg', '61078', '1', '2019-02-22 23:46:22', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('138', '0', '21', 'upload/image/2019-02/5c70196837a18.jpg', '141546', '1', '2019-02-22 23:46:48', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('139', '0', '21', 'upload/image/2019-02/5c70196892b35.jpg', '53898', '1', '2019-02-22 23:46:48', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('140', '0', '21', 'upload/image/2019-02/5c70196939992.jpg', '145544', '1', '2019-02-22 23:46:49', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('141', '0', '21', 'upload/image/2019-02/5c701969a6bc3.jpg', '145544', '1', '2019-02-22 23:46:49', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('142', '0', '22', 'upload/goods/2019-02/5c7019ba87e1d.jpg', '67554', '1', '2019-02-22 23:48:10', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('143', '0', '22', 'upload/goods/2019-02/5c7019c132099.jpg', '43413', '1', '2019-02-22 23:48:17', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('144', '0', '22', 'upload/goods/2019-02/5c7019c174b11.jpg', '71922', '1', '2019-02-22 23:48:17', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('145', '0', '22', 'upload/goods/2019-02/5c7019c1b4e78.jpg', '76906', '1', '2019-02-22 23:48:17', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('146', '0', '22', 'upload/image/2019-02/5c701a08f0484.jpg', '335302', '1', '2019-02-22 23:49:28', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('147', '0', '22', 'upload/image/2019-02/5c701a09613dc.jpg', '230288', '1', '2019-02-22 23:49:29', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('148', '0', '22', 'upload/image/2019-02/5c701a09ddda2.jpg', '149460', '1', '2019-02-22 23:49:29', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('149', '0', '23', 'upload/goods/2019-02/5c701a5755dbd.jpg', '53854', '1', '2019-02-22 23:50:47', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('150', '0', '23', 'upload/goods/2019-02/5c701a5f61b09.jpg', '59641', '1', '2019-02-22 23:50:55', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('151', '0', '23', 'upload/goods/2019-02/5c701a5fa4969.jpg', '40206', '1', '2019-02-22 23:50:55', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('152', '0', '24', 'upload/goods/2019-02/5c701b2a1e059.png', '331520', '1', '2019-02-22 23:54:18', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('153', '0', '24', 'upload/goods/2019-02/5c701b2f8daba.jpg', '67141', '1', '2019-02-22 23:54:23', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('154', '0', '24', 'upload/goods/2019-02/5c701b2fdbccc.jpg', '57917', '1', '2019-02-22 23:54:23', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('155', '0', '25', 'upload/goods/2019-02/5c701baa78064.jpg', '61810', '1', '2019-02-22 23:56:26', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('156', '0', '25', 'upload/goods/2019-02/5c701bb162648.jpg', '61810', '1', '2019-02-22 23:56:33', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('157', '0', '25', 'upload/goods/2019-02/5c701bb1ac9d9.jpg', '94545', '1', '2019-02-22 23:56:33', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('158', '0', '25', 'upload/goods/2019-02/5c701bb1f2ee9.jpg', '60630', '1', '2019-02-22 23:56:33', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('159', '0', '26', 'upload/goods/2019-02/5c701c1d8f553.jpg', '63890', '1', '2019-02-22 23:58:21', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('160', '0', '26', 'upload/goods/2019-02/5c701c2383358.jpg', '53449', '1', '2019-02-22 23:58:27', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('161', '0', '26', 'upload/goods/2019-02/5c701c23cfdfa.jpg', '84447', '1', '2019-02-22 23:58:27', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('162', '0', '26', 'upload/goods/2019-02/5c701c242fb8d.jpg', '95062', '1', '2019-02-22 23:58:28', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('163', '0', '27', 'upload/goods/2019-02/5c701cb13a1f5.jpg', '65059', '1', '2019-02-23 00:00:49', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('164', '0', '27', 'upload/goods/2019-02/5c701cb66d387.jpg', '105704', '1', '2019-02-23 00:00:54', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('165', '0', '27', 'upload/goods/2019-02/5c701cb6b7ee8.jpg', '72028', '1', '2019-02-23 00:00:54', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('166', '0', '28', 'upload/goods/2019-02/5c701d59500e0.jpg', '41187', '1', '2019-02-23 00:03:37', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('167', '0', '28', 'upload/goods/2019-02/5c701d5df3733.jpg', '56602', '1', '2019-02-23 00:03:42', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('168', '0', '28', 'upload/goods/2019-02/5c701d5e59288.jpg', '79959', '1', '2019-02-23 00:03:42', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('169', '0', '28', 'upload/goods/2019-02/5c701d5ea6ccb.jpg', '65717', '1', '2019-02-23 00:03:42', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('170', '0', '29', 'upload/goods/2019-02/5c701df09e7e5.jpg', '75096', '1', '2019-02-23 00:06:08', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('171', '0', '29', 'upload/goods/2019-02/5c701df5c9c75.jpg', '43276', '1', '2019-02-23 00:06:13', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('172', '0', '29', 'upload/goods/2019-02/5c701df62097f.jpg', '84619', '1', '2019-02-23 00:06:14', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('173', '0', '29', 'upload/goods/2019-02/5c701df66012e.jpg', '94113', '1', '2019-02-23 00:06:14', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('174', '0', '30', 'upload/goods/2019-02/5c701e758a032.png', '500485', '1', '2019-02-23 00:08:21', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('175', '0', '30', 'upload/goods/2019-02/5c701e7e97cf8.jpg', '100308', '1', '2019-02-23 00:08:30', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('176', '0', '30', 'upload/goods/2019-02/5c701e7f068d7.jpg', '130746', '1', '2019-02-23 00:08:31', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('177', '0', '30', 'upload/goods/2019-02/5c701e7f63d1d.jpg', '75077', '1', '2019-02-23 00:08:31', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('178', '0', '30', 'upload/image/2019-02/5c701e94d4ab0.jpg', '347039', '1', '2019-02-23 00:08:52', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('179', '0', '30', 'upload/image/2019-02/5c701e9534844.jpg', '342374', '1', '2019-02-23 00:08:53', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('180', '1', '0', 'upload/goods/2019-02/5c701f3cd69eb.jpg', '65108', '0', '2019-02-23 00:11:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('181', '1', '0', 'upload/goods/2019-02/5c701f421ca87.jpg', '62207', '0', '2019-02-23 00:11:46', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('182', '1', '0', 'upload/goods/2019-02/5c701f4268589.jpg', '52140', '0', '2019-02-23 00:11:46', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('183', '0', '31', 'upload/goods/2019-02/5c701f586d0c4.jpg', '65108', '1', '2019-02-23 00:12:08', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('184', '0', '31', 'upload/goods/2019-02/5c701f625a634.jpg', '166497', '1', '2019-02-23 00:12:18', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('185', '0', '31', 'upload/goods/2019-02/5c701f62d0507.jpg', '62207', '1', '2019-02-23 00:12:18', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('186', '0', '31', 'upload/goods/2019-02/5c701f631cdfe.jpg', '52140', '1', '2019-02-23 00:12:19', 'goods', '7', '1');
INSERT INTO `ox_images` VALUES ('187', '0', '31', 'upload/image/2019-02/5c701f9ee3d08.jpg', '285995', '1', '2019-02-23 00:13:18', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('188', '0', '31', 'upload/image/2019-02/5c701f9f1bdd0.jpg', '279937', '1', '2019-02-23 00:13:19', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('189', '0', '31', 'upload/image/2019-02/5c701f9fa3c73.jpg', '287423', '1', '2019-02-23 00:13:19', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('190', '0', '31', 'upload/image/2019-02/5c701fa0275d9.jpg', '285975', '1', '2019-02-23 00:13:20', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('191', '0', '31', 'upload/image/2019-02/5c701fa0a7849.jpg', '287052', '1', '2019-02-23 00:13:20', 'image', '7', '1');
INSERT INTO `ox_images` VALUES ('192', '1', '0', 'upload/goods/2019-02/5c702104012f8.jpg', '72255', '0', '2019-02-23 00:19:16', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('193', '0', '32', 'upload/goods/2019-02/5c7021183151b.jpg', '72255', '1', '2019-02-23 00:19:36', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('194', '0', '32', 'upload/goods/2019-02/5c7021237f9a3.jpg', '42752', '1', '2019-02-23 00:19:47', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('195', '0', '32', 'upload/goods/2019-02/5c702123bca41.jpg', '40586', '1', '2019-02-23 00:19:47', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('196', '0', '32', 'upload/image/2019-02/5c70217d55d95.jpg', '279871', '1', '2019-02-23 00:21:17', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('197', '0', '32', 'upload/image/2019-02/5c70217e02549.jpg', '302405', '1', '2019-02-23 00:21:18', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('198', '0', '32', 'upload/image/2019-02/5c70217e82819.jpg', '198056', '1', '2019-02-23 00:21:18', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('199', '0', '32', 'upload/image/2019-02/5c70217f08da3.jpg', '304934', '1', '2019-02-23 00:21:19', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('200', '0', '33', 'upload/goods/2019-02/5c7021e600ce3.jpg', '65532', '1', '2019-02-23 00:23:02', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('201', '0', '33', 'upload/goods/2019-02/5c7021eba81f0.jpg', '92174', '1', '2019-02-23 00:23:07', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('202', '0', '33', 'upload/goods/2019-02/5c7021ebf2199.jpg', '59968', '1', '2019-02-23 00:23:07', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('203', '0', '33', 'upload/goods/2019-02/5c7021ec390b7.jpg', '92121', '1', '2019-02-23 00:23:08', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('204', '0', '34', 'upload/goods/2019-02/5c70224e33937.jpg', '68050', '1', '2019-02-23 00:24:46', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('205', '0', '34', 'upload/goods/2019-02/5c702253c7d90.jpg', '56230', '1', '2019-02-23 00:24:51', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('206', '0', '34', 'upload/goods/2019-02/5c702254132ff.jpg', '54850', '1', '2019-02-23 00:24:52', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('207', '0', '35', 'upload/goods/2019-02/5c7022e90ea0c.jpg', '51530', '1', '2019-02-23 00:27:21', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('208', '0', '35', 'upload/goods/2019-02/5c7022f69af44.jpg', '30595', '1', '2019-02-23 00:27:34', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('209', '0', '35', 'upload/goods/2019-02/5c7022f6efeb8.jpg', '58654', '1', '2019-02-23 00:27:34', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('210', '0', '35', 'upload/goods/2019-02/5c7022f74a65a.jpg', '26693', '1', '2019-02-23 00:27:35', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('211', '0', '35', 'upload/image/2019-02/5c702324e1933.jpg', '161216', '1', '2019-02-23 00:28:20', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('212', '0', '35', 'upload/image/2019-02/5c7023256bf2e.jpg', '390704', '1', '2019-02-23 00:28:21', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('213', '0', '35', 'upload/image/2019-02/5c702325e55c5.jpg', '108141', '1', '2019-02-23 00:28:21', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('214', '0', '36', 'upload/goods/2019-02/5c702388e0748.jpg', '45043', '1', '2019-02-23 00:30:00', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('215', '0', '36', 'upload/goods/2019-02/5c70238de46e7.jpg', '43590', '1', '2019-02-23 00:30:05', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('216', '1', '0', 'upload/goods/2019-02/5c7023edcb687.jpg', '64983', '0', '2019-02-23 00:31:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('217', '1', '0', 'upload/goods/2019-02/5c7023f57a75d.jpg', '65598', '0', '2019-02-23 00:31:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('218', '1', '0', 'upload/goods/2019-02/5c7023f5cf6d1.jpg', '33268', '0', '2019-02-23 00:31:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('219', '1', '0', 'upload/goods/2019-02/5c7023f62737b.jpg', '67951', '0', '2019-02-23 00:31:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('220', '0', '37', 'upload/goods/2019-02/5c702400a1adc.jpg', '64983', '1', '2019-02-23 00:32:00', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('221', '0', '37', 'upload/goods/2019-02/5c702405e2f01.jpg', '65598', '1', '2019-02-23 00:32:05', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('222', '0', '37', 'upload/goods/2019-02/5c7024063849a.jpg', '33268', '1', '2019-02-23 00:32:06', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('223', '0', '37', 'upload/goods/2019-02/5c70240676ca9.jpg', '67951', '1', '2019-02-23 00:32:06', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('224', '0', '38', 'upload/goods/2019-02/5c702453e0dc4.jpg', '55732', '1', '2019-02-23 00:33:23', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('225', '0', '38', 'upload/goods/2019-02/5c702458c0753.jpg', '56443', '1', '2019-02-23 00:33:28', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('226', '0', '38', 'upload/goods/2019-02/5c7024591a33d.jpg', '35262', '1', '2019-02-23 00:33:29', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('227', '0', '39', 'upload/goods/2019-02/5c7024e84aca5.jpg', '48710', '1', '2019-02-23 00:35:52', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('228', '0', '39', 'upload/goods/2019-02/5c7024f0aa5dd.jpg', '57341', '1', '2019-02-23 00:36:00', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('229', '0', '39', 'upload/goods/2019-02/5c7024f0ecc6c.jpg', '92107', '1', '2019-02-23 00:36:00', 'goods', '10', '1');
INSERT INTO `ox_images` VALUES ('230', '0', '39', 'upload/image/2019-02/5c70251bed53b.jpg', '86400', '1', '2019-02-23 00:36:43', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('231', '0', '39', 'upload/image/2019-02/5c70251c5d3c7.jpg', '78166', '1', '2019-02-23 00:36:44', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('232', '0', '39', 'upload/image/2019-02/5c70251ce3904.jpg', '75477', '1', '2019-02-23 00:36:44', 'image', '10', '1');
INSERT INTO `ox_images` VALUES ('233', '0', '40', 'upload/goods/2019-02/5c702644c83bf.jpg', '61283', '1', '2019-02-23 00:41:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('234', '0', '40', 'upload/goods/2019-02/5c70264aca83f.jpg', '56414', '1', '2019-02-23 00:41:46', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('235', '0', '40', 'upload/goods/2019-02/5c70264b2b95b.jpg', '112881', '1', '2019-02-23 00:41:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('236', '0', '40', 'upload/goods/2019-02/5c70264b8186f.jpg', '52171', '1', '2019-02-23 00:41:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('237', '0', '40', 'upload/image/2019-02/5c702689cd07f.jpg', '176250', '1', '2019-02-23 00:42:49', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('238', '0', '40', 'upload/image/2019-02/5c70268a36918.jpg', '85158', '1', '2019-02-23 00:42:50', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('239', '0', '40', 'upload/image/2019-02/5c70268aa45c0.jpg', '66411', '1', '2019-02-23 00:42:50', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('240', '0', '40', 'upload/image/2019-02/5c70268b3a2f1.jpg', '57784', '1', '2019-02-23 00:42:51', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('241', '0', '40', 'upload/image/2019-02/5c70268bb9239.jpg', '168126', '1', '2019-02-23 00:42:51', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('242', '0', '41', 'upload/goods/2019-02/5c7026cf6b192.jpg', '41877', '1', '2019-02-23 00:43:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('243', '0', '41', 'upload/goods/2019-02/5c7026d474ef2.jpg', '65290', '1', '2019-02-23 00:44:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('244', '0', '41', 'upload/goods/2019-02/5c7026d4d59e9.jpg', '54995', '1', '2019-02-23 00:44:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('245', '0', '42', 'upload/goods/2019-02/5c702746534f5.jpg', '95174', '1', '2019-02-23 00:45:58', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('246', '0', '43', 'upload/goods/2019-02/5c7027e1b2ede.jpg', '47167', '1', '2019-02-23 00:48:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('247', '0', '43', 'upload/goods/2019-02/5c7027ea09db1.jpg', '62742', '1', '2019-02-23 00:48:42', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('248', '0', '43', 'upload/goods/2019-02/5c7027ea506a9.jpg', '68142', '1', '2019-02-23 00:48:42', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('249', '0', '43', 'upload/goods/2019-02/5c7027ea8e6e8.jpg', '63237', '1', '2019-02-23 00:48:42', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('250', '0', '43', 'upload/image/2019-02/5c70282a12508.jpg', '139130', '1', '2019-02-23 00:49:46', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('251', '0', '43', 'upload/image/2019-02/5c70282a40b3b.jpg', '83095', '1', '2019-02-23 00:49:46', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('252', '0', '44', 'upload/goods/2019-02/5c7028d66c84b.jpg', '71685', '1', '2019-02-23 00:52:38', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('253', '0', '44', 'upload/goods/2019-02/5c7028dbaa9a8.jpg', '55912', '1', '2019-02-23 00:52:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('254', '0', '44', 'upload/goods/2019-02/5c7028dc016b2.jpg', '36829', '1', '2019-02-23 00:52:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('255', '0', '44', 'upload/image/2019-02/5c702911ab6f3.jpg', '145214', '1', '2019-02-23 00:53:37', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('256', '0', '44', 'upload/image/2019-02/5c702911d31b9.jpg', '92156', '1', '2019-02-23 00:53:37', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('257', '0', '44', 'upload/image/2019-02/5c7029121d330.jpg', '98970', '1', '2019-02-23 00:53:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('258', '0', '44', 'upload/image/2019-02/5c7029123c53e.jpg', '91432', '1', '2019-02-23 00:53:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('259', '0', '44', 'upload/image/2019-02/5c7029125cad4.jpg', '96687', '1', '2019-02-23 00:53:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('260', '0', '45', 'upload/goods/2019-02/5c702959ec6e6.jpg', '26743', '1', '2019-02-23 00:54:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('261', '0', '45', 'upload/goods/2019-02/5c7029614dd7a.jpg', '34333', '1', '2019-02-23 00:54:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('262', '0', '45', 'upload/goods/2019-02/5c7029619699c.jpg', '30098', '1', '2019-02-23 00:54:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('263', '0', '45', 'upload/goods/2019-02/5c702961cf001.jpg', '34048', '1', '2019-02-23 00:54:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('264', '0', '46', 'upload/goods/2019-02/5c7029d0616e3.jpg', '36695', '1', '2019-02-23 00:56:48', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('265', '0', '46', 'upload/goods/2019-02/5c7029d55ed08.jpg', '24893', '1', '2019-02-23 00:56:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('266', '0', '46', 'upload/image/2019-02/5c702a06c1809.jpg', '221451', '1', '2019-02-23 00:57:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('267', '0', '46', 'upload/image/2019-02/5c702a06edb1b.jpg', '105751', '1', '2019-02-23 00:57:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('268', '0', '46', 'upload/image/2019-02/5c702a0778451.jpg', '305667', '1', '2019-02-23 00:57:43', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('269', '0', '46', 'upload/image/2019-02/5c702a0800676.jpg', '293795', '1', '2019-02-23 00:57:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('270', '0', '47', 'upload/goods/2019-02/5c702ac2ef965.jpg', '85060', '1', '2019-02-23 01:00:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('271', '0', '47', 'upload/goods/2019-02/5c702ac9d9b60.jpg', '35565', '1', '2019-02-23 01:00:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('272', '0', '47', 'upload/goods/2019-02/5c702aca27faf.jpg', '73405', '1', '2019-02-23 01:00:58', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('273', '0', '47', 'upload/image/2019-02/5c702af26a667.jpg', '434044', '1', '2019-02-23 01:01:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('274', '0', '47', 'upload/image/2019-02/5c702af314b74.jpg', '287787', '1', '2019-02-23 01:01:39', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('275', '0', '47', 'upload/image/2019-02/5c702af3942a2.jpg', '219282', '1', '2019-02-23 01:01:39', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('276', '0', '48', 'upload/goods/2019-02/5c702c18b06d8.jpg', '35654', '1', '2019-02-23 01:06:32', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('277', '0', '48', 'upload/goods/2019-02/5c702c23c9f93.jpg', '45021', '1', '2019-02-23 01:06:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('278', '0', '48', 'upload/goods/2019-02/5c702c24160ba.jpg', '118175', '1', '2019-02-23 01:06:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('279', '0', '48', 'upload/image/2019-02/5c702c7a89a10.jpg', '91632', '1', '2019-02-23 01:08:10', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('280', '0', '48', 'upload/image/2019-02/5c702c7b0c566.jpg', '111263', '1', '2019-02-23 01:08:11', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('281', '0', '49', 'upload/goods/2019-02/5c702ce84a8c1.jpg', '61634', '1', '2019-02-23 01:10:00', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('282', '0', '49', 'upload/image/2019-02/5c702d34cbe7d.jpg', '286365', '1', '2019-02-23 01:11:16', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('283', '0', '49', 'upload/image/2019-02/5c702d350a6cc.jpg', '287500', '1', '2019-02-23 01:11:17', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('284', '0', '49', 'upload/image/2019-02/5c702d3593da7.jpg', '411470', '1', '2019-02-23 01:11:17', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('285', '0', '50', 'upload/goods/2019-02/5c702d7797b80.jpg', '65890', '1', '2019-02-23 01:12:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('286', '0', '50', 'upload/goods/2019-02/5c702d7caebd4.jpg', '31413', '1', '2019-02-23 01:12:28', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('287', '0', '50', 'upload/goods/2019-02/5c702d7d0416d.jpg', '28614', '1', '2019-02-23 01:12:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('288', '0', '50', 'upload/goods/2019-02/5c702d7d48f0d.jpg', '63696', '1', '2019-02-23 01:12:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('289', '0', '51', 'upload/goods/2019-02/5c702de916219.jpg', '79427', '1', '2019-02-23 01:14:17', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('290', '0', '51', 'upload/goods/2019-02/5c702dee1289e.jpg', '69894', '1', '2019-02-23 01:14:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('291', '0', '51', 'upload/goods/2019-02/5c702dee683ca.jpg', '23898', '1', '2019-02-23 01:14:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('292', '0', '51', 'upload/goods/2019-02/5c702dee9fe77.jpg', '66054', '1', '2019-02-23 01:14:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('293', '0', '52', 'upload/goods/2019-02/5c702e71a981a.jpg', '68321', '1', '2019-02-23 01:16:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('294', '0', '52', 'upload/goods/2019-02/5c702e76d1211.jpg', '25972', '1', '2019-02-23 01:16:38', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('295', '0', '52', 'upload/goods/2019-02/5c702e771cf50.jpg', '21339', '1', '2019-02-23 01:16:39', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('296', '0', '52', 'upload/goods/2019-02/5c702e775422d.jpg', '49636', '1', '2019-02-23 01:16:39', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('297', '0', '52', 'upload/image/2019-02/5c702eab58e7c.jpg', '103850', '1', '2019-02-23 01:17:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('298', '0', '52', 'upload/image/2019-02/5c702eabdbefe.jpg', '199017', '1', '2019-02-23 01:17:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('299', '0', '52', 'upload/image/2019-02/5c702eac6c76c.jpg', '431516', '1', '2019-02-23 01:17:32', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('300', '0', '52', 'upload/image/2019-02/5c702eace217a.jpg', '97687', '1', '2019-02-23 01:17:32', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('301', '0', '53', 'upload/goods/2019-02/5c702f3c3603e.jpg', '111838', '1', '2019-02-23 01:19:56', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('302', '0', '53', 'upload/goods/2019-02/5c702f4488a6b.jpg', '59084', '1', '2019-02-23 01:20:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('303', '0', '53', 'upload/image/2019-02/5c702f743c9c0.jpg', '267908', '1', '2019-02-23 01:20:52', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('304', '0', '53', 'upload/image/2019-02/5c702f7493b20.jpg', '452967', '1', '2019-02-23 01:20:52', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('305', '0', '53', 'upload/image/2019-02/5c702f752383b.jpg', '352745', '1', '2019-02-23 01:20:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('306', '0', '53', 'upload/image/2019-02/5c702f75a0523.jpg', '445156', '1', '2019-02-23 01:20:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('307', '0', '53', 'upload/goods/2019-02/5c702f7c13821.jpg', '108745', '1', '2019-02-23 01:21:00', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('308', '0', '54', 'upload/goods/2019-02/5c702fe72a7ce.jpg', '87369', '1', '2019-02-23 01:22:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('309', '0', '54', 'upload/goods/2019-02/5c702feb8afc1.jpg', '87131', '1', '2019-02-23 01:22:51', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('310', '0', '54', 'upload/goods/2019-02/5c702febf1879.jpg', '41146', '1', '2019-02-23 01:22:51', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('311', '0', '54', 'upload/image/2019-02/5c70300f732a4.jpg', '264049', '1', '2019-02-23 01:23:27', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('312', '0', '54', 'upload/image/2019-02/5c70300fd9ffa.jpg', '269252', '1', '2019-02-23 01:23:27', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('313', '0', '54', 'upload/image/2019-02/5c7030105cf9b.jpg', '261126', '1', '2019-02-23 01:23:28', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('314', '0', '55', 'upload/goods/2019-02/5c70a28a95b15.jpg', '77776', '1', '2019-02-23 09:31:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('315', '0', '55', 'upload/goods/2019-02/5c70a29151abd.jpg', '32257', '1', '2019-02-23 09:32:01', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('316', '0', '55', 'upload/goods/2019-02/5c70a29190a9c.jpg', '32114', '1', '2019-02-23 09:32:01', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('317', '0', '55', 'upload/goods/2019-02/5c70a291c7991.jpg', '48866', '1', '2019-02-23 09:32:01', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('318', '0', '55', 'upload/image/2019-02/5c70a2fbd6433.jpg', '507103', '1', '2019-02-23 09:33:47', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('319', '0', '55', 'upload/image/2019-02/5c70a3017db7e.jpg', '158224', '1', '2019-02-23 09:33:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('320', '0', '55', 'upload/image/2019-02/5c70a307511f2.jpg', '129943', '1', '2019-02-23 09:33:59', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('321', '0', '56', 'upload/goods/2019-02/5c70a3a9a9921.jpg', '54396', '1', '2019-02-23 09:36:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('322', '0', '56', 'upload/goods/2019-02/5c70a3b1ea622.jpg', '44239', '1', '2019-02-23 09:36:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('323', '0', '56', 'upload/goods/2019-02/5c70a3b2357a9.jpg', '47679', '1', '2019-02-23 09:36:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('324', '0', '56', 'upload/goods/2019-02/5c70a3b275b10.jpg', '90398', '1', '2019-02-23 09:36:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('325', '0', '56', 'upload/goods/2019-02/5c70a3b2ba4c8.jpg', '52731', '1', '2019-02-23 09:36:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('326', '0', '56', 'upload/image/2019-02/5c70a3dbdb198.jpg', '103239', '1', '2019-02-23 09:37:31', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('327', '0', '56', 'upload/image/2019-02/5c70a3dc7ca03.jpg', '235655', '1', '2019-02-23 09:37:32', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('328', '0', '56', 'upload/image/2019-02/5c70a3dd07b09.jpg', '393417', '1', '2019-02-23 09:37:33', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('329', '0', '56', 'upload/image/2019-02/5c70a3dd906a9.jpg', '507103', '1', '2019-02-23 09:37:33', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('330', '0', '57', 'upload/goods/2019-02/5c70a465ca3a2.jpg', '76117', '1', '2019-02-23 09:39:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('331', '0', '57', 'upload/goods/2019-02/5c70a46b7a78e.jpg', '26362', '1', '2019-02-23 09:39:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('332', '0', '57', 'upload/goods/2019-02/5c70a46bc3b7f.jpg', '50863', '1', '2019-02-23 09:39:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('333', '0', '57', 'upload/goods/2019-02/5c70a46c0f8be.jpg', '55308', '1', '2019-02-23 09:39:56', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('334', '0', '57', 'upload/image/2019-02/5c70a4892b0d7.jpg', '142940', '1', '2019-02-23 09:40:25', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('335', '0', '57', 'upload/image/2019-02/5c70a4895fca4.jpg', '186812', '1', '2019-02-23 09:40:25', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('336', '0', '57', 'upload/image/2019-02/5c70a489d99f8.jpg', '122275', '1', '2019-02-23 09:40:25', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('337', '0', '57', 'upload/image/2019-02/5c70a48a5fcdd.jpg', '112385', '1', '2019-02-23 09:40:26', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('338', '0', '58', 'upload/goods/2019-02/5c70a50fc7b7c.jpg', '44972', '1', '2019-02-23 09:42:39', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('339', '0', '58', 'upload/goods/2019-02/5c70a513920f5.jpg', '24141', '1', '2019-02-23 09:42:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('340', '0', '58', 'upload/goods/2019-02/5c70a513ce5db.jpg', '21464', '1', '2019-02-23 09:42:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('341', '0', '58', 'upload/goods/2019-02/5c70a5140f34f.jpg', '69750', '1', '2019-02-23 09:42:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('342', '0', '58', 'upload/image/2019-02/5c70a5505041e.jpg', '66342', '1', '2019-02-23 09:43:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('343', '0', '58', 'upload/image/2019-02/5c70a55072aee.jpg', '91690', '1', '2019-02-23 09:43:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('344', '0', '58', 'upload/image/2019-02/5c70a55099bf7.jpg', '157045', '1', '2019-02-23 09:43:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('345', '0', '59', 'upload/goods/2019-02/5c70a5a1b86c0.jpg', '94462', '1', '2019-02-23 09:45:05', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('346', '0', '59', 'upload/goods/2019-02/5c70a5b164697.jpg', '42770', '1', '2019-02-23 09:45:21', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('347', '0', '59', 'upload/goods/2019-02/5c70a5b1a0795.jpg', '68026', '1', '2019-02-23 09:45:21', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('348', '0', '59', 'upload/goods/2019-02/5c70a5cb27bc8.jpg', '86028', '1', '2019-02-23 09:45:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('349', '0', '59', 'upload/image/2019-02/5c70a5f8e8c23.jpg', '292149', '1', '2019-02-23 09:46:32', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('350', '0', '59', 'upload/image/2019-02/5c70a5f975c69.jpg', '273682', '1', '2019-02-23 09:46:33', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('351', '0', '59', 'upload/image/2019-02/5c70a5fa03c50.jpg', '288756', '1', '2019-02-23 09:46:34', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('352', '0', '59', 'upload/image/2019-02/5c70a5fa7dd8c.jpg', '54526', '1', '2019-02-23 09:46:34', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('353', '0', '60', 'upload/goods/2019-02/5c70a69e78cff.jpg', '59596', '1', '2019-02-23 09:49:18', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('354', '0', '60', 'upload/goods/2019-02/5c70a6a5ed9db.png', '307235', '1', '2019-02-23 09:49:25', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('355', '0', '60', 'upload/goods/2019-02/5c70a6a881025.png', '157840', '1', '2019-02-23 09:49:28', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('356', '0', '60', 'upload/goods/2019-02/5c70a6a995c6b.png', '157540', '1', '2019-02-23 09:49:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('357', '0', '60', 'upload/image/2019-02/5c70a6ca81ba6.jpg', '294414', '1', '2019-02-23 09:50:02', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('358', '0', '60', 'upload/image/2019-02/5c70a6cadbd23.jpg', '195305', '1', '2019-02-23 09:50:02', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('359', '0', '60', 'upload/image/2019-02/5c70a6cb65e89.jpg', '503754', '1', '2019-02-23 09:50:03', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('360', '0', '60', 'upload/image/2019-02/5c70a6cbe2abe.jpg', '245416', '1', '2019-02-23 09:50:03', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('361', '0', '61', 'upload/goods/2019-02/5c70a73a4e4f8.jpg', '42241', '1', '2019-02-23 09:51:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('362', '0', '61', 'upload/goods/2019-02/5c70a744a9852.jpg', '84055', '1', '2019-02-23 09:52:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('363', '0', '61', 'upload/goods/2019-02/5c70a744f37fb.jpg', '66788', '1', '2019-02-23 09:52:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('364', '0', '61', 'upload/goods/2019-02/5c70a7453f53a.jpg', '68607', '1', '2019-02-23 09:52:05', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('365', '0', '61', 'upload/image/2019-02/5c70a76d9d270.jpg', '315185', '1', '2019-02-23 09:52:45', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('366', '0', '61', 'upload/image/2019-02/5c70a76dc3ba9.jpg', '495526', '1', '2019-02-23 09:52:45', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('367', '0', '61', 'upload/image/2019-02/5c70a76e4e4de.jpg', '493516', '1', '2019-02-23 09:52:46', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('368', '0', '61', 'upload/image/2019-02/5c70a76ecad2c.jpg', '397517', '1', '2019-02-23 09:52:46', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('369', '0', '62', 'upload/goods/2019-02/5c70a7d044711.jpg', '66939', '1', '2019-02-23 09:54:24', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('370', '0', '62', 'upload/goods/2019-02/5c70a7e05023f.jpg', '72398', '1', '2019-02-23 09:54:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('371', '0', '62', 'upload/goods/2019-02/5c70a7e09192f.jpg', '88236', '1', '2019-02-23 09:54:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('372', '0', '62', 'upload/image/2019-02/5c70a807ec362.jpg', '105398', '1', '2019-02-23 09:55:19', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('373', '0', '62', 'upload/image/2019-02/5c70a80886e6c.jpg', '166912', '1', '2019-02-23 09:55:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('374', '0', '62', 'upload/image/2019-02/5c70a8090bdc8.jpg', '215852', '1', '2019-02-23 09:55:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('375', '0', '62', 'upload/image/2019-02/5c70a8098d437.jpg', '222945', '1', '2019-02-23 09:55:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('376', '0', '63', 'upload/goods/2019-02/5c70a8706d7f2.png', '184265', '1', '2019-02-23 09:57:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('377', '0', '63', 'upload/goods/2019-02/5c70a8739ce79.jpg', '63762', '1', '2019-02-23 09:57:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('378', '0', '63', 'upload/image/2019-02/5c70a8ac3eb97.jpg', '470552', '1', '2019-02-23 09:58:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('379', '0', '63', 'upload/image/2019-02/5c70a8acb5623.jpg', '505227', '1', '2019-02-23 09:58:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('380', '0', '63', 'upload/image/2019-02/5c70a8ad3efb9.jpg', '202281', '1', '2019-02-23 09:58:05', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('381', '0', '64', 'upload/goods/2019-02/5c70a8faf0d36.jpg', '115252', '1', '2019-02-23 09:59:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('382', '0', '64', 'upload/goods/2019-02/5c70a9031c4af.jpg', '76170', '1', '2019-02-23 09:59:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('383', '0', '64', 'upload/goods/2019-02/5c70a90364130.jpg', '40402', '1', '2019-02-23 09:59:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('384', '0', '64', 'upload/goods/2019-02/5c70a903a11ce.jpg', '126316', '1', '2019-02-23 09:59:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('385', '0', '64', 'upload/image/2019-02/5c70a934e81d2.jpg', '213137', '1', '2019-02-23 10:00:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('386', '0', '64', 'upload/image/2019-02/5c70a9356ae06.jpg', '109656', '1', '2019-02-23 10:00:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('387', '0', '65', 'upload/goods/2019-02/5c70a9a526db4.jpg', '104127', '1', '2019-02-23 10:02:13', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('388', '0', '65', 'upload/goods/2019-02/5c70a9cf1715a.jpg', '104167', '1', '2019-02-23 10:02:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('389', '0', '65', 'upload/goods/2019-02/5c70a9cf643cc.jpg', '106892', '1', '2019-02-23 10:02:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('390', '0', '65', 'upload/goods/2019-02/5c70a9cfa7614.jpg', '67664', '1', '2019-02-23 10:02:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('391', '0', '65', 'upload/image/2019-02/5c70a9f79cb51.jpg', '213904', '1', '2019-02-23 10:03:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('392', '0', '65', 'upload/image/2019-02/5c70a9f83b0f4.jpg', '137421', '1', '2019-02-23 10:03:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('393', '0', '65', 'upload/image/2019-02/5c70a9f8b7941.jpg', '128276', '1', '2019-02-23 10:03:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('394', '0', '66', 'upload/goods/2019-02/5c70aa5233c56.jpg', '51359', '1', '2019-02-23 10:05:06', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('395', '0', '66', 'upload/goods/2019-02/5c70aa57f2868.jpg', '30497', '1', '2019-02-23 10:05:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('396', '0', '66', 'upload/goods/2019-02/5c70aa5837076.jpg', '40567', '1', '2019-02-23 10:05:12', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('397', '0', '66', 'upload/image/2019-02/5c70aa7fe9ce6.jpg', '289681', '1', '2019-02-23 10:05:51', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('398', '0', '66', 'upload/image/2019-02/5c70aa808190f.jpg', '250905', '1', '2019-02-23 10:05:52', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('399', '0', '66', 'upload/image/2019-02/5c70aa8109364.jpg', '249757', '1', '2019-02-23 10:05:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('400', '0', '66', 'upload/image/2019-02/5c70aa8189a32.jpg', '128276', '1', '2019-02-23 10:05:53', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('401', '0', '67', 'upload/goods/2019-02/5c70aaf0e5864.jpg', '114532', '1', '2019-02-23 10:07:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('402', '0', '67', 'upload/goods/2019-02/5c70aafb81932.jpg', '43164', '1', '2019-02-23 10:07:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('403', '0', '67', 'upload/goods/2019-02/5c70aafbc4b7a.jpg', '104672', '1', '2019-02-23 10:07:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('404', '0', '67', 'upload/goods/2019-02/5c70aafc19d2b.jpg', '76491', '1', '2019-02-23 10:07:56', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('405', '0', '67', 'upload/goods/2019-02/5c70aafc59caa.jpg', '77707', '1', '2019-02-23 10:07:56', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('406', '0', '67', 'upload/image/2019-02/5c70ab3e5f5a2.jpg', '170989', '1', '2019-02-23 10:09:02', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('407', '0', '67', 'upload/image/2019-02/5c70ab3e8958c.jpg', '443359', '1', '2019-02-23 10:09:02', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('408', '0', '67', 'upload/image/2019-02/5c70ab3ea666b.jpg', '254728', '1', '2019-02-23 10:09:02', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('409', '0', '68', 'upload/goods/2019-02/5c70ab9b1b112.jpg', '74773', '1', '2019-02-23 10:10:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('410', '0', '68', 'upload/goods/2019-02/5c70ab9ebf6cc.jpg', '51510', '1', '2019-02-23 10:10:38', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('411', '0', '68', 'upload/goods/2019-02/5c70ab9f11d84.jpg', '51750', '1', '2019-02-23 10:10:39', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('412', '0', '68', 'upload/image/2019-02/5c70abdcdbe15.jpg', '159798', '1', '2019-02-23 10:11:40', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('413', '0', '68', 'upload/image/2019-02/5c70abdd6dc7c.jpg', '132184', '1', '2019-02-23 10:11:41', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('414', '0', '69', 'upload/goods/2019-02/5c70ac1bc4583.jpg', '63371', '1', '2019-02-23 10:12:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('415', '0', '69', 'upload/goods/2019-02/5c70ac2fb8a90.jpg', '65044', '1', '2019-02-23 10:13:03', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('416', '0', '69', 'upload/goods/2019-02/5c70ac30047cf.jpg', '74410', '1', '2019-02-23 10:13:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('417', '0', '69', 'upload/image/2019-02/5c70ac4f29c9d.jpg', '90926', '1', '2019-02-23 10:13:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('418', '0', '69', 'upload/image/2019-02/5c70ac4fbf360.jpg', '87616', '1', '2019-02-23 10:13:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('419', '0', '69', 'upload/image/2019-02/5c70ac5043ed4.jpg', '169953', '1', '2019-02-23 10:13:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('420', '0', '70', 'upload/goods/2019-02/5c70acc11085f.jpg', '69276', '1', '2019-02-23 10:15:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('421', '0', '70', 'upload/goods/2019-02/5c70acdac3597.jpg', '40099', '1', '2019-02-23 10:15:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('422', '0', '70', 'upload/goods/2019-02/5c70acdb0d77d.jpg', '47383', '1', '2019-02-23 10:15:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('423', '0', '70', 'upload/goods/2019-02/5c70acdb47553.jpg', '23418', '1', '2019-02-23 10:15:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('424', '0', '70', 'upload/image/2019-02/5c70ad0486a73.jpg', '196883', '1', '2019-02-23 10:16:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('425', '0', '70', 'upload/image/2019-02/5c70ad04b316d.jpg', '259322', '1', '2019-02-23 10:16:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('426', '0', '70', 'upload/image/2019-02/5c70ad04d19bc.jpg', '184371', '1', '2019-02-23 10:16:36', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('427', '0', '71', 'upload/goods/2019-02/5c70ad43a2255.jpg', '68516', '1', '2019-02-23 10:17:39', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('428', '0', '71', 'upload/goods/2019-02/5c70ad4b1e69f.jpg', '30550', '1', '2019-02-23 10:17:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('429', '0', '71', 'upload/goods/2019-02/5c70ad4b597fd.jpg', '47753', '1', '2019-02-23 10:17:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('430', '0', '71', 'upload/goods/2019-02/5c70ad4b92e03.jpg', '30371', '1', '2019-02-23 10:17:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('431', '0', '71', 'upload/image/2019-02/5c70ad845f6c3.jpg', '264379', '1', '2019-02-23 10:18:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('432', '0', '71', 'upload/image/2019-02/5c70ad84a05e2.jpg', '68133', '1', '2019-02-23 10:18:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('433', '0', '71', 'upload/image/2019-02/5c70ad8528fd7.jpg', '205251', '1', '2019-02-23 10:18:45', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('434', '0', '72', 'upload/goods/2019-02/5c70adfacbc42.jpg', '39059', '1', '2019-02-23 10:20:42', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('435', '0', '72', 'upload/goods/2019-02/5c70ae00bbfad.jpg', '31836', '1', '2019-02-23 10:20:48', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('436', '0', '72', 'upload/goods/2019-02/5c70ae0102ae3.jpg', '44594', '1', '2019-02-23 10:20:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('437', '0', '72', 'upload/image/2019-02/5c70ae29329ae.jpg', '141773', '1', '2019-02-23 10:21:29', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('438', '0', '72', 'upload/image/2019-02/5c70ae29c22b0.jpg', '75016', '1', '2019-02-23 10:21:29', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('439', '0', '72', 'upload/image/2019-02/5c70ae2a4c02d.jpg', '117550', '1', '2019-02-23 10:21:30', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('440', '0', '73', 'upload/goods/2019-02/5c70aeb179999.jpg', '56500', '1', '2019-02-23 10:23:45', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('441', '0', '73', 'upload/goods/2019-02/5c70aeb955552.jpg', '75239', '1', '2019-02-23 10:23:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('442', '0', '73', 'upload/goods/2019-02/5c70aeb9a0c6c.jpg', '117456', '1', '2019-02-23 10:23:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('443', '0', '73', 'upload/goods/2019-02/5c70aeb9eb3e5.jpg', '82334', '1', '2019-02-23 10:23:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('444', '0', '73', 'upload/image/2019-02/5c70aee83c1bd.jpg', '265587', '1', '2019-02-23 10:24:40', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('445', '0', '73', 'upload/image/2019-02/5c70aee8c5cfd.jpg', '155285', '1', '2019-02-23 10:24:40', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('446', '0', '73', 'upload/image/2019-02/5c70aee9519bb.jpg', '73298', '1', '2019-02-23 10:24:41', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('447', '0', '74', 'upload/goods/2019-02/5c70af43e03b0.jpg', '85357', '1', '2019-02-23 10:26:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('448', '0', '74', 'upload/image/2019-02/5c70af5ad3db1.jpg', '532160', '1', '2019-02-23 10:26:34', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('449', '0', '74', 'upload/goods/2019-02/5c70af6416880.jpg', '53626', '1', '2019-02-23 10:26:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('450', '0', '74', 'upload/goods/2019-02/5c70af645a298.jpg', '122243', '1', '2019-02-23 10:26:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('451', '0', '74', 'upload/goods/2019-02/5c70af64a2eb9.jpg', '56523', '1', '2019-02-23 10:26:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('452', '0', '75', 'upload/goods/2019-02/5c70b08d0e3a2.jpg', '48416', '1', '2019-02-23 10:31:41', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('453', '0', '75', 'upload/image/2019-02/5c70b0c5126d6.jpg', '150393', '1', '2019-02-23 10:32:37', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('454', '0', '75', 'upload/image/2019-02/5c70b0c533e06.jpg', '157015', '1', '2019-02-23 10:32:37', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('455', '0', '75', 'upload/image/2019-02/5c70b0c55320d.jpg', '67846', '1', '2019-02-23 10:32:37', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('456', '0', '75', 'upload/image/2019-02/5c70b0c574d25.jpg', '278333', '1', '2019-02-23 10:32:37', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('457', '0', '75', 'upload/goods/2019-02/5c70b0e0a0e6f.jpg', '19050', '1', '2019-02-23 10:33:04', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('458', '0', '75', 'upload/goods/2019-02/5c70b0e0db7fd.jpg', '24838', '1', '2019-02-23 10:33:04', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('459', '0', '75', 'upload/goods/2019-02/5c70b0e11f452.jpg', '48416', '1', '2019-02-23 10:33:05', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('460', '1', '0', 'upload/goods/2019-02/5c70b0f71c674.jpg', '48416', '0', '2019-02-23 10:33:27', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('461', '1', '0', 'upload/goods/2019-02/5c70b0faef269.jpg', '44993', '0', '2019-02-23 10:33:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('462', '1', '0', 'upload/goods/2019-02/5c70b0fd3defb.jpg', '49665', '0', '2019-02-23 10:33:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('463', '0', '76', 'upload/goods/2019-02/5c70b3bd08499.jpg', '43170', '1', '2019-02-23 10:45:17', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('464', '0', '76', 'upload/goods/2019-02/5c70b3c372559.jpg', '33349', '1', '2019-02-23 10:45:23', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('465', '0', '76', 'upload/goods/2019-02/5c70b3c3b01af.jpg', '26334', '1', '2019-02-23 10:45:23', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('466', '0', '76', 'upload/goods/2019-02/5c70b3c3e8bfd.jpg', '18177', '1', '2019-02-23 10:45:23', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('467', '0', '76', 'upload/image/2019-02/5c70b3e61f90f.jpg', '198443', '1', '2019-02-23 10:45:58', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('468', '0', '76', 'upload/image/2019-02/5c70b3e64faa3.jpg', '849804', '1', '2019-02-23 10:45:58', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('469', '0', '76', 'upload/image/2019-02/5c70b3e682eff.jpg', '51361', '1', '2019-02-23 10:45:58', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('470', '1', '0', 'upload/goods/2019-02/5c70b3f37c485.jpg', '43170', '0', '2019-02-23 10:46:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('471', '1', '0', 'upload/goods/2019-02/5c70b3f90c8b2.jpg', '49620', '0', '2019-02-23 10:46:17', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('472', '0', '77', 'upload/goods/2019-02/5c70b4e9ee51e.jpg', '78691', '1', '2019-02-23 10:50:17', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('473', '0', '77', 'upload/goods/2019-02/5c70b54b857b3.jpg', '17081', '1', '2019-02-23 10:51:55', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('474', '0', '77', 'upload/goods/2019-02/5c70b54bc5349.jpg', '66761', '1', '2019-02-23 10:51:55', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('475', '0', '77', 'upload/goods/2019-02/5c70b54c0ed60.jpg', '48545', '1', '2019-02-23 10:51:56', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('476', '0', '77', 'upload/image/2019-02/5c70b578ea750.jpg', '54599', '1', '2019-02-23 10:52:40', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('477', '0', '77', 'upload/image/2019-02/5c70b579135ef.jpg', '330746', '1', '2019-02-23 10:52:41', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('478', '0', '77', 'upload/image/2019-02/5c70b57938ba0.jpg', '123240', '1', '2019-02-23 10:52:41', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('479', '1', '0', 'upload/goods/2019-02/5c70b592327bc.jpg', '78691', '0', '2019-02-23 10:53:06', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('480', '1', '0', 'upload/goods/2019-02/5c70b5ca3d082.jpg', '65952', '0', '2019-02-23 10:54:02', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('481', '1', '0', 'upload/goods/2019-02/5c70b5cd1258b.jpg', '84219', '0', '2019-02-23 10:54:05', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('482', '0', '78', 'upload/goods/2019-02/5c70b6730392e.jpg', '42611', '1', '2019-02-23 10:56:51', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('483', '0', '78', 'upload/goods/2019-02/5c70b677e4fc0.jpg', '21497', '1', '2019-02-23 10:56:55', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('484', '0', '78', 'upload/goods/2019-02/5c70b67828c15.jpg', '17868', '1', '2019-02-23 10:56:56', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('485', '0', '78', 'upload/goods/2019-02/5c70b6785ef52.jpg', '31890', '1', '2019-02-23 10:56:56', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('486', '0', '78', 'upload/image/2019-02/5c70b6975e69f.jpg', '125114', '1', '2019-02-23 10:57:27', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('487', '0', '78', 'upload/image/2019-02/5c70b6980261a.jpg', '96131', '1', '2019-02-23 10:57:28', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('488', '1', '0', 'upload/goods/2019-02/5c70b6be3ad2d.jpg', '42611', '0', '2019-02-23 10:58:06', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('489', '1', '0', 'upload/goods/2019-02/5c70b6d269fb0.jpg', '39866', '0', '2019-02-23 10:58:26', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('490', '1', '0', 'upload/goods/2019-02/5c70b6ee52334.jpg', '62857', '0', '2019-02-23 10:58:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('491', '0', '79', 'upload/goods/2019-02/5c70b7f9216f8.jpg', '51521', '1', '2019-02-23 11:03:21', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('492', '0', '79', 'upload/goods/2019-02/5c70b7fe9fbbc.jpg', '21618', '1', '2019-02-23 11:03:26', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('493', '0', '79', 'upload/goods/2019-02/5c70b7fee12ab.jpg', '36171', '1', '2019-02-23 11:03:26', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('494', '0', '79', 'upload/goods/2019-02/5c70b7ff29939.jpg', '38968', '1', '2019-02-23 11:03:27', 'goods', '3', '1');
INSERT INTO `ox_images` VALUES ('495', '0', '79', 'upload/image/2019-02/5c70b81d6320b.jpg', '290517', '1', '2019-02-23 11:03:57', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('496', '0', '79', 'upload/image/2019-02/5c70b81de92b2.jpg', '733542', '1', '2019-02-23 11:03:57', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('497', '0', '79', 'upload/image/2019-02/5c70b81e6f97f.jpg', '350306', '1', '2019-02-23 11:03:58', 'image', '3', '1');
INSERT INTO `ox_images` VALUES ('498', '1', '0', 'upload/goods/2019-02/5c70b843e9b30.jpg', '55250', '0', '2019-02-23 11:04:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('499', '0', '80', 'upload/goods/2019-02/5c70b9839a2dc.jpg', '39035', '1', '2019-02-23 11:09:55', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('500', '0', '80', 'upload/goods/2019-02/5c70b989097a9.jpg', '34738', '1', '2019-02-23 11:10:01', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('501', '0', '80', 'upload/goods/2019-02/5c70b9894cdd9.jpg', '30482', '1', '2019-02-23 11:10:01', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('502', '0', '80', 'upload/goods/2019-02/5c70b98985056.jpg', '15249', '1', '2019-02-23 11:10:01', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('503', '0', '80', 'upload/image/2019-02/5c70b99fbbc65.jpg', '50102', '1', '2019-02-23 11:10:23', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('504', '0', '80', 'upload/image/2019-02/5c70b99fe4caf.jpg', '61849', '1', '2019-02-23 11:10:23', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('505', '0', '80', 'upload/image/2019-02/5c70b9a06da8c.jpg', '84390', '1', '2019-02-23 11:10:24', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('506', '0', '80', 'upload/image/2019-02/5c70b9a0e9339.jpg', '72459', '1', '2019-02-23 11:10:24', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('507', '1', '0', 'upload/goods/2019-02/5c70b9ae4f946.jpg', '34738', '0', '2019-02-23 11:10:38', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('508', '1', '0', 'upload/goods/2019-02/5c70b9c2d8d46.jpg', '39989', '0', '2019-02-23 11:10:58', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('509', '1', '0', 'upload/goods/2019-02/5c70b9c4e4553.jpg', '39035', '0', '2019-02-23 11:11:00', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('510', '1', '0', 'upload/goods/2019-02/5c70b9e796efb.jpg', '41761', '0', '2019-02-23 11:11:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('511', '0', '81', 'upload/goods/2019-02/5c70bac7e38e1.jpg', '60864', '1', '2019-02-23 11:15:19', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('512', '0', '81', 'upload/goods/2019-02/5c70bacf79759.jpg', '60864', '1', '2019-02-23 11:15:27', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('513', '0', '81', 'upload/goods/2019-02/5c70bacfbb231.jpg', '18191', '1', '2019-02-23 11:15:27', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('514', '0', '81', 'upload/goods/2019-02/5c70bacff250e.jpg', '52406', '1', '2019-02-23 11:15:27', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('515', '0', '81', 'upload/image/2019-02/5c70bae11a3f1.jpg', '50102', '1', '2019-02-23 11:15:45', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('516', '0', '81', 'upload/image/2019-02/5c70bae19aea7.jpg', '61849', '1', '2019-02-23 11:15:45', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('517', '0', '81', 'upload/image/2019-02/5c70bae22483c.jpg', '83765', '1', '2019-02-23 11:15:46', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('518', '0', '81', 'upload/image/2019-02/5c70bae29ce21.jpg', '58531', '1', '2019-02-23 11:15:46', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('519', '1', '0', 'upload/goods/2019-02/5c70bafd8b315.jpg', '60864', '0', '2019-02-23 11:16:13', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('520', '1', '0', 'upload/goods/2019-02/5c70bb00740a3.jpg', '67634', '0', '2019-02-23 11:16:16', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('521', '1', '0', 'upload/goods/2019-02/5c70bb023ab10.jpg', '67923', '0', '2019-02-23 11:16:18', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('522', '0', '82', 'upload/goods/2019-02/5c70bbce1a234.jpg', '71227', '1', '2019-02-23 11:19:42', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('523', '0', '82', 'upload/goods/2019-02/5c70bbd412e5a.jpg', '58606', '1', '2019-02-23 11:19:48', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('524', '0', '82', 'upload/goods/2019-02/5c70bbd451a50.jpg', '16777', '1', '2019-02-23 11:19:48', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('525', '0', '82', 'upload/goods/2019-02/5c70bbd485e4d.jpg', '60480', '1', '2019-02-23 11:19:48', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('526', '0', '82', 'upload/image/2019-02/5c70bc17e689c.jpg', '550196', '1', '2019-02-23 11:20:55', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('527', '0', '82', 'upload/image/2019-02/5c70bc1821c37.jpg', '226140', '1', '2019-02-23 11:20:56', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('528', '0', '82', 'upload/image/2019-02/5c70bc183dd75.jpg', '176716', '1', '2019-02-23 11:20:56', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('529', '0', '82', 'upload/image/2019-02/5c70bc185f4a5.jpg', '369479', '1', '2019-02-23 11:20:56', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('530', '1', '0', 'upload/goods/2019-02/5c70bc2f096cc.jpg', '71227', '0', '2019-02-23 11:21:19', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('531', '1', '0', 'upload/goods/2019-02/5c70bc479ef04.jpg', '72951', '0', '2019-02-23 11:21:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('532', '0', '83', 'upload/goods/2019-02/5c70bce555b38.jpg', '40079', '1', '2019-02-23 11:24:21', 'goods', '5', '1');
INSERT INTO `ox_images` VALUES ('533', '0', '83', 'upload/image/2019-02/5c70bd098fd31.jpg', '123312', '1', '2019-02-23 11:24:57', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('534', '0', '83', 'upload/image/2019-02/5c70bd09ace10.jpg', '112953', '1', '2019-02-23 11:24:57', 'image', '5', '1');
INSERT INTO `ox_images` VALUES ('535', '0', '84', 'upload/goods/2019-02/5c70be4e021d5.jpg', '70768', '1', '2019-02-23 11:30:22', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('536', '0', '84', 'upload/goods/2019-02/5c70be54e2550.jpg', '63064', '1', '2019-02-23 11:30:28', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('537', '0', '84', 'upload/goods/2019-02/5c70be55426cc.jpg', '113519', '1', '2019-02-23 11:30:29', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('538', '0', '84', 'upload/goods/2019-02/5c70be55a58d3.jpg', '84336', '1', '2019-02-23 11:30:29', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('539', '0', '84', 'upload/image/2019-02/5c70be868778f.jpg', '363381', '1', '2019-02-23 11:31:18', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('540', '0', '84', 'upload/image/2019-02/5c70be8709422.png', '450832', '1', '2019-02-23 11:31:19', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('541', '0', '84', 'upload/image/2019-02/5c70be8786828.jpg', '338056', '1', '2019-02-23 11:31:19', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('542', '0', '85', 'upload/goods/2019-02/5c70bf06eb2a7.jpg', '68974', '1', '2019-02-23 11:33:26', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('543', '0', '85', 'upload/goods/2019-02/5c70bf0c132c4.jpg', '58656', '1', '2019-02-23 11:33:32', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('544', '0', '85', 'upload/goods/2019-02/5c70bf0c54d9b.jpg', '58643', '1', '2019-02-23 11:33:32', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('545', '0', '85', 'upload/image/2019-02/5c70bf4a167af.jpg', '342493', '1', '2019-02-23 11:34:34', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('546', '0', '85', 'upload/image/2019-02/5c70bf4aa31d0.jpg', '124869', '1', '2019-02-23 11:34:34', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('547', '0', '85', 'upload/image/2019-02/5c70bf4b28ce4.jpg', '224174', '1', '2019-02-23 11:34:35', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('548', '0', '85', 'upload/image/2019-02/5c70bf4bac293.jpg', '247431', '1', '2019-02-23 11:34:35', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('549', '0', '85', 'upload/image/2019-02/5c70bf4c37399.jpg', '300917', '1', '2019-02-23 11:34:36', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('550', '0', '86', 'upload/goods/2019-02/5c70bf9fbfe3c.jpg', '54341', '1', '2019-02-23 11:35:59', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('551', '0', '86', 'upload/goods/2019-02/5c70bfa3b10d6.jpg', '61373', '1', '2019-02-23 11:36:03', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('552', '0', '86', 'upload/goods/2019-02/5c70bfa4004c5.jpg', '99511', '1', '2019-02-23 11:36:04', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('553', '0', '86', 'upload/goods/2019-02/5c70bfa444a95.jpg', '88942', '1', '2019-02-23 11:36:04', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('554', '0', '86', 'upload/image/2019-02/5c70bfd6c25df.jpg', '109828', '1', '2019-02-23 11:36:54', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('555', '0', '86', 'upload/image/2019-02/5c70bfd728134.jpg', '204378', '1', '2019-02-23 11:36:55', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('556', '0', '87', 'upload/goods/2019-02/5c70c02c69f69.jpg', '94126', '1', '2019-02-23 11:38:20', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('557', '0', '87', 'upload/goods/2019-02/5c70c03220117.jpg', '74877', '1', '2019-02-23 11:38:26', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('558', '0', '87', 'upload/goods/2019-02/5c70c03263f17.jpg', '140780', '1', '2019-02-23 11:38:26', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('559', '0', '87', 'upload/image/2019-02/5c70c06059993.jpg', '121956', '1', '2019-02-23 11:39:12', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('560', '0', '87', 'upload/image/2019-02/5c70c060c0a1b.jpg', '162594', '1', '2019-02-23 11:39:12', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('561', '0', '87', 'upload/image/2019-02/5c70c06148088.jpg', '180149', '1', '2019-02-23 11:39:13', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('562', '0', '88', 'upload/goods/2019-02/5c70c0c84b2e4.jpg', '58217', '1', '2019-02-23 11:40:56', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('563', '0', '88', 'upload/goods/2019-02/5c70c0ccbef74.jpg', '50373', '1', '2019-02-23 11:41:00', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('564', '0', '88', 'upload/goods/2019-02/5c70c0cd08d73.jpg', '56271', '1', '2019-02-23 11:41:01', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('565', '0', '88', 'upload/image/2019-02/5c70c0ebf1f05.jpg', '174710', '1', '2019-02-23 11:41:31', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('566', '0', '88', 'upload/image/2019-02/5c70c0ec94af9.jpg', '144725', '1', '2019-02-23 11:41:32', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('567', '1', '0', 'upload/image/2019-02/5c70c0ed22adf.jpg', '121804', '0', '2019-02-23 11:41:33', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('568', '0', '89', 'upload/goods/2019-02/5c70c1478f9bc.jpg', '94446', '1', '2019-02-23 11:43:03', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('569', '0', '89', 'upload/goods/2019-02/5c70c14c9d1b6.jpg', '110766', '1', '2019-02-23 11:43:08', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('570', '0', '89', 'upload/goods/2019-02/5c70c14d00dca.jpg', '52290', '1', '2019-02-23 11:43:09', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('571', '0', '89', 'upload/goods/2019-02/5c70c14d47aab.jpg', '73957', '1', '2019-02-23 11:43:09', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('572', '0', '89', 'upload/image/2019-02/5c70c1819cded.jpg', '388108', '1', '2019-02-23 11:44:01', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('573', '0', '89', 'upload/image/2019-02/5c70c181c42de.jpg', '340667', '1', '2019-02-23 11:44:01', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('574', '0', '90', 'upload/goods/2019-02/5c70c1eca012e.jpg', '90582', '1', '2019-02-23 11:45:48', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('575', '0', '90', 'upload/image/2019-02/5c70c206d6652.jpg', '379389', '1', '2019-02-23 11:46:14', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('576', '0', '90', 'upload/image/2019-02/5c70c2073b9d7.jpg', '391101', '1', '2019-02-23 11:46:15', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('577', '0', '90', 'upload/image/2019-02/5c70c207b572b.jpg', '387450', '1', '2019-02-23 11:46:15', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('578', '0', '90', 'upload/goods/2019-02/5c70c258d9014.jpg', '111141', '1', '2019-02-23 11:47:36', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('579', '0', '90', 'upload/goods/2019-02/5c70c2592ed7e.jpg', '157106', '1', '2019-02-23 11:47:37', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('580', '0', '90', 'upload/goods/2019-02/5c70c2597eae8.jpg', '51242', '1', '2019-02-23 11:47:37', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('581', '0', '91', 'upload/goods/2019-02/5c70c2ca22bfa.jpg', '94722', '1', '2019-02-23 11:49:30', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('582', '0', '91', 'upload/goods/2019-02/5c70c2d20a336.jpg', '99772', '1', '2019-02-23 11:49:38', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('583', '0', '91', 'upload/goods/2019-02/5c70c2d252f57.jpg', '99824', '1', '2019-02-23 11:49:38', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('584', '0', '91', 'upload/goods/2019-02/5c70c2d298c97.jpg', '75897', '1', '2019-02-23 11:49:38', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('585', '0', '91', 'upload/image/2019-02/5c70c2f6a5bdd.jpg', '368061', '1', '2019-02-23 11:50:14', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('586', '0', '91', 'upload/image/2019-02/5c70c310a88bd.jpg', '317905', '1', '2019-02-23 11:50:40', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('587', '0', '91', 'upload/image/2019-02/5c70c32f2dae6.jpg', '257118', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('588', '0', '91', 'upload/image/2019-02/5c70c32f4de8d.jpg', '251220', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('589', '0', '91', 'upload/image/2019-02/5c70c32f6ea05.jpg', '289624', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('590', '0', '91', 'upload/image/2019-02/5c70c32f9051d.jpg', '197828', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('591', '0', '91', 'upload/image/2019-02/5c70c32faddcc.jpg', '109257', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('592', '0', '91', 'upload/image/2019-02/5c70c32fcfccb.jpg', '330443', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('593', '0', '91', 'upload/image/2019-02/5c70c32ff17e3.jpg', '342226', '1', '2019-02-23 11:51:11', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('594', '0', '92', 'upload/goods/2019-02/5c70c44994807.jpg', '61883', '1', '2019-02-23 11:55:53', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('595', '0', '92', 'upload/goods/2019-02/5c70c44d70e94.jpg', '53444', '1', '2019-02-23 11:55:57', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('596', '0', '92', 'upload/goods/2019-02/5c70c44dadb4a.jpg', '61883', '1', '2019-02-23 11:55:57', 'goods', '11', '1');
INSERT INTO `ox_images` VALUES ('597', '0', '92', 'upload/image/2019-02/5c70c4804e388.jpg', '217572', '1', '2019-02-23 11:56:48', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('598', '0', '92', 'upload/image/2019-02/5c70c480846c5.jpg', '267623', '1', '2019-02-23 11:56:48', 'image', '11', '1');
INSERT INTO `ox_images` VALUES ('599', '0', '93', 'upload/goods/2019-02/5c70c50e739b3.jpg', '51187', '1', '2019-02-23 11:59:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('600', '0', '93', 'upload/goods/2019-02/5c70c5229073a.jpg', '81007', '1', '2019-02-23 11:59:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('601', '0', '93', 'upload/goods/2019-02/5c70c522d5caa.jpg', '14351', '1', '2019-02-23 11:59:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('602', '0', '93', 'upload/image/2019-02/5c70c59221b46.jpg', '196331', '1', '2019-02-23 12:01:22', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('603', '0', '93', 'upload/image/2019-02/5c70c5928a726.jpg', '177942', '1', '2019-02-23 12:01:22', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('604', '1', '0', 'upload/goods/2019-02/5c70c5a454fbf.jpg', '51187', '0', '2019-02-23 12:01:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('605', '1', '0', 'upload/goods/2019-02/5c70c5bbb5422.jpg', '51683', '0', '2019-02-23 12:02:03', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('606', '0', '94', 'upload/goods/2019-02/5c70c67722b48.jpg', '24277', '1', '2019-02-23 12:05:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('607', '0', '94', 'upload/image/2019-02/5c70c6a369645.jpg', '299667', '1', '2019-02-23 12:05:55', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('608', '0', '94', 'upload/image/2019-02/5c70c6a39caa1.jpg', '139491', '1', '2019-02-23 12:05:55', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('609', '0', '94', 'upload/image/2019-02/5c70c6a3cd01d.jpg', '236463', '1', '2019-02-23 12:05:55', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('610', '0', '94', 'upload/goods/2019-02/5c70c6b257c73.jpg', '27881', '1', '2019-02-23 12:06:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('611', '0', '94', 'upload/goods/2019-02/5c70c6b2931b9.jpg', '12856', '1', '2019-02-23 12:06:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('612', '1', '0', 'upload/goods/2019-02/5c70c6bd4bb96.jpg', '24277', '0', '2019-02-23 12:06:21', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('613', '1', '0', 'upload/goods/2019-02/5c70c6c6c7a2d.jpg', '24943', '0', '2019-02-23 12:06:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('614', '0', '95', 'upload/goods/2019-02/5c70c74fde4d7.jpg', '44243', '1', '2019-02-23 12:08:47', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('615', '0', '95', 'upload/goods/2019-02/5c70c75582958.jpg', '16200', '1', '2019-02-23 12:08:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('616', '0', '95', 'upload/goods/2019-02/5c70c755be286.jpg', '49921', '1', '2019-02-23 12:08:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('617', '0', '95', 'upload/goods/2019-02/5c70c756051a4.jpg', '33683', '1', '2019-02-23 12:08:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('618', '0', '95', 'upload/image/2019-02/5c70c77e85992.jpg', '548054', '1', '2019-02-23 12:09:34', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('619', '0', '95', 'upload/image/2019-02/5c70c77f279cd.jpg', '456585', '1', '2019-02-23 12:09:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('620', '1', '0', 'upload/goods/2019-02/5c70c794afa7e.jpg', '44243', '0', '2019-02-23 12:09:56', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('621', '1', '0', 'upload/goods/2019-02/5c70c79ce4fe4.jpg', '40664', '0', '2019-02-23 12:10:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('622', '0', '96', 'upload/goods/2019-02/5c70c82579097.jpg', '49761', '1', '2019-02-23 12:12:21', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('623', '0', '96', 'upload/goods/2019-02/5c70c82d0c02f.jpg', '42861', '1', '2019-02-23 12:12:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('624', '0', '96', 'upload/goods/2019-02/5c70c82d4c396.jpg', '17592', '1', '2019-02-23 12:12:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('625', '0', '96', 'upload/goods/2019-02/5c70c82d80b7a.jpg', '33541', '1', '2019-02-23 12:12:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('626', '0', '96', 'upload/image/2019-02/5c70c878b8749.jpg', '841381', '1', '2019-02-23 12:13:44', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('627', '1', '0', 'upload/goods/2019-02/5c70c89a2d461.jpg', '49761', '0', '2019-02-23 12:14:18', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('628', '1', '0', 'upload/goods/2019-02/5c70c89bb8363.jpg', '45522', '0', '2019-02-23 12:14:19', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('629', '0', '97', 'upload/goods/2019-02/5c70c939e7963.jpg', '55900', '1', '2019-02-23 12:16:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('630', '0', '97', 'upload/goods/2019-02/5c70c94092f68.jpg', '44771', '1', '2019-02-23 12:17:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('631', '0', '97', 'upload/goods/2019-02/5c70c940cf836.jpg', '41885', '1', '2019-02-23 12:17:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('632', '0', '97', 'upload/image/2019-02/5c70c984f0b0f.jpg', '328461', '1', '2019-02-23 12:18:12', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('633', '0', '97', 'upload/image/2019-02/5c70c9854aae1.jpg', '341537', '1', '2019-02-23 12:18:13', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('634', '0', '97', 'upload/image/2019-02/5c70c985c9e27.jpg', '387311', '1', '2019-02-23 12:18:13', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('635', '0', '97', 'upload/image/2019-02/5c70c98654f2d.jpg', '442684', '1', '2019-02-23 12:18:14', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('636', '1', '0', 'upload/goods/2019-02/5c70c9c4005c3.jpg', '55900', '0', '2019-02-23 12:19:16', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('637', '1', '0', 'upload/goods/2019-02/5c70c9cb9237e.jpg', '54286', '0', '2019-02-23 12:19:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('638', '1', '0', 'upload/goods/2019-02/5c70c9d1af1cc.jpg', '51217', '0', '2019-02-23 12:19:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('639', '0', '98', 'upload/image/2019-02/5c70cac57f3f5.jpg', '109894', '1', '2019-02-23 12:23:33', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('640', '0', '98', 'upload/image/2019-02/5c70cac61125c.gif', '705603', '1', '2019-02-23 12:23:34', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('641', '0', '98', 'upload/goods/2019-02/5c70cb125b360.jpg', '14283', '1', '2019-02-23 12:24:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('642', '0', '98', 'upload/goods/2019-02/5c70cb1295136.jpg', '32756', '1', '2019-02-23 12:24:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('643', '1', '0', 'upload/goods/2019-02/5c70cb194c6a5.jpg', '45155', '0', '2019-02-23 12:24:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('644', '1', '0', 'upload/goods/2019-02/5c70cb1b88bfe.jpg', '43610', '0', '2019-02-23 12:24:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('645', '0', '98', 'upload/goods/2019-02/5c70cb554764c.jpg', '43610', '1', '2019-02-23 12:25:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('646', '0', '99', 'upload/goods/2019-02/5c70cba74c71f.jpg', '63663', '1', '2019-02-23 12:27:19', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('647', '0', '99', 'upload/goods/2019-02/5c70cbab66dea.jpg', '25355', '1', '2019-02-23 12:27:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('648', '0', '99', 'upload/goods/2019-02/5c70cbaba80f1.jpg', '49002', '1', '2019-02-23 12:27:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('649', '0', '99', 'upload/image/2019-02/5c70cbdb4ee16.jpg', '723172', '1', '2019-02-23 12:28:11', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('650', '1', '0', 'upload/goods/2019-02/5c70cbea825cc.jpg', '63663', '0', '2019-02-23 12:28:26', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('651', '1', '0', 'upload/goods/2019-02/5c70cbfded52c.jpg', '63446', '0', '2019-02-23 12:28:45', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('652', '0', '100', 'upload/goods/2019-02/5c70cc9bb859d.jpg', '50516', '1', '2019-02-23 12:31:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('653', '0', '100', 'upload/goods/2019-02/5c70cca0d3089.jpg', '36784', '1', '2019-02-23 12:31:28', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('654', '0', '100', 'upload/goods/2019-02/5c70cca11c2cf.jpg', '50980', '1', '2019-02-23 12:31:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('655', '1', '0', 'upload/goods/2019-02/5c70ccdd93eab.jpg', '47743', '0', '2019-02-23 12:32:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('656', '1', '0', 'upload/goods/2019-02/5c70ccdf96246.jpg', '50516', '0', '2019-02-23 12:32:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('657', '0', '100', 'upload/image/2019-02/5c70cd25de69b.jpg', '62545', '1', '2019-02-23 12:33:41', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('658', '0', '100', 'upload/image/2019-02/5c70cd265209b.jpg', '76025', '1', '2019-02-23 12:33:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('659', '0', '100', 'upload/image/2019-02/5c70cd26cd948.jpg', '75879', '1', '2019-02-23 12:33:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('660', '0', '101', 'upload/goods/2019-02/5c70cd9ed1b28.jpg', '90166', '1', '2019-02-23 12:35:42', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('661', '0', '101', 'upload/image/2019-02/5c70cdb703fae.jpg', '283235', '1', '2019-02-23 12:36:07', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('662', '0', '101', 'upload/image/2019-02/5c70cdb79a611.jpg', '273209', '1', '2019-02-23 12:36:07', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('663', '0', '101', 'upload/image/2019-02/5c70cdb823fa7.jpg', '199738', '1', '2019-02-23 12:36:08', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('664', '0', '101', 'upload/goods/2019-02/5c70cdce66f09.jpg', '55178', '1', '2019-02-23 12:36:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('665', '0', '101', 'upload/goods/2019-02/5c70cdcea7658.jpg', '71113', '1', '2019-02-23 12:36:30', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('666', '1', '0', 'upload/goods/2019-02/5c70cdebdd457.jpg', '90166', '0', '2019-02-23 12:36:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('667', '1', '0', 'upload/goods/2019-02/5c70cdeeee677.jpg', '51455', '0', '2019-02-23 12:37:02', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('668', '1', '0', 'upload/goods/2019-02/5c70cdf1401ea.jpg', '44698', '0', '2019-02-23 12:37:05', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('669', '1', '0', 'upload/goods/2019-02/5c70ce1512f72.jpg', '36755', '0', '2019-02-23 12:37:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('670', '1', '0', 'upload/goods/2019-02/5c70ce23f212f.jpg', '66910', '0', '2019-02-23 12:37:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('671', '1', '0', 'upload/goods/2019-02/5c70ce8d99b49.jpg', '51455', '0', '2019-02-23 12:39:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('672', '1', '0', 'upload/goods/2019-02/5c70ce8ff0a70.jpg', '44698', '0', '2019-02-23 12:39:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('673', '0', '102', 'upload/goods/2019-02/5c70cee3b1db6.jpg', '23708', '1', '2019-02-23 12:41:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('674', '0', '102', 'upload/goods/2019-02/5c70cee3ed2fc.jpg', '8537', '1', '2019-02-23 12:41:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('675', '0', '102', 'upload/goods/2019-02/5c70cee42ada7.jpg', '32002', '1', '2019-02-23 12:41:08', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('676', '0', '102', 'upload/image/2019-02/5c70cf1213531.jpg', '261624', '1', '2019-02-23 12:41:54', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('677', '0', '102', 'upload/image/2019-02/5c70cf123ec8b.jpg', '237602', '1', '2019-02-23 12:41:54', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('678', '0', '102', 'upload/image/2019-02/5c70cf125a9e2.jpg', '151223', '1', '2019-02-23 12:41:54', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('679', '0', '102', 'upload/goods/2019-02/5c70cf18228bc.jpg', '51455', '1', '2019-02-23 12:42:00', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('680', '0', '103', 'upload/goods/2019-02/5c70d821ad4c4.jpg', '45905', '1', '2019-02-23 13:20:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('681', '0', '103', 'upload/goods/2019-02/5c70d83384c68.jpg', '85598', '1', '2019-02-23 13:20:51', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('682', '0', '103', 'upload/goods/2019-02/5c70d833cccd1.jpg', '54734', '1', '2019-02-23 13:20:51', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('683', '0', '103', 'upload/goods/2019-02/5c70d834143bf.jpg', '37850', '1', '2019-02-23 13:20:52', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('684', '0', '103', 'upload/image/2019-02/5c70d84723261.jpg', '200802', '1', '2019-02-23 13:21:11', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('685', '0', '103', 'upload/image/2019-02/5c70d84740ef8.jpg', '81965', '1', '2019-02-23 13:21:11', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('686', '0', '103', 'upload/image/2019-02/5c70d847c3507.jpg', '135216', '1', '2019-02-23 13:21:11', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('687', '0', '103', 'upload/image/2019-02/5c70d8484c2e4.jpg', '132977', '1', '2019-02-23 13:21:12', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('688', '0', '104', 'upload/goods/2019-02/5c70d8ddbc601.png', '321660', '1', '2019-02-23 13:23:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('689', '0', '104', 'upload/goods/2019-02/5c70d8e52cae1.jpg', '33701', '1', '2019-02-23 13:23:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('690', '0', '104', 'upload/goods/2019-02/5c70d8e56ce48.jpg', '69241', '1', '2019-02-23 13:23:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('691', '0', '104', 'upload/goods/2019-02/5c70d8e5b0478.jpg', '62204', '1', '2019-02-23 13:23:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('692', '0', '104', 'upload/goods/2019-02/5c70d8e5ef06e.jpg', '44748', '1', '2019-02-23 13:23:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('693', '0', '104', 'upload/image/2019-02/5c70d940e9762.jpg', '405790', '1', '2019-02-23 13:25:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('694', '0', '104', 'upload/image/2019-02/5c70d94118b92.jpg', '409521', '1', '2019-02-23 13:25:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('695', '0', '104', 'upload/image/2019-02/5c70d9419443f.jpg', '406680', '1', '2019-02-23 13:25:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('696', '0', '105', 'upload/goods/2019-02/5c70d9c352733.jpg', '51053', '1', '2019-02-23 13:27:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('697', '0', '105', 'upload/goods/2019-02/5c70d9c95d085.jpg', '33610', '1', '2019-02-23 13:27:37', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('698', '0', '105', 'upload/goods/2019-02/5c70d9c9a54d6.jpg', '32802', '1', '2019-02-23 13:27:37', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('699', '0', '105', 'upload/image/2019-02/5c70da1097668.jpg', '180099', '1', '2019-02-23 13:28:48', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('700', '0', '105', 'upload/image/2019-02/5c70da1118f13.jpg', '132010', '1', '2019-02-23 13:28:49', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('701', '0', '105', 'upload/image/2019-02/5c70da1196318.jpg', '272967', '1', '2019-02-23 13:28:49', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('702', '0', '106', 'upload/goods/2019-02/5c70da7502a7e.jpg', '41706', '1', '2019-02-23 13:30:29', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('703', '0', '106', 'upload/goods/2019-02/5c70da79943a4.jpg', '35097', '1', '2019-02-23 13:30:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('704', '0', '106', 'upload/goods/2019-02/5c70da79e1617.jpg', '27453', '1', '2019-02-23 13:30:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('705', '0', '106', 'upload/goods/2019-02/5c70da7a23ee3.jpg', '43865', '1', '2019-02-23 13:30:34', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('706', '0', '106', 'upload/image/2019-02/5c70daa81eb69.jpg', '87521', '1', '2019-02-23 13:31:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('707', '0', '106', 'upload/image/2019-02/5c70daa89ee4f.jpg', '88421', '1', '2019-02-23 13:31:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('708', '0', '106', 'upload/image/2019-02/5c70daa929f55.jpg', '165487', '1', '2019-02-23 13:31:21', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('709', '0', '107', 'upload/goods/2019-02/5c70db5f17422.jpg', '42189', '1', '2019-02-23 13:34:23', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('710', '0', '107', 'upload/goods/2019-02/5c70db6b0d6a6.jpg', '15432', '1', '2019-02-23 13:34:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('711', '0', '107', 'upload/goods/2019-02/5c70db6b49f75.jpg', '24357', '1', '2019-02-23 13:34:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('712', '0', '107', 'upload/goods/2019-02/5c70db6b802b1.jpg', '21194', '1', '2019-02-23 13:34:35', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('713', '0', '107', 'upload/image/2019-02/5c70dbd302e78.jpg', '114027', '1', '2019-02-23 13:36:19', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('714', '0', '107', 'upload/image/2019-02/5c70dbd36413f.jpg', '62532', '1', '2019-02-23 13:36:19', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('715', '0', '107', 'upload/image/2019-02/5c70dbd3e309d.jpg', '55803', '1', '2019-02-23 13:36:19', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('716', '0', '107', 'upload/image/2019-02/5c70dbd46c64a.jpg', '80326', '1', '2019-02-23 13:36:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('717', '0', '108', 'upload/goods/2019-02/5c70dc6b2c948.jpg', '38445', '1', '2019-02-23 13:38:51', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('718', '0', '108', 'upload/image/2019-02/5c70dc9ddd505.jpg', '229010', '1', '2019-02-23 13:39:41', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('719', '0', '108', 'upload/image/2019-02/5c70dc9e79397.jpg', '368789', '1', '2019-02-23 13:39:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('720', '0', '108', 'upload/goods/2019-02/5c70dcb772bcc.jpg', '28276', '1', '2019-02-23 13:40:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('721', '0', '108', 'upload/goods/2019-02/5c70dcb7b3aeb.jpg', '40184', '1', '2019-02-23 13:40:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('722', '0', '108', 'upload/goods/2019-02/5c70dcb7ef801.jpg', '31057', '1', '2019-02-23 13:40:07', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('723', '0', '109', 'upload/goods/2019-02/5c70dd1048084.jpg', '33522', '1', '2019-02-23 13:41:36', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('724', '0', '109', 'upload/goods/2019-02/5c70dd3e2b9ec.jpg', '46022', '1', '2019-02-23 13:42:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('725', '0', '109', 'upload/goods/2019-02/5c70dd3e71efd.jpg', '62498', '1', '2019-02-23 13:42:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('726', '0', '109', 'upload/goods/2019-02/5c70dd3ebb6d6.jpg', '24291', '1', '2019-02-23 13:42:22', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('727', '0', '109', 'upload/image/2019-02/5c70dd7048657.jpg', '124329', '1', '2019-02-23 13:43:12', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('728', '0', '109', 'upload/image/2019-02/5c70dd70c2f64.jpg', '89647', '1', '2019-02-23 13:43:12', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('729', '0', '109', 'upload/image/2019-02/5c70dd714c129.jpg', '395580', '1', '2019-02-23 13:43:13', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('730', '0', '109', 'upload/image/2019-02/5c70dd71ca0e7.jpg', '90995', '1', '2019-02-23 13:43:13', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('731', '0', '110', 'upload/goods/2019-02/5c70ddd9954e7.jpg', '69155', '1', '2019-02-23 13:44:57', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('732', '0', '110', 'upload/goods/2019-02/5c70dddddf18d.jpg', '56465', '1', '2019-02-23 13:45:01', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('733', '0', '110', 'upload/goods/2019-02/5c70ddde3df80.jpg', '64526', '1', '2019-02-23 13:45:02', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('734', '0', '110', 'upload/goods/2019-02/5c70ddde8dceb.jpg', '57347', '1', '2019-02-23 13:45:02', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('735', '0', '110', 'upload/image/2019-02/5c70de34c14de.jpg', '299737', '1', '2019-02-23 13:46:28', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('736', '0', '110', 'upload/image/2019-02/5c70de353c7f8.jpg', '150138', '1', '2019-02-23 13:46:29', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('737', '0', '110', 'upload/image/2019-02/5c70de35bd696.jpg', '334394', '1', '2019-02-23 13:46:29', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('738', '0', '111', 'upload/goods/2019-02/5c70dec2f3243.jpg', '50442', '1', '2019-02-23 13:48:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('739', '0', '111', 'upload/goods/2019-02/5c70decad920f.jpg', '39590', '1', '2019-02-23 13:48:58', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('740', '0', '111', 'upload/goods/2019-02/5c70decb26e8e.jpg', '47991', '1', '2019-02-23 13:48:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('741', '0', '111', 'upload/goods/2019-02/5c70decb61c04.jpg', '34756', '1', '2019-02-23 13:48:59', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('742', '0', '111', 'upload/image/2019-02/5c70def39ab59.jpg', '186712', '1', '2019-02-23 13:49:39', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('743', '0', '111', 'upload/image/2019-02/5c70def3e9d0c.jpg', '113541', '1', '2019-02-23 13:49:39', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('744', '0', '111', 'upload/image/2019-02/5c70def472701.jpg', '98768', '1', '2019-02-23 13:49:40', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('745', '0', '112', 'upload/goods/2019-02/5c70df758b309.jpg', '28841', '1', '2019-02-23 13:51:49', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('746', '0', '112', 'upload/goods/2019-02/5c70df7b0b17b.jpg', '32012', '1', '2019-02-23 13:51:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('747', '0', '112', 'upload/goods/2019-02/5c70df7b48601.jpg', '35471', '1', '2019-02-23 13:51:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('748', '0', '112', 'upload/goods/2019-02/5c70df7b84317.jpg', '27629', '1', '2019-02-23 13:51:55', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('749', '0', '112', 'upload/image/2019-02/5c70dfa9eb22e.jpg', '309116', '1', '2019-02-23 13:52:41', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('750', '0', '112', 'upload/image/2019-02/5c70dfaa82a6f.jpg', '297566', '1', '2019-02-23 13:52:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('751', '0', '113', 'upload/goods/2019-02/5c70e01ca013e.jpg', '56842', '1', '2019-02-23 13:54:36', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('752', '0', '113', 'upload/goods/2019-02/5c70e0239d006.jpg', '74833', '1', '2019-02-23 13:54:43', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('753', '0', '113', 'upload/goods/2019-02/5c70e02406dc4.jpg', '86326', '1', '2019-02-23 13:54:44', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('754', '0', '113', 'upload/image/2019-02/5c70e04c04bbb.jpg', '152177', '1', '2019-02-23 13:55:24', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('755', '0', '113', 'upload/image/2019-02/5c70e04c29d84.jpg', '224573', '1', '2019-02-23 13:55:24', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('756', '0', '113', 'upload/image/2019-02/5c70e04c5ca10.jpg', '86361', '1', '2019-02-23 13:55:24', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('757', '0', '114', 'upload/goods/2019-02/5c70e0be487db.jpg', '33754', '1', '2019-02-23 13:57:18', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('758', '0', '114', 'upload/goods/2019-02/5c70e0ec1520e.jpg', '80670', '1', '2019-02-23 13:58:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('759', '0', '114', 'upload/goods/2019-02/5c70e0ec5da47.jpg', '102663', '1', '2019-02-23 13:58:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('760', '0', '114', 'upload/goods/2019-02/5c70e0eca7609.jpg', '40977', '1', '2019-02-23 13:58:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('761', '0', '114', 'upload/goods/2019-02/5c70e0ece0ff6.jpg', '49937', '1', '2019-02-23 13:58:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('762', '0', '114', 'upload/image/2019-02/5c70e11abb4ec.jpg', '225779', '1', '2019-02-23 13:58:50', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('763', '0', '114', 'upload/image/2019-02/5c70e11b0df8d.jpg', '116175', '1', '2019-02-23 13:58:51', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('764', '0', '114', 'upload/image/2019-02/5c70e11b8ee2b.jpg', '221320', '1', '2019-02-23 13:58:51', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('765', '0', '114', 'upload/image/2019-02/5c70e11c1128f.jpg', '91841', '1', '2019-02-23 13:58:52', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('766', '0', '115', 'upload/goods/2019-02/5c70e1f2a8983.jpg', '60813', '1', '2019-02-23 14:02:26', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('767', '0', '115', 'upload/goods/2019-02/5c70e2007ae39.jpg', '96146', '1', '2019-02-23 14:02:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('768', '0', '115', 'upload/goods/2019-02/5c70e200cc6fc.jpg', '61633', '1', '2019-02-23 14:02:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('769', '0', '115', 'upload/goods/2019-02/5c70e2011843b.jpg', '67639', '1', '2019-02-23 14:02:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('770', '0', '115', 'upload/image/2019-02/5c70e2323f867.jpg', '114775', '1', '2019-02-23 14:03:30', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('771', '0', '115', 'upload/image/2019-02/5c70e23262ed7.jpg', '82996', '1', '2019-02-23 14:03:30', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('772', '0', '115', 'upload/image/2019-02/5c70e23281ef6.jpg', '142767', '1', '2019-02-23 14:03:30', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('773', '0', '116', 'upload/goods/2019-02/5c70e2cce0604.jpg', '70748', '1', '2019-02-23 14:06:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('774', '0', '116', 'upload/goods/2019-02/5c70e2d1665e6.jpg', '119303', '1', '2019-02-23 14:06:09', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('775', '0', '116', 'upload/goods/2019-02/5c70e2d1cb346.jpg', '49524', '1', '2019-02-23 14:06:09', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('776', '0', '116', 'upload/goods/2019-02/5c70e2d22a139.jpg', '68410', '1', '2019-02-23 14:06:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('777', '0', '116', 'upload/goods/2019-02/5c70e2d2715ea.jpg', '58709', '1', '2019-02-23 14:06:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('778', '0', '116', 'upload/image/2019-02/5c70e315b1c91.jpg', '111672', '1', '2019-02-23 14:07:17', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('779', '0', '116', 'upload/image/2019-02/5c70e316442c8.jpg', '166183', '1', '2019-02-23 14:07:18', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('780', '0', '116', 'upload/image/2019-02/5c70e316bc0dd.jpg', '70990', '1', '2019-02-23 14:07:18', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('781', '0', '117', 'upload/goods/2019-02/5c70e3a13f476.jpg', '48084', '1', '2019-02-23 14:09:37', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('782', '0', '117', 'upload/goods/2019-02/5c70e3b10a084.jpg', '89663', '1', '2019-02-23 14:09:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('783', '0', '117', 'upload/goods/2019-02/5c70e3b1645e9.jpg', '44500', '1', '2019-02-23 14:09:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('784', '0', '117', 'upload/goods/2019-02/5c70e3b1a0ad0.jpg', '84047', '1', '2019-02-23 14:09:53', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('785', '0', '117', 'upload/image/2019-02/5c70e4171d47b.jpg', '270235', '1', '2019-02-23 14:11:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('786', '0', '117', 'upload/image/2019-02/5c70e41740ed3.jpg', '407054', '1', '2019-02-23 14:11:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('787', '0', '117', 'upload/image/2019-02/5c70e41760aab.jpg', '303799', '1', '2019-02-23 14:11:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('788', '0', '117', 'upload/image/2019-02/5c70e417848eb.jpg', '371323', '1', '2019-02-23 14:11:35', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('789', '0', '118', 'upload/goods/2019-02/5c70e4d8be300.jpg', '84796', '1', '2019-02-23 14:14:48', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('790', '0', '118', 'upload/goods/2019-02/5c70e4de698cb.jpg', '55409', '1', '2019-02-23 14:14:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('791', '0', '118', 'upload/goods/2019-02/5c70e4deabb72.jpg', '75036', '1', '2019-02-23 14:14:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('792', '0', '118', 'upload/goods/2019-02/5c70e4deeb709.jpg', '83060', '1', '2019-02-23 14:14:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('793', '0', '118', 'upload/image/2019-02/5c70e5092607f.jpg', '92535', '1', '2019-02-23 14:15:37', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('794', '0', '118', 'upload/image/2019-02/5c70e509a05a3.jpg', '108745', '1', '2019-02-23 14:15:37', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('795', '0', '118', 'upload/image/2019-02/5c70e50a20eaf.jpg', '200752', '1', '2019-02-23 14:15:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('796', '0', '118', 'upload/image/2019-02/5c70e50a99c63.jpg', '233571', '1', '2019-02-23 14:15:38', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('797', '0', '119', 'upload/goods/2019-02/5c70e55600c62.jpg', '69487', '1', '2019-02-23 14:16:54', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('798', '0', '119', 'upload/goods/2019-02/5c70e570bca5d.jpg', '77157', '1', '2019-02-23 14:17:20', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('799', '0', '119', 'upload/goods/2019-02/5c70e57119cf8.jpg', '58298', '1', '2019-02-23 14:17:21', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('800', '0', '119', 'upload/image/2019-02/5c70e594638bb.jpg', '172291', '1', '2019-02-23 14:17:56', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('801', '0', '119', 'upload/image/2019-02/5c70e594f221d.jpg', '161051', '1', '2019-02-23 14:17:56', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('802', '0', '119', 'upload/image/2019-02/5c70e59578119.jpg', '288804', '1', '2019-02-23 14:17:57', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('803', '0', '120', 'upload/goods/2019-02/5c70e5f54cbaa.jpg', '47612', '1', '2019-02-23 14:19:33', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('804', '0', '120', 'upload/goods/2019-02/5c70e5fc64828.jpg', '81220', '1', '2019-02-23 14:19:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('805', '0', '120', 'upload/goods/2019-02/5c70e5fcb2e22.jpg', '42652', '1', '2019-02-23 14:19:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('806', '0', '120', 'upload/image/2019-02/5c70e622f1ac7.jpg', '296681', '1', '2019-02-23 14:20:18', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('807', '0', '120', 'upload/image/2019-02/5c70e62383546.jpg', '293820', '1', '2019-02-23 14:20:19', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('808', '0', '120', 'upload/image/2019-02/5c70e624078ea.jpg', '293987', '1', '2019-02-23 14:20:20', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('809', '0', '121', 'upload/goods/2019-02/5c70e68c2ab3f.jpg', '56321', '1', '2019-02-23 14:22:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('810', '0', '121', 'upload/goods/2019-02/5c70e691822e1.jpg', '63317', '1', '2019-02-23 14:22:09', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('811', '0', '121', 'upload/goods/2019-02/5c70e691c840a.jpg', '48318', '1', '2019-02-23 14:22:09', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('812', '0', '121', 'upload/goods/2019-02/5c70e692106b0.jpg', '60306', '1', '2019-02-23 14:22:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('813', '0', '121', 'upload/image/2019-02/5c70e6b73511d.jpg', '258584', '1', '2019-02-23 14:22:47', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('814', '0', '121', 'upload/image/2019-02/5c70e6b7842cf.jpg', '372323', '1', '2019-02-23 14:22:47', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('815', '0', '121', 'upload/image/2019-02/5c70e6b810b45.jpg', '411076', '1', '2019-02-23 14:22:48', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('816', '0', '121', 'upload/image/2019-02/5c70e6b891213.jpg', '281998', '1', '2019-02-23 14:22:48', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('817', '0', '122', 'upload/goods/2019-02/5c70e6f18d0af.jpg', '76345', '1', '2019-02-23 14:23:45', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('818', '0', '122', 'upload/goods/2019-02/5c70e6f67c441.jpg', '47271', '1', '2019-02-23 14:23:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('819', '0', '122', 'upload/goods/2019-02/5c70e6f6be300.jpg', '54666', '1', '2019-02-23 14:23:50', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('820', '0', '122', 'upload/image/2019-02/5c70e72fac2f0.jpg', '287380', '1', '2019-02-23 14:24:47', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('821', '0', '122', 'upload/image/2019-02/5c70e7303ed10.jpg', '296094', '1', '2019-02-23 14:24:48', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('822', '0', '122', 'upload/image/2019-02/5c70e730bb55d.jpg', '292478', '1', '2019-02-23 14:24:48', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('823', '0', '123', 'upload/goods/2019-02/5c70e7972cf77.jpg', '70210', '1', '2019-02-23 14:26:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('824', '0', '123', 'upload/goods/2019-02/5c70e79c07ae4.png', '373296', '1', '2019-02-23 14:26:36', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('825', '0', '123', 'upload/goods/2019-02/5c70e79d1d2e2.png', '365203', '1', '2019-02-23 14:26:37', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('826', '0', '123', 'upload/image/2019-02/5c70e7b821b54.jpg', '160366', '1', '2019-02-23 14:27:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('827', '0', '123', 'upload/image/2019-02/5c70e7b88a34c.jpg', '162918', '1', '2019-02-23 14:27:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('828', '0', '123', 'upload/image/2019-02/5c70e7b9138fa.jpg', '209648', '1', '2019-02-23 14:27:05', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('829', '0', '123', 'upload/image/2019-02/5c70e7b997678.jpg', '325236', '1', '2019-02-23 14:27:05', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('830', '0', '124', 'upload/goods/2019-02/5c70e8305bc89.jpg', '59806', '1', '2019-02-23 14:29:04', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('831', '0', '124', 'upload/goods/2019-02/5c70e836c0758.jpg', '24053', '1', '2019-02-23 14:29:10', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('832', '0', '124', 'upload/goods/2019-02/5c70e83714969.jpg', '85238', '1', '2019-02-23 14:29:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('833', '0', '124', 'upload/goods/2019-02/5c70e83758769.jpg', '57032', '1', '2019-02-23 14:29:11', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('834', '0', '124', 'upload/image/2019-02/5c70e85642308.jpg', '128901', '1', '2019-02-23 14:29:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('835', '0', '124', 'upload/image/2019-02/5c70e85665591.jpg', '180717', '1', '2019-02-23 14:29:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('836', '0', '124', 'upload/image/2019-02/5c70e856868d8.jpg', '75081', '1', '2019-02-23 14:29:42', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('837', '0', '125', 'upload/goods/2019-02/5c70e8c945813.jpg', '83266', '1', '2019-02-23 14:31:37', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('838', '0', '125', 'upload/goods/2019-02/5c70e8cd1343c.jpg', '50831', '1', '2019-02-23 14:31:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('839', '0', '125', 'upload/goods/2019-02/5c70e8cd5acd5.jpg', '52103', '1', '2019-02-23 14:31:41', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('840', '0', '125', 'upload/image/2019-02/5c70e8eed1ad8.jpg', '292221', '1', '2019-02-23 14:32:14', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('841', '0', '125', 'upload/image/2019-02/5c70e8ef15b15.jpg', '221974', '1', '2019-02-23 14:32:15', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('842', '0', '125', 'upload/image/2019-02/5c70e8ef97954.jpg', '284766', '1', '2019-02-23 14:32:15', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('843', '0', '125', 'upload/image/2019-02/5c70e8f0212e9.jpg', '327653', '1', '2019-02-23 14:32:16', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('844', '0', '126', 'upload/goods/2019-02/5c70e9691c091.jpg', '76597', '1', '2019-02-23 14:34:17', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('845', '0', '126', 'upload/goods/2019-02/5c70e9717f461.jpg', '93404', '1', '2019-02-23 14:34:25', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('846', '0', '126', 'upload/goods/2019-02/5c70e971c70e2.jpg', '51872', '1', '2019-02-23 14:34:25', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('847', '0', '126', 'upload/goods/2019-02/5c70e97212269.jpg', '72100', '1', '2019-02-23 14:34:26', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('848', '0', '126', 'upload/image/2019-02/5c70e99446dfe.jpg', '184136', '1', '2019-02-23 14:35:00', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('849', '0', '126', 'upload/image/2019-02/5c70e9946ac3e.jpg', '122343', '1', '2019-02-23 14:35:00', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('850', '0', '126', 'upload/image/2019-02/5c70e99487165.jpg', '205690', '1', '2019-02-23 14:35:00', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('851', '0', '127', 'upload/goods/2019-02/5c70ea2b969fd.jpg', '44467', '1', '2019-02-23 14:37:31', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('852', '0', '127', 'upload/goods/2019-02/5c70ea346f327.jpg', '49500', '1', '2019-02-23 14:37:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('853', '0', '127', 'upload/goods/2019-02/5c70ea34b19b7.jpg', '51682', '1', '2019-02-23 14:37:40', 'goods', '1', '1');
INSERT INTO `ox_images` VALUES ('854', '0', '127', 'upload/image/2019-02/5c70ea8c633dd.jpg', '280659', '1', '2019-02-23 14:39:08', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('855', '0', '127', 'upload/image/2019-02/5c70ea8cc3aec.jpg', '281876', '1', '2019-02-23 14:39:08', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('856', '0', '127', 'upload/image/2019-02/5c70ea8d4fb92.jpg', '231451', '1', '2019-02-23 14:39:09', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('857', '0', '127', 'upload/image/2019-02/5c70eac464c19.jpg', '242910', '1', '2019-02-23 14:40:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('858', '0', '127', 'upload/image/2019-02/5c70eb0023ac1.jpg', '171680', '1', '2019-02-23 14:41:04', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('859', '0', '127', 'upload/image/2019-02/5c70eb17d2136.jpg', '200395', '1', '2019-02-23 14:41:27', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('860', '0', '127', 'upload/image/2019-02/5c70eb3f5c76a.jpg', '196908', '1', '2019-02-23 14:42:07', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('861', '0', '127', 'upload/image/2019-02/5c70eb635eeb6.jpg', '236293', '1', '2019-02-23 14:42:43', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('862', '0', '127', 'upload/image/2019-02/5c70eb749b768.jpg', '142623', '1', '2019-02-23 14:43:00', 'image', '1', '1');
INSERT INTO `ox_images` VALUES ('863', '1', '50', 'upload/adspic/2019-02/5c70ee16d1ccc.png', '134722', '1', '2019-02-23 14:54:14', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('864', '1', '51', 'upload/adspic/2019-02/5c70ee4fb9342.png', '101918', '1', '2019-02-23 14:55:11', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('865', '1', '53', 'upload/adspic/2019-02/5c70ee704a548.png', '136534', '1', '2019-02-23 14:55:44', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('866', '1', '54', 'upload/adspic/2019-02/5c70ef013db4a.png', '184485', '1', '2019-02-23 14:58:09', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('867', '1', '55', 'upload/adspic/2019-02/5c70ef403a30d.png', '140979', '1', '2019-02-23 14:59:12', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('868', '1', '56', 'upload/adspic/2019-02/5c70ef627ae0d.png', '203277', '1', '2019-02-23 14:59:46', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('869', '1', '57', 'upload/adspic/2019-02/5c70ef9b78be8.png', '118163', '1', '2019-02-23 15:00:43', 'adspic', '1', '1');
INSERT INTO `ox_images` VALUES ('870', '1', '58', 'upload/adspic/2019-02/5c70efba204e1.png', '74648', '1', '2019-02-23 15:01:14', 'adspic', '1', '1');

-- ----------------------------
-- Table structure for ox_informs
-- ----------------------------
DROP TABLE IF EXISTS `ox_informs`;
CREATE TABLE `ox_informs` (
  `informId` int(11) NOT NULL AUTO_INCREMENT,
  `informTargetId` int(11) NOT NULL,
  `goodId` int(11) NOT NULL,
  `shopId` int(11) NOT NULL,
  `informType` int(11) NOT NULL DEFAULT '1',
  `informContent` text,
  `informAnnex` text NOT NULL,
  `informTime` datetime NOT NULL,
  `informStatus` tinyint(4) NOT NULL,
  `respondContent` text,
  `finalHandleStaffId` int(11) DEFAULT NULL,
  `finalHandleTime` datetime DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`informId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_informs
-- ----------------------------

-- ----------------------------
-- Table structure for ox_invoices
-- ----------------------------
DROP TABLE IF EXISTS `ox_invoices`;
CREATE TABLE `ox_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `invoiceHead` varchar(255) NOT NULL COMMENT '发票抬头',
  `invoiceCode` varchar(255) NOT NULL DEFAULT '' COMMENT '纳税人识别号',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据有效标记',
  `createTime` datetime NOT NULL COMMENT '数据创建时间',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_invoices
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_moneys
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_moneys`;
CREATE TABLE `ox_log_moneys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetType` tinyint(4) NOT NULL DEFAULT '0',
  `targetId` int(11) NOT NULL DEFAULT '0',
  `dataId` int(11) NOT NULL DEFAULT '0',
  `dataSrc` varchar(20) DEFAULT NULL,
  `remark` text NOT NULL,
  `moneyType` tinyint(4) NOT NULL DEFAULT '1',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tradeNo` varchar(100) DEFAULT NULL,
  `payType` varchar(20) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_moneys
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_operates
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_operates`;
CREATE TABLE `ox_log_operates` (
  `operateId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` int(11) NOT NULL DEFAULT '0',
  `operateTime` datetime NOT NULL,
  `menuId` int(11) NOT NULL,
  `operateDesc` varchar(255) NOT NULL,
  `operateUrl` varchar(255) NOT NULL,
  `content` longtext,
  `operateIP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`operateId`),
  KEY `operateTime` (`staffId`,`menuId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_operates
-- ----------------------------
INSERT INTO `ox_log_operates` VALUES ('1', '1', '2019-04-15 23:32:47', '50', '查看订单', '/admin/orders/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('2', '1', '2019-04-15 23:32:48', '50', '查看订单', '/admin/orders/pageQuery.html?userId=0&areaId1=-1&orderCode=&isRefund=-1&isInvoice=-1&startDate=&endDate=&orderNo=&shopName=&orderStatus=10000&payType=-1&deliverType=-1&payFrom=', '{\"userId\":\"0\",\"areaId1\":\"-1\",\"orderCode\":\"\",\"isRefund\":\"-1\",\"isInvoice\":\"-1\",\"startDate\":\"\",\"endDate\":\"\",\"orderNo\":\"\",\"shopName\":\"\",\"orderStatus\":\"10000\",\"payType\":\"-1\",\"deliverType\":\"-1\",\"payFrom\":\"\",\"page\":\"1\",\"sort\":\"createTime.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('3', '1', '2019-04-15 23:32:48', '50', '查看订单', '/admin/orders/pageQuery.html?userId=0&areaId1=-1&orderCode=&isRefund=-1&isInvoice=-1&startDate=&endDate=&orderNo=&shopName=&orderStatus=10000&payType=-1&deliverType=-1&payFrom=', '{\"userId\":\"0\",\"areaId1\":\"-1\",\"orderCode\":\"\",\"isRefund\":\"-1\",\"isInvoice\":\"-1\",\"startDate\":\"\",\"endDate\":\"\",\"orderNo\":\"\",\"shopName\":\"\",\"orderStatus\":\"10000\",\"payType\":\"-1\",\"deliverType\":\"-1\",\"payFrom\":\"\",\"page\":\"0\",\"sort\":\"createTime.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('4', '1', '2019-04-15 23:32:49', '51', '查看投诉订单', '/admin/ordercomplains/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('5', '1', '2019-04-15 23:32:49', '51', '查看投诉订单', '/admin/orderComplains/pageQuery.html', '{\"areaId1\":\"-1\",\"orderNo\":\"\",\"complainStatus\":\"-1\",\"startDate\":\"\",\"endDate\":\"\",\"page\":\"1\",\"sort\":\"complainTime.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('6', '1', '2019-04-15 23:32:50', '51', '查看投诉订单', '/admin/orderComplains/pageQuery.html', '{\"areaId1\":\"-1\",\"orderNo\":\"\",\"complainStatus\":\"-1\",\"startDate\":\"\",\"endDate\":\"\",\"page\":\"0\",\"sort\":\"complainTime.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('7', '1', '2019-04-15 23:32:51', '33', '查看已上架商品', '/admin/goods/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('8', '1', '2019-04-15 23:32:52', '33', '查看已上架商品', '/admin/goods/saleByPage.html', '{\"areaId1\":\"\",\"goodsName\":\"\",\"shopName\":\"\",\"areaIdPath\":\"\",\"goodsCatIdPath\":\"\",\"page\":\"1\",\"sort\":\"goodsSn.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('9', '1', '2019-04-15 23:33:02', '59', '查看店铺推荐', '/admin/recommends/shops.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('10', '1', '2019-04-15 23:33:05', '58', '查看商品推荐', '/admin/recommends/goods.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('11', '1', '2019-04-15 23:33:20', '19', '查看会员等级', '/admin/userranks/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('12', '1', '2019-04-15 23:33:20', '19', '查看会员等级', '/admin/userranks/pageQuery.html', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('13', '1', '2019-04-15 23:33:22', '20', '查看会员管理', '/admin/users/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('14', '1', '2019-04-15 23:33:23', '20', '查看会员管理', '/admin/Users/pageQuery.html', '{\"page\":\"1\",\"sort\":\"createTime.desc\",\"limit\":\"20\"}', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('15', '1', '2019-04-15 23:33:27', '9', '查看商城配置', '/admin/sysconfigs/index.html', '', '127.0.0.1');
INSERT INTO `ox_log_operates` VALUES ('16', '1', '2019-04-16 00:16:49', '2', '登录自营店铺', '/admin/shops/inself.html', '', '127.0.0.1');

-- ----------------------------
-- Table structure for ox_log_orders
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_orders`;
CREATE TABLE `ox_log_orders` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL DEFAULT '0',
  `orderStatus` int(11) NOT NULL,
  `logContent` varchar(255) NOT NULL,
  `logUserId` int(11) NOT NULL DEFAULT '0',
  `logType` tinyint(4) NOT NULL DEFAULT '0',
  `logTime` datetime NOT NULL,
  PRIMARY KEY (`logId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_orders
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_pays
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_pays`;
CREATE TABLE `ox_log_pays` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '0',
  `transId` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_pays
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_pay_params
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_pay_params`;
CREATE TABLE `ox_log_pay_params` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '0',
  `transId` varchar(50) DEFAULT NULL,
  `paramsVa` varchar(500) DEFAULT NULL,
  `payFrom` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_pay_params
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_sms
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_sms`;
CREATE TABLE `ox_log_sms` (
  `smsId` int(11) NOT NULL AUTO_INCREMENT,
  `smsSrc` tinyint(4) NOT NULL DEFAULT '0',
  `smsUserId` int(11) NOT NULL DEFAULT '0',
  `smsContent` varchar(255) NOT NULL,
  `smsPhoneNumber` varchar(11) NOT NULL,
  `smsReturnCode` varchar(255) NOT NULL,
  `smsCode` varchar(255) DEFAULT NULL,
  `smsFunc` varchar(50) NOT NULL,
  `smsIP` varchar(16) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`smsId`),
  KEY `smsPhoneNumber` (`smsPhoneNumber`),
  KEY `smsIP` (`smsIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_sms
-- ----------------------------

-- ----------------------------
-- Table structure for ox_log_staff_logins
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_staff_logins`;
CREATE TABLE `ox_log_staff_logins` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` int(11) NOT NULL DEFAULT '0',
  `loginTime` datetime NOT NULL,
  `loginIp` varchar(16) NOT NULL,
  PRIMARY KEY (`loginId`),
  KEY `loginTime` (`loginTime`),
  KEY `staffId` (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_staff_logins
-- ----------------------------
INSERT INTO `ox_log_staff_logins` VALUES ('1', '1', '2019-04-15 23:32:37', '127.0.0.1');

-- ----------------------------
-- Table structure for ox_log_user_logins
-- ----------------------------
DROP TABLE IF EXISTS `ox_log_user_logins`;
CREATE TABLE `ox_log_user_logins` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `loginTime` datetime NOT NULL,
  `loginIp` varchar(16) NOT NULL,
  `loginSrc` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:商城  1:webapp  2:App',
  `loginRemark` varchar(30) DEFAULT NULL COMMENT '登录备注信息',
  PRIMARY KEY (`loginId`),
  KEY `loginTime` (`loginTime`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_log_user_logins
-- ----------------------------
INSERT INTO `ox_log_user_logins` VALUES ('1', '1', '2019-04-16 00:16:49', '127.0.0.1', '0', null);

-- ----------------------------
-- Table structure for ox_menus
-- ----------------------------
DROP TABLE IF EXISTS `ox_menus`;
CREATE TABLE `ox_menus` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `menuName` varchar(100) NOT NULL,
  `menuSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '0',
  `menuMark` varchar(50) DEFAULT NULL,
  `isShow` tinyint(4) DEFAULT '1',
  `menuIcon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menuId`),
  KEY `parentId` (`parentId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_menus
-- ----------------------------
INSERT INTO `ox_menus` VALUES ('1', '0', '平台', '0', '1', null, '1', 'desktop');
INSERT INTO `ox_menus` VALUES ('2', '1', '系统管理', '0', '1', null, '1', 'wrench');
INSERT INTO `ox_menus` VALUES ('3', '2', '菜单权限', '100', '1', null, '1', 'bars');
INSERT INTO `ox_menus` VALUES ('4', '22', '角色管理', '3', '1', null, '1', 'user');
INSERT INTO `ox_menus` VALUES ('5', '22', '职员管理', '2', '1', null, '1', 'user-secret');
INSERT INTO `ox_menus` VALUES ('6', '38', '登录日志', '4', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('7', '38', '操作日志', '5', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('8', '35', '基础设置', '100', '1', null, '1', 'cog');
INSERT INTO `ox_menus` VALUES ('9', '8', '商城配置', '0', '1', null, '1', 'cog');
INSERT INTO `ox_menus` VALUES ('10', '8', '导航管理', '1', '1', null, '1', 'tachometer');
INSERT INTO `ox_menus` VALUES ('11', '8', '广告管理', '2', '1', null, '1', 'bullhorn');
INSERT INTO `ox_menus` VALUES ('12', '8', '支付管理', '5', '1', null, '1', 'credit-card');
INSERT INTO `ox_menus` VALUES ('13', '8', '银行管理', '4', '1', null, '1', 'bank');
INSERT INTO `ox_menus` VALUES ('14', '8', '友情链接', '7', '1', null, '1', 'link');
INSERT INTO `ox_menus` VALUES ('16', '8', '地区管理', '6', '1', null, '1', 'sitemap');
INSERT INTO `ox_menus` VALUES ('18', '35', '会员管理', '4', '1', null, '1', 'users');
INSERT INTO `ox_menus` VALUES ('19', '18', '会员等级', '0', '1', null, '1', 'sitemap');
INSERT INTO `ox_menus` VALUES ('20', '18', '会员管理', '1', '1', null, '1', 'users');
INSERT INTO `ox_menus` VALUES ('21', '18', '账号管理', '2', '1', null, '1', 'id-card');
INSERT INTO `ox_menus` VALUES ('22', '1', '职员管理', '0', '1', null, '1', 'id-card');
INSERT INTO `ox_menus` VALUES ('23', '35', '商品管理', '1', '1', null, '1', 'cubes');
INSERT INTO `ox_menus` VALUES ('24', '23', '商品分类', '3', '1', null, '1', 'sitemap');
INSERT INTO `ox_menus` VALUES ('25', '23', '品牌管理', '4', '1', null, '1', 'registered');
INSERT INTO `ox_menus` VALUES ('29', '1', '文章管理', '3', '1', null, '1', 'leanpub');
INSERT INTO `ox_menus` VALUES ('30', '29', '文章分类', '1', '1', null, '1', 'folder');
INSERT INTO `ox_menus` VALUES ('31', '29', '文章管理', '0', '1', null, '1', 'leanpub');
INSERT INTO `ox_menus` VALUES ('32', '23', '商品规格', '5', '1', null, '1', 'flag-checkered');
INSERT INTO `ox_menus` VALUES ('33', '23', '已上架商品', '0', '1', null, '1', 'check-circle');
INSERT INTO `ox_menus` VALUES ('34', '23', '评价管理', '6', '1', null, '1', 'comments');
INSERT INTO `ox_menus` VALUES ('35', '0', '商城', '1', '1', null, '1', 'shopping-cart');
INSERT INTO `ox_menus` VALUES ('36', '2', '图片空间', '6', '1', null, '1', 'image');
INSERT INTO `ox_menus` VALUES ('38', '1', '日志管理', '0', '1', null, '1', 'eye');
INSERT INTO `ox_menus` VALUES ('39', '35', '店铺管理', '3', '1', null, '1', 'institution');
INSERT INTO `ox_menus` VALUES ('41', '2', '商城消息', '7', '1', null, '1', 'comment');
INSERT INTO `ox_menus` VALUES ('42', '8', '广告位置', '3', '1', null, '1', 'bookmark');
INSERT INTO `ox_menus` VALUES ('43', '2', '前台菜单', '99', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('44', '39', '店铺认证', '0', '1', null, '1', 'tags');
INSERT INTO `ox_menus` VALUES ('45', '39', '开店申请', '1', '1', null, '1', 'clock-o');
INSERT INTO `ox_menus` VALUES ('46', '39', '店铺管理', '2', '1', null, '1', 'check-circle');
INSERT INTO `ox_menus` VALUES ('47', '39', '停用店铺', '3', '1', null, '1', 'exclamation-circle');
INSERT INTO `ox_menus` VALUES ('48', '23', '商品属性', '3', '1', null, '1', 'flag-o');
INSERT INTO `ox_menus` VALUES ('49', '35', '订单管理', '0', '1', null, '1', 'shopping-cart');
INSERT INTO `ox_menus` VALUES ('50', '49', '订单管理', '0', '1', null, '1', 'shopping-cart');
INSERT INTO `ox_menus` VALUES ('51', '49', '投诉订单', '1', '1', null, '1', 'frown-o');
INSERT INTO `ox_menus` VALUES ('52', '49', '退款订单', '2', '1', null, '1', 'asl-interpreting');
INSERT INTO `ox_menus` VALUES ('53', '8', '快递管理', '8', '1', null, '1', 'truck');
INSERT INTO `ox_menus` VALUES ('54', '23', '待审核商品', '1', '1', null, '1', 'clock-o');
INSERT INTO `ox_menus` VALUES ('55', '23', '违规商品', '2', '1', null, '1', 'exclamation-circle');
INSERT INTO `ox_menus` VALUES ('56', '0', '运营', '2', '1', null, '1', 'truck');
INSERT INTO `ox_menus` VALUES ('57', '56', '推荐管理', '0', '1', null, '1', 'thumbs-o-up');
INSERT INTO `ox_menus` VALUES ('58', '57', '商品推荐', '0', '1', null, '1', 'cubes');
INSERT INTO `ox_menus` VALUES ('59', '57', '店铺推荐', '1', '1', null, '1', 'institution');
INSERT INTO `ox_menus` VALUES ('60', '57', '品牌推荐', '2', '1', null, '1', 'registered');
INSERT INTO `ox_menus` VALUES ('61', '2', '风格管理', '10', '1', null, '1', 'superpowers');
INSERT INTO `ox_menus` VALUES ('62', '56', '财务管理', '0', '1', null, '1', 'money');
INSERT INTO `ox_menus` VALUES ('63', '62', '提现申请', '0', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('64', '62', '结算申请', '2', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('65', '62', '商家结算', '4', '1', null, '1', 'circle-o');
INSERT INTO `ox_menus` VALUES ('71', '56', '统计报表', '3', '1', null, '1', 'line-chart');
INSERT INTO `ox_menus` VALUES ('72', '71', '商品销售排行', '0', '1', null, '1', 'table');
INSERT INTO `ox_menus` VALUES ('73', '71', '新增会员统计', '4', '1', null, '1', 'line-chart');
INSERT INTO `ox_menus` VALUES ('74', '71', '销售额统计', '2', '1', null, '1', 'line-chart');
INSERT INTO `ox_menus` VALUES ('75', '71', '会员登录统计', '5', '1', null, '1', 'line-chart');
INSERT INTO `ox_menus` VALUES ('76', '71', '销售订单统计', '3', '1', null, '1', 'line-chart');
INSERT INTO `ox_menus` VALUES ('77', '71', '店铺销售统计', '1', '1', null, '1', 'table');
INSERT INTO `ox_menus` VALUES ('81', '0', '扩展', '20', '1', null, '1', 'cloud');
INSERT INTO `ox_menus` VALUES ('82', '81', '扩展管理', '0', '1', null, '1', 'cloud');
INSERT INTO `ox_menus` VALUES ('83', '82', '插件管理', '0', '1', null, '1', 'cloud-download');
INSERT INTO `ox_menus` VALUES ('84', '82', '钩子管理', '1', '1', null, '1', 'thumb-tack');
INSERT INTO `ox_menus` VALUES ('85', '62', '资金管理', '0', '1', null, '1', '');
INSERT INTO `ox_menus` VALUES ('86', '8', '消息模板', '12', '1', null, '1', 'window-restore');
INSERT INTO `ox_menus` VALUES ('93', '56', '促销管理', '0', '1', null, '1', null);
INSERT INTO `ox_menus` VALUES ('168', '23', '商品咨询', '9', '1', '', '1', 'coffee');
INSERT INTO `ox_menus` VALUES ('169', '2', '系统数据管理', '12', '1', null, '1', 'file-text-o');
INSERT INTO `ox_menus` VALUES ('170', '2', '移动端按钮管理', '13', '1', null, '1', 'mobile');
INSERT INTO `ox_menus` VALUES ('172', '8', '充值管理', '1', '1', null, '1', 'money');
INSERT INTO `ox_menus` VALUES ('185', '38', '短信日志', '6', '1', '', '1', '');
INSERT INTO `ox_menus` VALUES ('188', '23', '举报管理', '6', '1', '', '1', '');
INSERT INTO `ox_menus` VALUES ('195', '2', '页面转换', '14', '1', '', '1', '');
INSERT INTO `ox_menus` VALUES ('220', '39', '店铺风格管理', '0', '1', '', '1', '');

-- ----------------------------
-- Table structure for ox_messages
-- ----------------------------
DROP TABLE IF EXISTS `ox_messages`;
CREATE TABLE `ox_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgType` tinyint(4) NOT NULL DEFAULT '0',
  `sendUserId` int(11) NOT NULL DEFAULT '0',
  `receiveUserId` int(11) NOT NULL DEFAULT '0',
  `msgContent` text NOT NULL,
  `msgStatus` tinyint(4) NOT NULL DEFAULT '0',
  `msgJson` varchar(255) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receiveUserId` (`receiveUserId`,`dataFlag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_messages
-- ----------------------------

-- ----------------------------
-- Table structure for ox_message_queues
-- ----------------------------
DROP TABLE IF EXISTS `ox_message_queues`;
CREATE TABLE `ox_message_queues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `msgType` tinyint(4) DEFAULT '0',
  `paramJson` text,
  `msgJson` text,
  `createTime` datetime DEFAULT NULL,
  `sendTime` datetime DEFAULT NULL,
  `sendStatus` tinyint(4) DEFAULT '0',
  `msgCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_message_queues
-- ----------------------------

-- ----------------------------
-- Table structure for ox_mobile_btns
-- ----------------------------
DROP TABLE IF EXISTS `ox_mobile_btns`;
CREATE TABLE `ox_mobile_btns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `btnName` varchar(255) DEFAULT NULL,
  `btnSrc` tinyint(4) NOT NULL DEFAULT '0',
  `btnUrl` varchar(255) DEFAULT NULL,
  `btnImg` varchar(255) DEFAULT NULL,
  `addonsName` varchar(255) DEFAULT NULL,
  `btnSort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `btnSrc` (`btnSrc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_mobile_btns
-- ----------------------------

-- ----------------------------
-- Table structure for ox_navs
-- ----------------------------
DROP TABLE IF EXISTS `ox_navs`;
CREATE TABLE `ox_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navType` tinyint(4) NOT NULL DEFAULT '0',
  `navTitle` varchar(50) NOT NULL,
  `navUrl` varchar(100) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `isOpen` tinyint(4) NOT NULL DEFAULT '0',
  `navSort` int(11) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `navType` (`navType`,`isShow`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_navs
-- ----------------------------
INSERT INTO `ox_navs` VALUES ('1', '0', '品牌街', 'brands.html', '1', '1', '2', '2015-07-12 20:08:22');
INSERT INTO `ox_navs` VALUES ('2', '0', '首页', 'index.html', '1', '0', '0', '2015-07-12 20:08:36');
INSERT INTO `ox_navs` VALUES ('3', '0', '店铺街', 'street.html', '1', '0', '3', '2015-07-12 20:10:00');
INSERT INTO `ox_navs` VALUES ('4', '0', '自营超市', 'shop-1.html', '1', '0', '4', '2015-07-12 20:11:21');
INSERT INTO `ox_navs` VALUES ('5', '1', '关于我们', '#', '1', '0', '0', '2015-07-12 20:25:58');
INSERT INTO `ox_navs` VALUES ('7', '1', 'WST百科', '#', '1', '0', '0', '2015-07-12 23:02:39');
INSERT INTO `ox_navs` VALUES ('8', '1', '帮助中心', '#', '1', '0', '0', '2015-07-12 23:03:43');
INSERT INTO `ox_navs` VALUES ('9', '1', '交易条款', '#', '1', '0', '0', '2015-07-12 23:03:55');
INSERT INTO `ox_navs` VALUES ('10', '1', '诚征英才', '#', '1', '0', '0', '2015-07-12 23:04:41');
INSERT INTO `ox_navs` VALUES ('11', '1', '网站地图', '#', '1', '0', '0', '2015-07-12 23:04:51');
INSERT INTO `ox_navs` VALUES ('12', '1', '友情链接', '#', '0', '0', '0', '2015-07-12 23:05:08');
INSERT INTO `ox_navs` VALUES ('13', '1', '店铺管理', 'shop.php', '0', '0', '0', '2015-07-12 23:05:42');
INSERT INTO `ox_navs` VALUES ('15', '0', '时蔬水果', 'category-47.html', '1', '0', '1', '2016-09-06 14:22:36');
INSERT INTO `ox_navs` VALUES ('16', '0', '厨房清洁', 'category-48.html', '1', '0', '2', '2016-09-06 14:23:08');
INSERT INTO `ox_navs` VALUES ('17', '0', '床上家居', 'category-54.html', '1', '0', '3', '2016-09-06 14:23:38');
INSERT INTO `ox_navs` VALUES ('18', '0', '养生之道', '2', '1', '1', '5', '2016-09-06 14:24:28');

-- ----------------------------
-- Table structure for ox_orderids
-- ----------------------------
DROP TABLE IF EXISTS `ox_orderids`;
CREATE TABLE `ox_orderids` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `rnd` float(16,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_orderids
-- ----------------------------
INSERT INTO `ox_orderids` VALUES ('10000000', '1476879616.00');

-- ----------------------------
-- Table structure for ox_orders
-- ----------------------------
DROP TABLE IF EXISTS `ox_orders`;
CREATE TABLE `ox_orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) NOT NULL,
  `shopId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `orderStatus` tinyint(4) NOT NULL DEFAULT '-2',
  `goodsMoney` decimal(11,2) NOT NULL,
  `deliverType` tinyint(4) NOT NULL DEFAULT '0',
  `deliverMoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalMoney` decimal(11,2) NOT NULL,
  `realTotalMoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `payType` tinyint(4) NOT NULL DEFAULT '0',
  `payFrom` varchar(20) DEFAULT NULL,
  `isPay` tinyint(4) NOT NULL DEFAULT '0',
  `areaId` int(11) NOT NULL,
  `areaIdPath` varchar(255) DEFAULT NULL,
  `userName` varchar(20) NOT NULL,
  `userAddress` varchar(255) NOT NULL,
  `userPhone` char(20) DEFAULT NULL,
  `orderScore` int(11) NOT NULL DEFAULT '0',
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0',
  `invoiceClient` varchar(255) DEFAULT NULL,
  `orderRemarks` varchar(255) DEFAULT NULL,
  `orderSrc` tinyint(4) NOT NULL DEFAULT '0',
  `needPay` decimal(11,2) DEFAULT '0.00',
  `payRand` int(11) DEFAULT '1',
  `orderType` int(11) DEFAULT '0',
  `isRefund` tinyint(4) NOT NULL DEFAULT '0',
  `isAppraise` tinyint(4) DEFAULT '0',
  `cancelReason` int(11) DEFAULT '0',
  `rejectReason` int(11) DEFAULT '0',
  `rejectOtherReason` varchar(255) DEFAULT NULL,
  `isClosed` tinyint(4) NOT NULL DEFAULT '0',
  `goodsSearchKeys` text,
  `orderunique` varchar(50) NOT NULL,
  `receiveTime` datetime DEFAULT NULL,
  `deliveryTime` datetime DEFAULT NULL,
  `tradeNo` varchar(100) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `settlementId` int(11) DEFAULT '0',
  `commissionFee` decimal(11,2) DEFAULT '0.00',
  `scoreMoney` decimal(11,2) DEFAULT '0.00',
  `useScore` int(11) DEFAULT '0',
  `orderCode` varchar(20) DEFAULT 'order',
  `extraJson` text,
  `orderCodeTargetId` int(11) DEFAULT '0',
  `noticeDeliver` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '提醒发货 0:未提醒 1:已提醒',
  `invoiceJson` text COMMENT '发票信息',
  `lockCashMoney` decimal(11,2) DEFAULT '0.00' COMMENT '锁定提现金额',
  `payTime` datetime DEFAULT NULL,
  `isBatch` tinyint(4) DEFAULT '0',
  `totalPayFee` int(11) DEFAULT '0',
  PRIMARY KEY (`orderId`),
  KEY `shopId` (`shopId`,`dataFlag`),
  KEY `userId` (`userId`,`dataFlag`),
  KEY `isRefund` (`isRefund`),
  KEY `orderStatus` (`orderStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_orders
-- ----------------------------

-- ----------------------------
-- Table structure for ox_order_complains
-- ----------------------------
DROP TABLE IF EXISTS `ox_order_complains`;
CREATE TABLE `ox_order_complains` (
  `complainId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL DEFAULT '0',
  `complainType` tinyint(4) NOT NULL DEFAULT '1',
  `complainTargetId` int(11) NOT NULL DEFAULT '0',
  `respondTargetId` int(11) NOT NULL DEFAULT '0',
  `needRespond` tinyint(4) NOT NULL DEFAULT '0',
  `deliverRespondTime` datetime DEFAULT NULL,
  `complainContent` text NOT NULL,
  `complainAnnex` varchar(255) DEFAULT NULL,
  `complainStatus` tinyint(4) NOT NULL DEFAULT '0',
  `complainTime` datetime NOT NULL,
  `respondContent` text,
  `respondAnnex` varchar(255) DEFAULT NULL,
  `respondTime` datetime DEFAULT NULL,
  `finalResult` text,
  `finalResultTime` datetime DEFAULT NULL,
  `finalHandleStaffId` int(11) DEFAULT '0',
  PRIMARY KEY (`complainId`),
  KEY `complainStatus` (`complainStatus`),
  KEY `complainType` (`complainTargetId`,`complainType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_order_complains
-- ----------------------------

-- ----------------------------
-- Table structure for ox_order_express
-- ----------------------------
DROP TABLE IF EXISTS `ox_order_express`;
CREATE TABLE `ox_order_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `orderGoodsId` varchar(100) NOT NULL,
  `deliveryTime` datetime DEFAULT NULL,
  `isExpress` tinyint(4) DEFAULT '0' COMMENT '1:��Ҫ����  0:��������',
  `expressId` int(11) DEFAULT NULL,
  `expressNo` varchar(20) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_order_express
-- ----------------------------

-- ----------------------------
-- Table structure for ox_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ox_order_goods`;
CREATE TABLE `ox_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `goodsNum` int(11) NOT NULL DEFAULT '0',
  `goodsPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `goodsSpecId` int(11) DEFAULT '0',
  `goodsSpecNames` varchar(500) DEFAULT NULL,
  `goodsName` varchar(200) NOT NULL,
  `goodsImg` varchar(150) NOT NULL,
  `extraJson` text,
  `goodsType` tinyint(4) NOT NULL DEFAULT '0',
  `commissionRate` decimal(11,2) DEFAULT '0.00',
  `goodsCode` varchar(20) DEFAULT NULL,
  `promotionJson` text,
  PRIMARY KEY (`id`),
  KEY `goodsId` (`goodsId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ox_order_refunds
-- ----------------------------
DROP TABLE IF EXISTS `ox_order_refunds`;
CREATE TABLE `ox_order_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `refundTo` int(11) NOT NULL DEFAULT '0',
  `refundReson` int(11) NOT NULL DEFAULT '0',
  `refundOtherReson` varchar(255) DEFAULT NULL,
  `backMoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `refundTradeNo` varchar(100) DEFAULT NULL,
  `refundRemark` varchar(500) DEFAULT NULL,
  `refundTime` datetime DEFAULT NULL,
  `shopRejectReason` varchar(255) DEFAULT NULL,
  `refundStatus` tinyint(4) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId_2` (`orderId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_order_refunds
-- ----------------------------

-- ----------------------------
-- Table structure for ox_payments
-- ----------------------------
DROP TABLE IF EXISTS `ox_payments`;
CREATE TABLE `ox_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payCode` varchar(20) DEFAULT NULL,
  `payName` varchar(255) DEFAULT NULL,
  `payDesc` text,
  `payOrder` int(11) DEFAULT '0',
  `payConfig` text,
  `enabled` tinyint(4) DEFAULT '0',
  `isOnline` tinyint(4) DEFAULT '0',
  `payFor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payCode` (`payCode`,`enabled`,`isOnline`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_payments
-- ----------------------------
INSERT INTO `ox_payments` VALUES ('1', 'cod', '货到付款', '开通城市', '1', '', '1', '0', '1,2,3,4');
INSERT INTO `ox_payments` VALUES ('2', 'alipays', '支付宝(及时到帐)', '支付宝(及时到帐)', '4', '', '0', '1', '1,2,4');
INSERT INTO `ox_payments` VALUES ('3', 'weixinpays', '微信支付', '微信支付', '0', '', '0', '1', '1,2,3');
INSERT INTO `ox_payments` VALUES ('4', 'wallets', '余额支付', '余额支付', '5', '', '1', '1', '1,2,3,4');

-- ----------------------------
-- Table structure for ox_privileges
-- ----------------------------
DROP TABLE IF EXISTS `ox_privileges`;
CREATE TABLE `ox_privileges` (
  `privilegeId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `privilegeCode` varchar(20) NOT NULL,
  `privilegeName` varchar(30) NOT NULL,
  `isMenuPrivilege` tinyint(4) NOT NULL DEFAULT '0',
  `privilegeUrl` varchar(255) DEFAULT NULL,
  `otherPrivilegeUrl` text,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `isEnable` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`privilegeId`),
  UNIQUE KEY `privilegeCode` (`privilegeCode`),
  KEY `menuId` (`menuId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_privileges
-- ----------------------------
INSERT INTO `ox_privileges` VALUES ('2', '2', 'XTGL_00', '查看系统管理', '1', null, null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('3', '3', 'CDGL_00', '查看菜单权限', '1', 'admin/menus/index', 'admin/menus/listQuery,admin/menus/get,admin/privileges/listQuery,admin/privileges/get', '1', '1');
INSERT INTO `ox_privileges` VALUES ('4', '3', 'CDGL_01', '新增菜单', '0', 'admin/menus/add', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('5', '3', 'CDGL_02', '编辑菜单', '0', 'admin/menus/edit', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('6', '3', 'CDGL_03', '删除菜单', '0', 'admin/menus/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('7', '3', 'QXGL_01', '新增权限', '0', 'admin/privileges/add', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('8', '3', 'QXGL_02', '编辑权限', '0', 'admin/privileges/edit', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('9', '3', 'QXGL_03', '删除菜单', '0', 'admin/privileges/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('29', '4', 'JSGL_00', '查看角色管理', '1', 'admin/roles/index', 'admin/roles/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('30', '4', 'JSGL_01', '新增角色', '0', 'admin/roles/add', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1', '1');
INSERT INTO `ox_privileges` VALUES ('31', '4', 'JSGL_02', '编辑角色', '0', 'admin/roles/edit', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1', '1');
INSERT INTO `ox_privileges` VALUES ('32', '4', 'JSGL_03', '删除角色', '0', 'admin/roles/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('35', '1', 'SY_001', '查看平台', '0', '#', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('36', '5', 'ZYGL_00', '查看职员管理', '1', 'admin/staffs/index', 'admin/staffs/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('37', '5', 'ZYGL_01', '新增职员', '0', 'admin/staffs/add', 'admin/staffs/toAdd', '1', '1');
INSERT INTO `ox_privileges` VALUES ('38', '5', 'ZYGL_02', '编辑职员', '0', 'admin/staffs/edit', 'admin/staffs/toEdit,admin/staffs/editPass', '1', '1');
INSERT INTO `ox_privileges` VALUES ('39', '5', 'ZYGL_03', '删除职员', '0', 'admin/staffs/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('40', '10', 'DHGL_00', '查看导航管理', '1', 'admin/navs/index', 'admin/navs/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('41', '10', 'DHGL_01', '新增导航', '0', 'admin/nav/add', 'admin/nav/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('42', '11', 'GGGL_00', '查看广告管理', '1', 'admin/ads/index', 'admin/ads/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('43', '12', 'ZFGL_00', '查看支付管理', '1', 'admin/payments/index', 'admin/payments/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('44', '13', 'YHGL_00', '查看银行管理', '1', 'admin/banks/index', 'admin/banks/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('45', '14', 'YQGL_00', '查看友情链接', '1', 'admin/friendlinks/index', 'admin/friendlinks/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('46', '10', 'DHGL_02', '修改导航', '0', 'admin/nav/edit', 'admin/nav/toEdit,admin/nav/editiIsShow', '1', '1');
INSERT INTO `ox_privileges` VALUES ('47', '10', 'DHGL_03', '删除导航', '0', 'admin/nav/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('48', '11', 'GGGL_01', '新增广告', '0', 'admin/ads/add', 'admin/ads/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('49', '11', 'GGGL_02', '修改广告', '0', 'admin/ads/edit', 'admin/ads/toEdit,admin/ads/changeSort', '1', '1');
INSERT INTO `ox_privileges` VALUES ('50', '11', 'GGGL_03', '删除广告', '0', 'admin/ads/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('51', '12', 'ZFGL_02', '编辑支付', '0', 'admin/payments/edit', 'admin/payments/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('52', '12', 'ZFGL_03', '卸载支付', '0', 'admin/payments/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('53', '13', 'YHGL_01', '新增银行', '0', 'admin/banks/add', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('54', '13', 'YHGL_02', '修改银行', '0', 'admin/banks/edit', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('55', '13', 'YHGL_03', '删除银行', '0', 'admin/banks/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('56', '14', 'YQGL_01', '新增友情链接', '0', 'admin/friendlinks/add', 'admin/friendlinks/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('57', '14', 'YQGL_02', '修改友情链接', '0', 'admin/friendlinks/edit', 'admin/friendlinks/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('58', '14', 'YQGL_03', '删除友情链接', '0', 'admin/friendlinks/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('59', '16', 'DQGL_00', '查看地区管理', '1', 'admin/areas/index', 'admin/areas/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('60', '16', 'DQGL_01', '新增地区', '0', 'admin/areas/add', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('61', '16', 'DQGL_02', '编辑地区', '0', 'admin/areas/edit', 'admin/areas/editiIsShow', '1', '1');
INSERT INTO `ox_privileges` VALUES ('62', '16', 'DQGL_03', '删除地区', '0', 'admin/areas/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('67', '24', 'SPFL_00', '查看商品分类', '1', 'admin/goodscats/index', 'admin/goodscats/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('68', '19', 'HYDJ_00', '查看会员等级', '1', 'admin/userranks/index', 'admin/userranks/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('69', '19', 'HYDJ_01', '新增会员等级', '0', 'admin/userranks/add', 'admin/userranks/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('70', '19', 'HYDJ_02', '编辑会员等级', '0', 'admin/userranks/edit', 'admin/userranks/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('71', '19', 'HYDJ_03', '删除会员等级', '0', 'admin/userranks/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('72', '20', 'HYGL_00', '查看会员管理', '1', 'admin/users/index', 'admin/users/pageQuery,admin/logmoneys/tologmoneys,admin/logmoneys/pageQueryByUser,admin/logmoneys/pageQueryByShop,admin/userscores/touserscores,admin/userscores/pageQuery,admin/userscores/toAdd,admin/userscores/add', '1', '1');
INSERT INTO `ox_privileges` VALUES ('73', '20', 'HYGL_01', '新增会员管理', '0', 'admin/users/add', 'admin/users/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('74', '20', 'HYGL_02', '编辑会员管理', '0', 'admin/users/edit', 'admin/users/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('75', '20', 'HYGL_03', '删除会员管理', '0', 'admin/users/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('76', '24', 'SPFL_01', '新增商品分类', '0', 'admin/goodscats/add', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('77', '24', 'SPFL_02', '编辑商品分类', '0', 'admin/goodscats/edit', 'admin/goodscats/editiIsFloor,admin/goodscats/editiIsShow,admin/goodscats/editName,admin/goodscats/editOrder', '1', '1');
INSERT INTO `ox_privileges` VALUES ('78', '24', 'SPFL_03', '删除商品分类', '0', 'admin/goodscats/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('79', '25', 'PPGL_00', '查看品牌管理', '1', 'admin/brands/index', 'admin/brands/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('80', '25', 'PPGL_01', '新增品牌', '0', 'admin/brands/add', 'admin/brands/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('81', '25', 'PPGL_02', '编辑品牌', '0', 'admin/brands/edit', 'admin/brands/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('82', '25', 'PPGL_03', '删除品牌', '0', 'admin/brands/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('83', '34', 'PJGL_00', '查看评价管理', '1', 'admin/goodsappraises/index', 'admin/goodsappraises/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('84', '34', 'PJGL_02', '编辑评价', '0', 'admin/goodsappraises/edit', 'admin/goodsappraises/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('85', '34', 'PJGL_03', '删除评价', '0', 'admin/goodsappraises/del', null, '1', '1');
INSERT INTO `ox_privileges` VALUES ('86', '6', 'DLRZ_00', '查看登录日志', '1', 'admin/Logstafflogins/index', 'admin/Logstafflogins/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('87', '35', 'DDGL_00', '查看商城', '0', '#', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('88', '7', 'CZRZ_00', '查看操作日志', '1', 'admin/logoperates/index', 'admin/logoperates/pageQuery,admin/logoperates/toView', '1', '1');
INSERT INTO `ox_privileges` VALUES ('89', '42', 'GGWZ_00', '查看广告位置', '1', 'admin/adpositions/index', 'admin/adpositions/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('90', '42', 'GGWZ_01', '新增广告位置', '0', 'admin/adpositions/add', 'admin/adpositions/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('91', '42', 'GGWZ_02', '编辑广告位置', '0', 'admin/adpositions/edit', 'admin/adpositions/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('92', '42', 'GGWZ_03', '删除广告位置', '0', 'admin/adpositions/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('93', '31', 'WZGL_00', '查看文章管理', '1', 'admin/articles/index', 'admin/articles/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('94', '31', 'WZGL_01', '新增文章', '0', 'admin/articles/add', 'admin/articles/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('95', '31', 'WZGL_02', '编辑文章', '0', 'admin/articles/edit', 'admin/articles/toEdit,admin/articles/editiIsShow', '1', '1');
INSERT INTO `ox_privileges` VALUES ('96', '31', 'WZGL_03', '删除文章', '0', 'admin/articles/del', 'admin/articles/delByBatch', '1', '1');
INSERT INTO `ox_privileges` VALUES ('97', '30', 'WZFL_00', '查看文章分类', '1', 'admin/articlecats/index', 'admin/articlecats/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('98', '30', 'WZFL_01', '新增文章分类', '0', 'admin/articlecats/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('99', '30', 'WZFL_02', '编辑文章分类', '0', 'admin/articlecats/edit', 'admin/articlecats/editiIsShow,admin/articlecats/editName', '1', '1');
INSERT INTO `ox_privileges` VALUES ('100', '30', 'WZFL_03', '删除文章分类', '0', 'admin/articlecats/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('101', '43', 'QTCD_00', '前台菜单管理', '1', 'admin/homemenus/index', 'admin/homemenus/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('102', '21', 'ZHGL_00', '查看账号管理', '1', 'admin/users/accountindex', 'admin/users/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('103', '9', 'SCPZ_00', '查看商城配置', '1', 'admin/sysconfigs/index', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('104', '9', 'SCPZ_02', '编辑商城配置', '0', 'admin/sysconfigs/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('105', '44', 'RZGL_00', '查看认证', '1', 'admin/accreds/index', 'admin/accreds/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('106', '44', 'RZGL_01', '新增认证', '0', 'admin/accreds/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('107', '44', 'RZGL_02', '编辑认证', '0', 'admin/accreds/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('108', '44', 'RZGL_03', '删除认证', '0', 'admin/accreds/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('109', '1', '3434', '3434', '0', '', '', '-1', '1');
INSERT INTO `ox_privileges` VALUES ('110', '15', 'DQSZ_00', '查看地区管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('111', '8', 'SCSZ_00', '查看商城设置', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('112', '43', 'QTCD_01', '新增前台菜单', '0', 'admin/homemenus/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('113', '43', 'QTCD_02', '编辑前台菜单', '0', 'admin/homemenus/edit', 'admin/homemenus/setToggle', '1', '1');
INSERT INTO `ox_privileges` VALUES ('114', '43', 'QTCD_03', '删除前台菜单', '0', 'admin/homemenus/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('115', '18', 'HYSZ_00', '查看会员管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('116', '29', 'WZSZ_00', '查看文章管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('117', '21', 'ZHGL_02', '编辑账号信息', '0', 'admin/users/editAccount', 'admin/users/changeUserStatus', '1', '1');
INSERT INTO `ox_privileges` VALUES ('118', '39', 'DPSZ_00', '店铺管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('119', '38', 'PTRZ_00', '查看日志管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('120', '22', 'PTZY_00', '查看职员管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('121', '23', 'SPSZ_00', '查看商品管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('122', '45', 'DPSQ_00', '查看开店申请', '1', 'admin/shops/apply', 'admin/shops/pageQueryByApply', '1', '1');
INSERT INTO `ox_privileges` VALUES ('123', '45', 'DPSQ_03', '删除开店申请', '0', 'admin/shops/delApply', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('124', '45', 'DPSQ_04', '审核开店申请', '0', 'admin/shops/handleApply', 'admin/shops/toHandleApply', '1', '1');
INSERT INTO `ox_privileges` VALUES ('125', '46', 'DPGL_00', '查看店铺管理', '1', 'admin/shops/index', 'admin/shops/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('126', '46', 'DPGL_01', '新增店铺', '0', 'admin/shops/add', 'admin/shops/toAddByApply', '1', '1');
INSERT INTO `ox_privileges` VALUES ('127', '46', 'DPGL_02', '编辑店铺', '0', 'admin/shops/edit', 'admin/shops/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('128', '46', 'DPGL_03', '删除店铺', '0', 'admin/shops/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('129', '41', 'SCXX_00', '查看商城消息', '1', 'admin/messages/index', 'admin/messages/showFullMsg,admin/messages/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('130', '41', 'SCXX_01', '发送商城消息', '0', 'admin/messages/add', 'admin/messages/userQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('131', '41', 'SCXX_03', '删除商城消息', '0', 'admin/messages/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('132', '47', 'TYDP_00', '查看停用店铺', '1', 'admin/shops/stopIndex', 'admin/shops/pageStopQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('133', '47', 'TYDP_04', '启用店铺', '0', 'admin/shops/start', '', '-1', '1');
INSERT INTO `ox_privileges` VALUES ('134', '32', 'SPGG_00', '查看商品规格', '1', 'admin/speccats/index', 'admin/speccats/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('135', '32', 'SPGG_01', '新增商品规格', '0', 'admni/speccats/add', 'admni/speccats/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('136', '32', 'SPGG_02', '编辑商品规格', '0', 'admni/speccats/edit', 'admni/speccats/toEdit,admni/speccats/setToggle', '1', '1');
INSERT INTO `ox_privileges` VALUES ('137', '32', 'SPGG_03', '删除商品规格', '0', 'admni/speccats/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('138', '48', 'SPSX_00', '查看商品属性', '1', 'admin/attributes/index', 'admin/attributes/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('139', '50', 'DDLB_00', '查看订单', '1', 'admin/orders/index', 'admin/orders/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('140', '51', 'TSDD_00', '查看投诉订单', '1', 'admin/ordercomplains/index', 'admin/ordercomplains/view,admin/ordercomplains/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('141', '52', 'TKDD_00', '查看退款订单', '1', 'admin/orderrefunds/refund', 'admin/orderrefunds/refundPageQuery,admin/orders/view', '1', '1');
INSERT INTO `ox_privileges` VALUES ('142', '53', 'KDGL_00', '查看快递管理', '1', 'admin/express/index', 'admin/express/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('143', '53', 'KDGL_01', '新增快递', '0', 'admin/express/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('144', '53', 'KDGL_02', '编辑快递', '0', 'admin/express/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('145', '53', 'KDGL_03', '删除快递', '0', 'admin/express/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('146', '33', 'SJSP_00', '查看已上架商品', '1', 'admin/goods/index', 'admin/goods/saleByPage', '1', '1');
INSERT INTO `ox_privileges` VALUES ('147', '33', 'SJSP_04', '商品操作', '0', 'admin/goods/illegal', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('148', '33', 'SJSP_03', '删除商品', '0', 'admin/goods/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('149', '54', 'DSHSP_00', '查看待审核商品', '1', 'admin/goods/auditIndex', 'admin/goods/auditByPage', '1', '1');
INSERT INTO `ox_privileges` VALUES ('150', '54', 'DSHSP_04', '商品审核', '0', 'admin/goods/allow', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('151', '55', 'WGSP_00', '查看违规商品', '1', 'admin/goods/illegalIndex', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('152', '58', 'SPTJ_00', '查看商品推荐', '1', 'admin/recommends/goods', 'admin/recommends/editgoods', '1', '1');
INSERT INTO `ox_privileges` VALUES ('153', '59', 'DPTJ_00', '查看店铺推荐', '1', 'admin/recommends/shops', 'admin/recommends/editshops', '1', '1');
INSERT INTO `ox_privileges` VALUES ('154', '59', 'DPTJ_04', '推荐操作', '0', 'admin/recommends/editshops', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('155', '58', 'SPTJ_04', '推荐操作', '0', 'admin/recommends/editgoods', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('156', '60', 'PPTJ_00', '查看品牌推荐', '1', 'admin/recommends/brands', 'admin/recommends/editbrands', '1', '1');
INSERT INTO `ox_privileges` VALUES ('157', '60', 'PPTJ_04', '推荐操作', '0', 'admin/recommends/editbrands', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('158', '36', 'TPKJ_00', '查看图片空间', '1', 'admin/images/index', 'admin/images/summary,admin/images/lists,admin/images/pageQuery,admin/images/checkImages', '1', '1');
INSERT INTO `ox_privileges` VALUES ('159', '36', 'TPKJ_04', '图片管理', '0', 'admin/images/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('160', '56', 'YYGL_00', '查看运营', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('161', '57', 'TJGL_00', '查看推荐管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('162', '49', 'DDSZ_00', '查看订单管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('163', '51', 'TSDD_04', '处理订单投诉', '0', 'admin/orderComplains/toHandle', 'admin/orderComplains/finalHandle,admin/orderComplains/deliverRespond', '1', '1');
INSERT INTO `ox_privileges` VALUES ('164', '52', 'TKDD_04', '处理退款订单', '0', 'admin/orders/toRefund', 'admin/orders/orderRefund', '1', '1');
INSERT INTO `ox_privileges` VALUES ('165', '55', 'WGSP_04', '商品审核', '0', 'admin/goods/allow', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('166', '48', 'SPSX_01', '新增商品属性', '0', 'admin/attributes/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('167', '48', 'SPSX_02', '编辑商品属性', '0', 'admin/attributes/edit', 'admin/attributes/setToggle', '1', '1');
INSERT INTO `ox_privileges` VALUES ('168', '48', 'SPSX_03', '删除商品属性', '0', 'admin/attributes/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('169', '2', 'HHQL_04', '清理缓存', '0', 'admin/index/clearcache', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('170', '54', 'DSHSP_03', '删除商品', '0', 'admin/goods/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('171', '55', 'WGSP_03', '删除商品', '0', 'admin/goods/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('172', '2', 'ZYDP_00', '登录自营店铺', '0', 'admin/shops/inself', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('173', '61', 'FGGL_00', '查看风格管理', '1', 'admin/styles/index', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('174', '61', 'FGGL_04', '风格管理', '0', 'admin/styles/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('175', '62', 'CWGL_00', '查看财务管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('176', '63', 'TXSQ_00', '查看提现申请', '1', 'admin/cashdraws/index', 'admin/cashdraws/pageQuery,admin/cashdraws/toView', '1', '1');
INSERT INTO `ox_privileges` VALUES ('177', '63', 'TXSQ_04', '处理提现申请', '0', 'admin/cashdraws/handle', 'admin/cashdraws/toHandle', '1', '1');
INSERT INTO `ox_privileges` VALUES ('178', '64', 'JSSQ_00', '查看结算申请', '1', 'admin/settlements/index', 'admin/settlements/pageQuery,admin/settlements/toView,admin/settlements/pageGoodsQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('179', '64', 'JSSQ_04', '处理结算申请', '0', 'admin/settlements/handle', 'admin/settlements/toHandle', '1', '1');
INSERT INTO `ox_privileges` VALUES ('180', '65', 'SJJS_00', '查看商家结算', '1', 'admin/settlements/toShopIndex', 'admin/settlements/pageShopQuery,admin/settlements/pageShopOrderQuery,admin/settlements/toOrders', '1', '1');
INSERT INTO `ox_privileges` VALUES ('181', '65', 'SJJS_04', '生成结算单', '0', 'admin/settlements/generateSettleByShop', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('190', '71', 'TJBB_00', '查看统计报表', '1', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('191', '72', 'REPORTS_01', '查看销售排行', '1', 'admin/reports/toTopSaleGoods', 'admin/reports/topSaleGoodsByPage', '1', '1');
INSERT INTO `ox_privileges` VALUES ('192', '74', 'REPORTS_03', '查看销售统计', '1', 'admin/reports/toStatSales', 'admin/reports/statSales', '1', '1');
INSERT INTO `ox_privileges` VALUES ('193', '73', 'REPORTS_05', '查看会员统计', '1', 'admin/reports/toStatNewUser', 'admin/reports/statNewUser', '1', '1');
INSERT INTO `ox_privileges` VALUES ('194', '75', 'REPORTS_06', '查看登录统计', '1', 'admin/reports/toStatUserLogin', 'admin/reports/statUserLogin', '1', '1');
INSERT INTO `ox_privileges` VALUES ('195', '77', 'REPORTS_02', '店铺销售统计', '1', 'admin/reports/toTopShopSales', 'admin/reports/topShopSalesByPage', '1', '1');
INSERT INTO `ox_privileges` VALUES ('196', '78', 'REPORTS_07', '查看客户端登录统计', '0', 'admin/reports/toStatLoginSrc', 'admin/reports/statLoginSrc', '1', '1');
INSERT INTO `ox_privileges` VALUES ('197', '76', 'REPORTS_04', '查看销售订单统计', '1', 'admin/reports/toStatOrders', 'admin/reports/statOrders', '1', '1');
INSERT INTO `ox_privileges` VALUES ('209', '82', 'KZGL_00', '查看扩展管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('210', '81', 'KZXX_00', '查看扩展', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('211', '83', 'CJGL_00', '查看插件', '1', 'admin/addons/index', 'admin/addons/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('212', '83', 'CJGL_01', '设置插件', '0', 'admin/addons/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('213', '83', 'CJGL_02', '安装插件', '0', 'admin/addons/install', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('214', '83', 'CJGL_03', '卸载插件', '0', 'admin/addons/uninstall', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('215', '83', 'CJGL_04', '启用插件', '0', 'admin/addons/enable', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('216', '83', 'CJGL_05', '禁用插件', '0', 'admin/addons/disable', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('217', '84', 'GZGL_00', '查看钩子', '1', 'admin/hooks/index', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('218', '85', 'ZJGL_00', '查看资金管理', '1', 'admin/logmoneys/index', 'admin/logmoneys/pageQuery,admin/logmoneys/pageQueryByUser,admin/logmoneys/pageQueryByShop,admin/logmoneys/tologmoneys,admin/logmoneys/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('219', '86', 'XXMB_00', '查看消息模板', '1', 'admin/templatemsgs/index', 'admin/templatemsgs/pageMsgQuery,admin/templatemsgs/pageEmailQuery,admin/templatemsgs/pageSMSQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('221', '86', 'XXMB_02', '编辑消息模板', '0', 'admin/templatemsgs/edit', 'admin/templatemsgs/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('229', '93', 'CXGL_00', '查看促销管理', '0', '', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('230', '168', 'SPZX_00', '查看商品咨询', '1', 'admin/goodsconsult/index', 'admin/goodsconsult/pagequery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('231', '168', 'SPZX_02', '编辑商品咨询', '0', 'admin/goodsconsult/edit', 'admin/goodsconsult/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('232', '168', 'SPZX_03', '商品商品咨询', '0', 'admin/goodsconsult/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('233', '169', 'SJGL_00', '查看系统数据管理', '1', 'admin/datas/index', 'admin/datacats/listquery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('234', '169', 'SJFL_01', '新增系统数据分类', '0', 'admin/datacats/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('235', '169', 'SJFL_02', '修改系统数据分类', '0', 'admin/datacats/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('236', '169', 'SJFL_03', '删除系统数据分类', '0', 'admin/datacats/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('237', '169', 'SJGL_01', '新增系统数据', '0', 'admin/datas/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('238', '169', 'SJGL_02', '修改系统数据', '0', 'admin/datas/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('239', '169', 'SJGL_03', '删除系统数据', '0', 'admin/datas/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('255', '170', 'ANGL_00', '移动端按钮列表', '1', 'admin/mobilebtns/index', 'admin/mobilebtns/pagequery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('256', '170', 'ANGL_01', '移动端按钮新增', '0', 'admin/mobileBtns/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('257', '170', 'ANGL_02', '移动端按钮修改', '0', 'admin/mobileBtns/edit', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('258', '170', 'ANGL_03', '移动端按钮删除', '0', 'admin/mobileBtns/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('259', '172', 'CZGL_00', '查看充值管理', '1', 'admin/chargeitems/index', 'admin/chargeitems/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('260', '172', 'CZGL_01', '新增充值项', '0', 'admin/chargeitems/add', 'admin/chargeitems/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('261', '172', 'CZGL_02', '修改充值项', '0', 'admin/chargeitems/edit', 'admin/chargeitems/toEdit', '1', '1');
INSERT INTO `ox_privileges` VALUES ('262', '172', 'CZGL_03', '删除充值项', '0', 'admin/chargeitems/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('263', '185', 'DXRZ_00', '查看短信日志', '1', 'admin/Logsms/index', 'admin/LogSms/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('264', '188', 'JBSP_00', '举报商品管理', '1', 'admin/Informs/index', 'admin/Informs/pageQuery,admin/Informs/detail', '1', '1');
INSERT INTO `ox_privileges` VALUES ('265', '195', 'YMQH_00', '查看页面转换', '1', 'admin/switchs/index', 'admin/switchs/pageQuery', '1', '1');
INSERT INTO `ox_privileges` VALUES ('266', '195', 'YMQH_01', '新增页面转换', '0', 'admin/switchs/add', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('267', '195', 'YMQH_02', '编辑页面转换', '0', 'admin/switchs/edit', 'admin/switchs/editUrl', '1', '1');
INSERT INTO `ox_privileges` VALUES ('268', '195', 'YMQH_03', '删除页面转换', '0', 'admin/switchs/del', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('269', '220', 'DPFGGL_00', '店铺风格管理', '1', 'admin/shopstyles/index', '', '1', '1');
INSERT INTO `ox_privileges` VALUES ('270', '50', 'DDLB_01', '修改订单', '0', 'admin/orders/payType', '', '1', '1');

-- ----------------------------
-- Table structure for ox_recommends
-- ----------------------------
DROP TABLE IF EXISTS `ox_recommends`;
CREATE TABLE `ox_recommends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsCatId` int(11) NOT NULL DEFAULT '0',
  `dataType` tinyint(4) NOT NULL DEFAULT '0',
  `dataSrc` tinyint(4) DEFAULT '0',
  `dataId` int(11) NOT NULL DEFAULT '0',
  `dataSort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goodsCatId` (`goodsCatId`,`dataType`,`dataSrc`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_recommends
-- ----------------------------
INSERT INTO `ox_recommends` VALUES ('1', '0', '0', '0', '48', '0');
INSERT INTO `ox_recommends` VALUES ('2', '0', '0', '0', '49', '0');
INSERT INTO `ox_recommends` VALUES ('3', '0', '0', '0', '50', '0');
INSERT INTO `ox_recommends` VALUES ('4', '0', '0', '0', '55', '0');
INSERT INTO `ox_recommends` VALUES ('5', '0', '0', '0', '56', '0');
INSERT INTO `ox_recommends` VALUES ('8', '0', '1', '0', '24', '0');
INSERT INTO `ox_recommends` VALUES ('9', '0', '1', '0', '28', '0');
INSERT INTO `ox_recommends` VALUES ('12', '0', '3', '0', '46', '0');
INSERT INTO `ox_recommends` VALUES ('13', '0', '3', '0', '47', '0');

-- ----------------------------
-- Table structure for ox_roles
-- ----------------------------
DROP TABLE IF EXISTS `ox_roles`;
CREATE TABLE `ox_roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) NOT NULL,
  `roleDesc` varchar(255) DEFAULT NULL,
  `privileges` text,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`roleId`),
  KEY `roleFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_roles
-- ----------------------------
INSERT INTO `ox_roles` VALUES ('1', '商品管理员', null, 'spfl_00,spfl_01,spfl_02,spfl_03,ppgl_00,ppgl_01,ppgl_02,ppgl_03,splb_00,splb_04,splb_03,spsh_00,spsh_04,spsh_03,sppl_00,sppl_04,sppl_03', '1', '2014-11-02 12:07:12');
INSERT INTO `ox_roles` VALUES ('2', '门店管理员', null, 'dplb_00,dplb_01,dplb_02,dplb_03,dpsh_00,dpsh_04,dpsh_03', '1', '2014-11-02 12:09:05');
INSERT INTO `ox_roles` VALUES ('3', '系统管理员', '', 'SY_001,HHQL,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,QTCD_00,QTCD_01,QTCD_02,QTCD_03,JSGL_00,JSGL_01,JSGL_02,JSGL_03,ZYGL_00,ZYGL_01,ZYGL_02,ZYGL_03,DLRZ_00,CZRZ_00,TPKJ_00,TPKJ_04,SCXX_00,SCXX_01,SCXX_03,SCSZ_00,SCPZ_00,SCPZ_02,DHGL_00,DHGL_01,DHGL_02,DHGL_03,GGGL_00,GGGL_01,GGGL_02,GGGL_03,GGWZ_00,GGWZ_01,GGWZ_02,GGWZ_03,YHGL_00,YHGL_01,YHGL_02,YHGL_03,ZFGL_00,ZFGL_02,ZFGL_03,DQGL_00,DQGL_01,DQGL_02,DQGL_03,YQGL_00,YQGL_01,YQGL_02,YQGL_03,KDGL_00,KDGL_01,KDGL_02,KDGL_03,HYSZ_00,HYDJ_00,HYDJ_01,HYDJ_02,HYDJ_03,HYGL_00,HYGL_01,HYGL_02,HYGL_03,ZHGL_00,ZHGL_02,WZSZ_00,WZGL_00,WZGL_01,WZGL_02,WZGL_03,WZFL_00,WZFL_01,WZFL_02,WZFL_03,SPTJ_00,SPTJ_04,DPTJ_00,DPTJ_04,PPTJ_00,PPTJ_04,DDGL_00,DDLB_00,TSDD_00,TKDD_00,DPXX_00,DPSZ_00,RZGL_00,RZGL_01,RZGL_02,RZGL_03,DPSQ_00,DPSQ_03,DPSQ_04,DPGL_00,DPGL_01,DPGL_02,DPGL_03,TYDP_00,SPXX_00,SPSZ_00,SJSP_00,SJSP_04,SJSP_03,DSHSP_00,DSHSP_04,WGSP_00,SPFL_00,SPFL_01,SPFL_02,SPFL_03,SPSX_00,PPGL_00,PPGL_01,PPGL_02,PPGL_03,SPGG_00,SPGG_01,SPGG_02,SPGG_03,PJGL_00,PJGL_02,PJGL_03', '1', '2014-11-02 12:09:09');
INSERT INTO `ox_roles` VALUES ('4', '客服', null, 'sppl_00,sppl_04,sppl_03', '-1', '2014-12-20 00:08:53');
INSERT INTO `ox_roles` VALUES ('5', '测试管理员', 'test', 'SY_001,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,23', '-1', '2016-01-02 01:00:00');

-- ----------------------------
-- Table structure for ox_settlements
-- ----------------------------
DROP TABLE IF EXISTS `ox_settlements`;
CREATE TABLE `ox_settlements` (
  `settlementId` int(11) NOT NULL AUTO_INCREMENT,
  `settlementNo` varchar(20) NOT NULL,
  `settlementType` tinyint(4) NOT NULL DEFAULT '0',
  `shopId` int(11) NOT NULL,
  `settlementMoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `commissionFee` decimal(11,2) NOT NULL DEFAULT '0.00',
  `backMoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `settlementStatus` tinyint(4) NOT NULL DEFAULT '0',
  `settlementTime` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`settlementId`),
  KEY `shopId` (`shopId`),
  KEY `settlementStatus` (`settlementStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_settlements
-- ----------------------------

-- ----------------------------
-- Table structure for ox_shops
-- ----------------------------
DROP TABLE IF EXISTS `ox_shops`;
CREATE TABLE `ox_shops` (
  `shopId` int(11) NOT NULL AUTO_INCREMENT,
  `shopSn` varchar(20) DEFAULT '',
  `userId` int(11) NOT NULL,
  `areaIdPath` varchar(255) DEFAULT '',
  `areaId` int(11) DEFAULT '0',
  `isSelf` tinyint(4) NOT NULL DEFAULT '0',
  `shopName` varchar(100) DEFAULT '',
  `shopkeeper` varchar(50) DEFAULT '',
  `telephone` varchar(20) DEFAULT '',
  `shopCompany` varchar(255) DEFAULT '',
  `shopImg` varchar(150) DEFAULT '',
  `shopTel` varchar(40) DEFAULT '',
  `shopQQ` varchar(50) DEFAULT NULL,
  `shopWangWang` varchar(50) DEFAULT NULL,
  `shopAddress` varchar(255) DEFAULT '',
  `bankId` int(11) DEFAULT '0',
  `bankNo` varchar(20) DEFAULT '',
  `bankUserName` varchar(50) DEFAULT '',
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0',
  `invoiceRemarks` varchar(255) DEFAULT NULL,
  `serviceStartTime` time NOT NULL DEFAULT '08:30:00',
  `serviceEndTime` time NOT NULL DEFAULT '22:30:00',
  `freight` int(11) DEFAULT '0',
  `shopAtive` tinyint(4) NOT NULL DEFAULT '1',
  `shopStatus` tinyint(4) NOT NULL DEFAULT '1',
  `statusDesc` varchar(255) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` date DEFAULT NULL,
  `shopMoney` decimal(11,2) DEFAULT '0.00',
  `lockMoney` decimal(11,2) DEFAULT '0.00',
  `noSettledOrderNum` int(11) DEFAULT '0',
  `noSettledOrderFee` decimal(11,2) DEFAULT '0.00',
  `paymentMoney` decimal(11,2) DEFAULT '0.00',
  `bankAreaId` int(11) DEFAULT '0',
  `bankAreaIdPath` varchar(100) DEFAULT NULL,
  `applyStatus` tinyint(4) DEFAULT '0',
  `applyDesc` varchar(255) DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `applyStep` tinyint(4) DEFAULT '1',
  `shopNotice` varchar(300) DEFAULT NULL COMMENT '店铺公告',
  `rechargeMoney` decimal(11,2) DEFAULT '0.00' COMMENT '充值金额',
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `mapLevel` int(11) DEFAULT '16',
  PRIMARY KEY (`shopId`),
  KEY `shopStatus` (`shopStatus`,`dataFlag`) USING BTREE,
  KEY `areaIdPath` (`areaIdPath`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shops
-- ----------------------------
INSERT INTO `ox_shops` VALUES ('1', 'S000000001', '1', '6_76_698_', '698', '1', 'WSTMart自营超市', 'wstmart', '13888888888', 'WSTMart自营超市', 'upload/shops/2019-02/5c6fd1074ce70.png', '13888888888', '153289970', '', '燕岭路89号燕侨大厦', '24', '2343243124312412', '是暗室逢灯', '0', '', '08:30:00', '22:30:00', '5', '1', '1', '', '1', '2016-10-08', '0.00', '0.00', '0', '0.00', '0.00', '698', '6_76_698_', '2', null, '2016-10-08 00:00:00', '1', null, '0.00', '0.0000000', '0.0000000', '15');
INSERT INTO `ox_shops` VALUES ('2', 'S000000002', '2', '6_76_693_', '693', '0', '新鲜鲜果旗舰店', '新鲜鲜果', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fc2798c5ac.jpg', '020-85289921', '153289970', '', '广东省广州市天河区岳洲路9号', '17', '88888888888888888888', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('3', 'huawei', '3', '6_76_693_', '693', '0', '华为荣耀旗舰店', '华为', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fc5d92df80.png', '020-85289921', '153289970', '', '广东省广州市天河区中山大道西301号', '17', '66666666666666666666', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('4', 'S000000003', '4', '6_76_693_', '693', '0', '小米旗舰店', '小米', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fc531dd9c8.jpg', '15918671994', '153289970', '', '广东省广州市番禺区番禺大道北', '17', '66666666666666666666', '广州商淘信息科技有限公', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('5', 'S000000004', '5', '6_76_693_', '693', '0', '苹果手机旗舰店', '苹果', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fc6b7cf47f.png', '020-85289921', '153289970', '', '广东省广州市天河区珠江新城', '17', '88888888888888888888', '广州商淘信息科技有限公', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('6', 'S000000005', '6', '6_76_696_', '696', '0', 'OPPO自营店', 'oppo', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fc7f049f2f.png', '020-85289921', '153289970', '', '广东省广州市海珠区江南西', '17', '62284820081129032334', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('7', 'S000000006', '7', '6_76_698_', '698', '0', '三只松鼠零食', '三只松鼠', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fcbaf19537.jpg', '020-85289921', '153289970', '', '广东省广州市越秀区', '17', '88888888888888888888', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '698', '6_76_698_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('8', 'S000000007', '8', '6_76_701_', '701', '0', '良子铺美食', '良品铺', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fcdcf02675.png', '020-85289921', '153289970', '', '广东省广州市花都区新华镇', '17', '62284820081900233389', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('9', 'S000000008', '9', '6_76_693_', '693', '0', '乐居日用品', '乐居', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fcf18365d3.png', '020-85289921', '153289970', '', '广州市天河区五山路', '17', '62284820089910922322', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '693', '6_76_693_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('10', 'S000000009', '10', '6_76_699_', '699', '0', '同仁堂大健康', '同仁堂', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fd0793b4b2.png', '020-85289921', '153289970', '', '广东省广州市黄埔区珠吉路139号', '17', '62284820080931955538', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '699', '6_76_699_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('11', 'S000000010', '11', '6_76_695_', '695', '0', '家美佳连锁', '家美佳', '15918671994', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fd345356c2.png', '020-85289921', '153289970', '', '广州市天河区白云区白云大道南', '17', '62238820085984663389', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', null, '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '699', '6_76_699_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');
INSERT INTO `ox_shops` VALUES ('12', 'S000000011', '12', '6_76_693_', '693', '0', '花果山', '花果山', '13800138000', '广州商淘信息科技有限公司', 'upload/shops/2019-02/5c6fda722b6de.png', '020-85289921', '153289970', '', '广东省广州市天河区', '17', '62232388596688515997', '广州商淘信息科技有限公司', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2019-02-22', '0.00', '0.00', '0', '0.00', '0.00', '699', '6_76_699_', '2', null, null, '1', null, '0.00', '0.0000000', '0.0000000', '0');

-- ----------------------------
-- Table structure for ox_shop_accreds
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_accreds`;
CREATE TABLE `ox_shop_accreds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accredId` int(11) NOT NULL DEFAULT '0',
  `shopId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_accreds
-- ----------------------------
INSERT INTO `ox_shop_accreds` VALUES ('8', '1', '3');
INSERT INTO `ox_shop_accreds` VALUES ('9', '2', '3');
INSERT INTO `ox_shop_accreds` VALUES ('10', '1', '1');
INSERT INTO `ox_shop_accreds` VALUES ('11', '2', '1');
INSERT INTO `ox_shop_accreds` VALUES ('12', '1', '2');
INSERT INTO `ox_shop_accreds` VALUES ('13', '2', '2');
INSERT INTO `ox_shop_accreds` VALUES ('14', '1', '4');
INSERT INTO `ox_shop_accreds` VALUES ('15', '2', '4');
INSERT INTO `ox_shop_accreds` VALUES ('16', '1', '5');
INSERT INTO `ox_shop_accreds` VALUES ('17', '2', '5');
INSERT INTO `ox_shop_accreds` VALUES ('18', '1', '6');
INSERT INTO `ox_shop_accreds` VALUES ('19', '2', '6');
INSERT INTO `ox_shop_accreds` VALUES ('20', '1', '7');
INSERT INTO `ox_shop_accreds` VALUES ('21', '2', '7');
INSERT INTO `ox_shop_accreds` VALUES ('22', '1', '8');
INSERT INTO `ox_shop_accreds` VALUES ('23', '2', '8');
INSERT INTO `ox_shop_accreds` VALUES ('24', '1', '9');
INSERT INTO `ox_shop_accreds` VALUES ('27', '1', '11');
INSERT INTO `ox_shop_accreds` VALUES ('28', '2', '11');
INSERT INTO `ox_shop_accreds` VALUES ('29', '1', '10');
INSERT INTO `ox_shop_accreds` VALUES ('30', '2', '10');
INSERT INTO `ox_shop_accreds` VALUES ('31', '1', '12');
INSERT INTO `ox_shop_accreds` VALUES ('32', '2', '12');

-- ----------------------------
-- Table structure for ox_shop_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_cats`;
CREATE TABLE `ox_shop_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `catName` varchar(100) NOT NULL,
  `catSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`catId`),
  KEY `parentId` (`isShow`,`dataFlag`) USING BTREE,
  KEY `shopId` (`shopId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_cats
-- ----------------------------
INSERT INTO `ox_shop_cats` VALUES ('1', '1', '0', '1', '生鲜品类', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('2', '1', '1', '1', '新鲜水果', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('3', '1', '1', '1', '禽类蛋品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('4', '1', '1', '1', '饮品甜品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('5', '1', '1', '1', '新鲜蔬菜', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('6', '1', '1', '1', '海鲜水产', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('7', '1', '1', '1', '猪牛羊肉', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('8', '1', '1', '1', '冷冻速食', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('9', '1', '0', '1', '食品饮料', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('10', '1', '9', '1', '坚果零食', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('11', '1', '9', '1', '糖果饼干', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('12', '1', '9', '1', '水饮茶冲', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('13', '1', '9', '1', '牛奶饮品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('14', '1', '0', '1', '个人护理', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('15', '1', '14', '1', '洗发护发', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('16', '1', '14', '1', '卫生护理', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('17', '1', '14', '1', '身体护理', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('18', '1', '14', '1', '口腔护理', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('19', '1', '14', '1', '洗护沐浴', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('20', '1', '0', '1', '清洁用品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('21', '1', '20', '1', '家庭清洁', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('22', '1', '20', '1', '衣物清洁', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('23', '1', '20', '1', '皮具护理', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('24', '1', '20', '1', '一次性用品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('25', '1', '0', '1', '母婴用品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('26', '1', '25', '1', '营养辅食', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('27', '1', '25', '1', '尿裤湿巾', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('28', '1', '25', '1', '喂养用品', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('29', '1', '25', '1', '儿童乐器', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('30', '1', '25', '1', '儿童玩具', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('31', '1', '0', '1', '手机电器', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('32', '1', '31', '1', '华为', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('33', '1', '31', '1', 'vivo', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('34', '1', '31', '1', '小米', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('35', '1', '31', '1', '一佳', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('36', '1', '0', '1', '中外名酒', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('37', '1', '36', '1', '茅台', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('38', '1', '36', '1', '五粮液', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('39', '1', '36', '1', '路易拉菲', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('40', '1', '36', '1', '蒙特斯', '0', '1', '2019-02-22 18:55:54');
INSERT INTO `ox_shop_cats` VALUES ('41', '12', '0', '1', '水果', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('42', '12', '41', '1', '橙子', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('43', '12', '41', '1', '猕猴桃', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('44', '12', '41', '1', '梨', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('45', '12', '0', '1', '农特产', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('46', '12', '45', '1', '马蹄', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('47', '12', '45', '1', '芋头', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('48', '12', '45', '1', '食用菌', '0', '1', '2019-02-22 20:02:26');
INSERT INTO `ox_shop_cats` VALUES ('49', '12', '45', '1', '其他', '0', '1', '2019-02-22 22:42:05');
INSERT INTO `ox_shop_cats` VALUES ('50', '12', '41', '1', '苹果', '0', '1', '2019-02-22 23:02:51');
INSERT INTO `ox_shop_cats` VALUES ('51', '2', '0', '1', '进口佳品', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('52', '2', '51', '1', '芒果', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('53', '2', '51', '1', '牛油果', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('54', '2', '0', '1', '国内佳品', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('55', '2', '54', '1', '砂糖橘', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('56', '2', '54', '1', '苹果', '0', '1', '2019-02-22 23:25:55');
INSERT INTO `ox_shop_cats` VALUES ('57', '7', '0', '1', '蜜饯果干', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('58', '7', '57', '1', '蜜饯', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('59', '7', '57', '1', '干果', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('60', '7', '0', '1', '坚果炒货', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('61', '7', '60', '1', '松子', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('62', '7', '60', '1', '瓜子', '0', '1', '2019-02-22 23:43:34');
INSERT INTO `ox_shop_cats` VALUES ('63', '10', '0', '1', '养生茶饮', '0', '1', '2019-02-23 00:18:25');
INSERT INTO `ox_shop_cats` VALUES ('64', '10', '63', '1', '其他', '0', '1', '2019-02-23 00:18:25');
INSERT INTO `ox_shop_cats` VALUES ('65', '10', '63', '1', '花茶', '0', '1', '2019-02-23 00:18:25');
INSERT INTO `ox_shop_cats` VALUES ('66', '3', '0', '1', '手机', '0', '1', '2019-02-23 10:30:10');
INSERT INTO `ox_shop_cats` VALUES ('67', '3', '66', '1', '华为', '0', '1', '2019-02-23 10:30:10');
INSERT INTO `ox_shop_cats` VALUES ('68', '3', '66', '1', '荣耀', '0', '1', '2019-02-23 10:30:10');
INSERT INTO `ox_shop_cats` VALUES ('69', '3', '66', '1', '畅玩', '0', '1', '2019-02-23 10:30:10');
INSERT INTO `ox_shop_cats` VALUES ('70', '5', '0', '1', 'iPhone', '0', '1', '2019-02-23 11:08:13');
INSERT INTO `ox_shop_cats` VALUES ('71', '5', '70', '1', 'iPhone8', '2', '1', '2019-02-23 11:08:13');
INSERT INTO `ox_shop_cats` VALUES ('72', '5', '0', '1', 'iPpd', '0', '1', '2019-02-23 11:08:13');
INSERT INTO `ox_shop_cats` VALUES ('73', '5', '72', '1', 'iPad', '0', '1', '2019-02-23 11:08:20');
INSERT INTO `ox_shop_cats` VALUES ('74', '5', '70', '1', 'iPhone7', '3', '1', '2019-02-23 11:13:25');
INSERT INTO `ox_shop_cats` VALUES ('75', '5', '70', '1', 'iPhoneXS', '1', '1', '2019-02-23 11:18:13');
INSERT INTO `ox_shop_cats` VALUES ('76', '11', '0', '1', '粮油调料', '0', '1', '2019-02-23 11:29:11');
INSERT INTO `ox_shop_cats` VALUES ('77', '11', '76', '1', '米', '0', '1', '2019-02-23 11:29:11');
INSERT INTO `ox_shop_cats` VALUES ('78', '11', '76', '1', '杂粮', '0', '1', '2019-02-23 11:29:11');
INSERT INTO `ox_shop_cats` VALUES ('79', '11', '76', '1', '调料', '0', '1', '2019-02-23 11:47:01');

-- ----------------------------
-- Table structure for ox_shop_configs
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_configs`;
CREATE TABLE `ox_shop_configs` (
  `configId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `shopTitle` varchar(255) DEFAULT NULL,
  `shopKeywords` varchar(255) DEFAULT NULL,
  `shopDesc` varchar(255) DEFAULT NULL,
  `shopBanner` varchar(150) DEFAULT NULL,
  `shopAds` text,
  `shopAdsUrl` text,
  `shopServicer` varchar(100) DEFAULT NULL,
  `shopHotWords` varchar(255) DEFAULT NULL,
  `shopStreetImg` varchar(150) DEFAULT '' COMMENT '店铺街背景',
  `shopMoveBanner` varchar(150) DEFAULT NULL,
  `shopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '店铺风格',
  `mobileShopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '手机端店铺风格',
  `wechatShopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '微信端店铺风格',
  PRIMARY KEY (`configId`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_configs
-- ----------------------------
INSERT INTO `ox_shop_configs` VALUES ('1', '1', '', 'WSTMart官方自营', '', '', '', '', '', 'wstmart自营,维达纸巾,美食', '', '', 'shop_floor', 'shop_floor', 'shop_floor');
INSERT INTO `ox_shop_configs` VALUES ('2', '2', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('3', '3', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('4', '4', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('5', '5', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('6', '6', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('7', '7', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('8', '8', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('9', '9', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('10', '10', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('11', '11', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');
INSERT INTO `ox_shop_configs` VALUES ('12', '12', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home');

-- ----------------------------
-- Table structure for ox_shop_extras
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_extras`;
CREATE TABLE `ox_shop_extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `businessLicenceType` tinyint(4) DEFAULT '0',
  `businessLicence` varchar(100) DEFAULT NULL,
  `licenseAddress` varchar(500) DEFAULT NULL,
  `businessAreaPath` varchar(100) DEFAULT NULL,
  `legalPersonName` varchar(100) DEFAULT NULL,
  `establishmentDate` date DEFAULT NULL,
  `businessStartDate` date DEFAULT NULL,
  `businessEndDate` date DEFAULT NULL,
  `isLongbusinessDate` tinyint(4) DEFAULT '0',
  `registeredCapital` decimal(11,0) DEFAULT '0',
  `empiricalRange` varchar(1000) DEFAULT NULL,
  `legalCertificateType` tinyint(4) DEFAULT '0',
  `legalCertificate` varchar(50) DEFAULT NULL,
  `legalCertificateStartDate` date DEFAULT NULL,
  `legalCertificateEndDate` date DEFAULT NULL,
  `isLonglegalCertificateDate` tinyint(4) DEFAULT '0',
  `legalCertificateImg` varchar(150) DEFAULT NULL,
  `businessLicenceImg` varchar(150) DEFAULT NULL,
  `bankAccountPermitImg` varchar(150) DEFAULT NULL,
  `organizationCode` varchar(100) DEFAULT NULL,
  `organizationCodeStartDate` date DEFAULT NULL,
  `organizationCodeEndDate` date DEFAULT NULL,
  `isLongOrganizationCodeDate` tinyint(4) DEFAULT '0',
  `organizationCodeImg` varchar(150) DEFAULT NULL,
  `taxRegistrationCertificateImg` varchar(450) DEFAULT NULL,
  `taxpayerQualificationImg` varchar(150) DEFAULT NULL,
  `taxpayerType` tinyint(4) DEFAULT '0',
  `taxpayerNo` varchar(100) DEFAULT NULL,
  `applyLinkMan` varchar(50) DEFAULT NULL,
  `applyLinkTel` varchar(50) DEFAULT NULL,
  `applyLinkEmail` varchar(50) DEFAULT NULL,
  `isInvestment` tinyint(4) NOT NULL DEFAULT '0',
  `investmentStaff` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_extras
-- ----------------------------
INSERT INTO `ox_shop_extras` VALUES ('1', '1', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('2', '2', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('3', '3', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('4', '4', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('5', '5', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('6', '6', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('7', '7', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('8', '8', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('9', '9', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('10', '10', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('11', '11', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');
INSERT INTO `ox_shop_extras` VALUES ('12', '12', '0', '', '', '_', '', null, null, null, '0', '0', '', '0', '', null, null, '0', '', '', '', '', null, null, '0', '', '', '', '0', '', '', '', '', '0', '');

-- ----------------------------
-- Table structure for ox_shop_freights
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_freights`;
CREATE TABLE `ox_shop_freights` (
  `freightId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `areaId2` int(11) NOT NULL,
  `freight` int(11) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`freightId`),
  KEY `shopId` (`shopId`,`areaId2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_freights
-- ----------------------------

-- ----------------------------
-- Table structure for ox_shop_message_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_message_cats`;
CREATE TABLE `ox_shop_message_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgDataId` int(11) DEFAULT '0',
  `msgType` tinyint(4) DEFAULT '0',
  `msgCode` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_message_cats
-- ----------------------------
INSERT INTO `ox_shop_message_cats` VALUES ('1', '1', '1', 'GOODS_ALLOW');
INSERT INTO `ox_shop_message_cats` VALUES ('2', '1', '1', 'GOODS_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('3', '1', '1', 'AUCTION_GOODS_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('4', '1', '1', 'AUCTION_GOODS_ALLOW');
INSERT INTO `ox_shop_message_cats` VALUES ('5', '2', '1', 'AUCTION_SHOP_RESULT');
INSERT INTO `ox_shop_message_cats` VALUES ('6', '1', '1', 'BARGAIN_GOODS_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('7', '1', '1', 'BARGAIN_GOODS_ALLOW');
INSERT INTO `ox_shop_message_cats` VALUES ('8', '1', '1', 'GROUPON_GOODS_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('9', '1', '1', 'GROUPON_GOODS_ALLOW');
INSERT INTO `ox_shop_message_cats` VALUES ('10', '1', '1', 'PINTUAN_GOODS_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('11', '1', '1', 'PINTUAN_GOODS_ALLOW');
INSERT INTO `ox_shop_message_cats` VALUES ('12', '2', '1', 'ORDER_SUBMIT');
INSERT INTO `ox_shop_message_cats` VALUES ('13', '2', '1', 'ORDER_REMINDER');
INSERT INTO `ox_shop_message_cats` VALUES ('14', '2', '1', 'ORDER_HASPAY');
INSERT INTO `ox_shop_message_cats` VALUES ('15', '2', '1', 'ORDER_SHOP_AUTO_DELIVERY');
INSERT INTO `ox_shop_message_cats` VALUES ('16', '4', '1', 'ORDER_SHOP_PAY_TIMEOUT');
INSERT INTO `ox_shop_message_cats` VALUES ('17', '3', '1', 'ORDER_NEW_COMPLAIN');
INSERT INTO `ox_shop_message_cats` VALUES ('18', '3', '1', 'ORDER_HANDLED_COMPLAIN');
INSERT INTO `ox_shop_message_cats` VALUES ('19', '5', '1', 'ORDER_SHOP_REFUND');
INSERT INTO `ox_shop_message_cats` VALUES ('20', '5', '1', 'ORDER_REFUND_CONFER');
INSERT INTO `ox_shop_message_cats` VALUES ('21', '5', '1', 'ORDER_REJECT');
INSERT INTO `ox_shop_message_cats` VALUES ('22', '5', '1', 'ORDER_CANCEL');
INSERT INTO `ox_shop_message_cats` VALUES ('23', '6', '1', 'SHOP_SETTLEMENT');
INSERT INTO `ox_shop_message_cats` VALUES ('24', '7', '1', 'ORDER_APPRAISES');
INSERT INTO `ox_shop_message_cats` VALUES ('25', '8', '1', 'ORDER_RECEIVE');
INSERT INTO `ox_shop_message_cats` VALUES ('26', '8', '1', 'ORDER_ATUO_RECEIVE');
INSERT INTO `ox_shop_message_cats` VALUES ('27', '9', '1', 'SHOP_GOODS_INFORM');

-- ----------------------------
-- Table structure for ox_shop_roles
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_roles`;
CREATE TABLE `ox_shop_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) DEFAULT '0',
  `roleName` varchar(100) DEFAULT NULL,
  `privilegeMsgs` text,
  `privilegeUrls` text,
  `createTime` datetime DEFAULT NULL,
  `dataFlag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_roles
-- ----------------------------

-- ----------------------------
-- Table structure for ox_shop_scores
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_scores`;
CREATE TABLE `ox_shop_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `totalScore` int(11) NOT NULL DEFAULT '0',
  `totalUsers` int(11) NOT NULL DEFAULT '0',
  `goodsScore` int(11) NOT NULL DEFAULT '0',
  `goodsUsers` int(11) NOT NULL DEFAULT '0',
  `serviceScore` int(11) NOT NULL DEFAULT '0',
  `serviceUsers` int(11) NOT NULL DEFAULT '0',
  `timeScore` int(11) NOT NULL DEFAULT '0',
  `timeUsers` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scoreId`),
  UNIQUE KEY `shopId` (`shopId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_scores
-- ----------------------------
INSERT INTO `ox_shop_scores` VALUES ('1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('2', '2', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('3', '3', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('4', '4', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('5', '5', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('6', '6', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('7', '7', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('8', '8', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('9', '9', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('10', '10', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('11', '11', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `ox_shop_scores` VALUES ('12', '12', '5', '0', '5', '0', '5', '0', '0', '0');

-- ----------------------------
-- Table structure for ox_shop_styles
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_styles`;
CREATE TABLE `ox_shop_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `styleSys` varchar(255) DEFAULT NULL,
  `styleName` varchar(255) DEFAULT NULL,
  `styleCat` tinyint(4) unsigned DEFAULT '0',
  `stylePath` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `isShow` tinyint(4) DEFAULT '1' COMMENT '1:显示  0:隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_styles
-- ----------------------------
INSERT INTO `ox_shop_styles` VALUES ('1', 'home', '默认模板', '0', 'shop_home', 'img/shop_home.png', '1');
INSERT INTO `ox_shop_styles` VALUES ('2', 'home', '楼层模板', '0', 'shop_floor', 'img/shop_floor.png', '1');

-- ----------------------------
-- Table structure for ox_shop_users
-- ----------------------------
DROP TABLE IF EXISTS `ox_shop_users`;
CREATE TABLE `ox_shop_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_shop_users
-- ----------------------------
INSERT INTO `ox_shop_users` VALUES ('1', '1', '1', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('2', '2', '2', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('3', '3', '3', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('4', '4', '4', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('5', '5', '5', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('6', '6', '6', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('7', '7', '7', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('8', '8', '8', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('9', '9', '9', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('10', '10', '10', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('11', '11', '11', '0', '1');
INSERT INTO `ox_shop_users` VALUES ('12', '12', '12', '0', '1');

-- ----------------------------
-- Table structure for ox_spec_cats
-- ----------------------------
DROP TABLE IF EXISTS `ox_spec_cats`;
CREATE TABLE `ox_spec_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsCatId` int(11) NOT NULL DEFAULT '0',
  `goodsCatPath` varchar(100) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `isAllowImg` tinyint(4) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `catSort` int(11) DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`catId`),
  KEY `shopId` (`goodsCatPath`,`dataFlag`),
  KEY `isShow` (`isShow`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_spec_cats
-- ----------------------------
INSERT INTO `ox_spec_cats` VALUES ('1', '334', '334_', '颜色', '1', '1', '0', '1', '2019-02-23 10:29:01');
INSERT INTO `ox_spec_cats` VALUES ('2', '334', '334_', '内存', '0', '1', '0', '1', '2019-02-23 10:29:19');

-- ----------------------------
-- Table structure for ox_spec_items
-- ----------------------------
DROP TABLE IF EXISTS `ox_spec_items`;
CREATE TABLE `ox_spec_items` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `catId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `itemName` varchar(100) NOT NULL,
  `itemDesc` varchar(255) DEFAULT NULL,
  `itemImg` varchar(150) NOT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `goodsId` (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_spec_items
-- ----------------------------
INSERT INTO `ox_spec_items` VALUES ('1', '3', '1', '75', '金色', null, 'upload/goods/2019-02/5c70b0f71c674_thumb.jpg', '1', '2019-02-23 10:35:37');
INSERT INTO `ox_spec_items` VALUES ('2', '3', '2', '75', '16GB', null, '', '1', '2019-02-23 10:35:37');
INSERT INTO `ox_spec_items` VALUES ('3', '3', '2', '75', '32GB', null, '', '1', '2019-02-23 10:35:38');
INSERT INTO `ox_spec_items` VALUES ('4', '3', '2', '75', '64GB', null, '', '1', '2019-02-23 10:35:38');
INSERT INTO `ox_spec_items` VALUES ('5', '3', '1', '75', '黑色', null, 'upload/goods/2019-02/5c70b0faef269_thumb.jpg', '1', '2019-02-23 10:35:38');
INSERT INTO `ox_spec_items` VALUES ('6', '3', '1', '75', '蓝色', null, 'upload/goods/2019-02/5c70b0fd3defb_thumb.jpg', '1', '2019-02-23 10:35:38');
INSERT INTO `ox_spec_items` VALUES ('7', '3', '1', '76', '亮黑色', null, 'upload/goods/2019-02/5c70b3f37c485_thumb.jpg', '1', '2019-02-23 10:48:28');
INSERT INTO `ox_spec_items` VALUES ('8', '3', '2', '76', '64GB', null, '', '1', '2019-02-23 10:48:28');
INSERT INTO `ox_spec_items` VALUES ('9', '3', '2', '76', '128GB', null, '', '1', '2019-02-23 10:48:28');
INSERT INTO `ox_spec_items` VALUES ('10', '3', '1', '76', '浅艾蓝', null, 'upload/goods/2019-02/5c70b3f90c8b2_thumb.jpg', '1', '2019-02-23 10:48:28');
INSERT INTO `ox_spec_items` VALUES ('11', '3', '1', '76', '蓝楹紫', null, '', '1', '2019-02-23 10:48:28');
INSERT INTO `ox_spec_items` VALUES ('12', '3', '1', '77', '亮黑色', null, 'upload/goods/2019-02/5c70b592327bc_thumb.jpg', '1', '2019-02-23 10:55:18');
INSERT INTO `ox_spec_items` VALUES ('13', '3', '2', '77', '64GB', null, '', '1', '2019-02-23 10:55:18');
INSERT INTO `ox_spec_items` VALUES ('14', '3', '2', '77', '128GB', null, '', '1', '2019-02-23 10:55:18');
INSERT INTO `ox_spec_items` VALUES ('15', '3', '1', '77', '极光色', null, 'upload/goods/2019-02/5c70b5cd1258b_thumb.jpg', '1', '2019-02-23 10:55:18');
INSERT INTO `ox_spec_items` VALUES ('16', '3', '1', '77', '樱粉金全', null, 'upload/goods/2019-02/5c70b5ca3d082_thumb.jpg', '1', '2019-02-23 10:55:18');
INSERT INTO `ox_spec_items` VALUES ('17', '3', '1', '78', '极光色', null, 'upload/goods/2019-02/5c70b6be3ad2d_thumb.jpg', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('18', '3', '2', '78', '32GB', null, '', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('19', '3', '2', '78', '64GB', null, '', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('20', '3', '2', '78', '128GB', null, '', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('21', '3', '1', '78', '珠光贝母色', null, 'upload/goods/2019-02/5c70b6d269fb0_thumb.jpg', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('22', '3', '1', '78', '亮黑色', null, 'upload/goods/2019-02/5c70b6ee52334_thumb.jpg', '1', '2019-02-23 11:00:25');
INSERT INTO `ox_spec_items` VALUES ('23', '3', '1', '79', '魅丽红', null, '', '1', '2019-02-23 11:06:17');
INSERT INTO `ox_spec_items` VALUES ('24', '3', '2', '79', '16GB', null, '', '1', '2019-02-23 11:06:17');
INSERT INTO `ox_spec_items` VALUES ('25', '3', '2', '79', '32GB', null, '', '1', '2019-02-23 11:06:17');
INSERT INTO `ox_spec_items` VALUES ('26', '3', '2', '79', '64GB', null, '', '1', '2019-02-23 11:06:17');
INSERT INTO `ox_spec_items` VALUES ('27', '3', '1', '79', '沙滩金', null, 'upload/goods/2019-02/5c70b843e9b30_thumb.jpg', '1', '2019-02-23 11:06:17');
INSERT INTO `ox_spec_items` VALUES ('28', '5', '1', '80', '金色', null, 'upload/goods/2019-02/5c70b9c4e4553_thumb.jpg', '1', '2019-02-23 11:12:47');
INSERT INTO `ox_spec_items` VALUES ('29', '5', '2', '80', '32GB', null, '', '1', '2019-02-23 11:12:47');
INSERT INTO `ox_spec_items` VALUES ('30', '5', '2', '80', '128GB', null, '', '1', '2019-02-23 11:12:47');
INSERT INTO `ox_spec_items` VALUES ('31', '5', '1', '80', '深空灰', null, 'upload/goods/2019-02/5c70b9c2d8d46_thumb.jpg', '1', '2019-02-23 11:12:47');
INSERT INTO `ox_spec_items` VALUES ('32', '5', '1', '80', '银色', null, 'upload/goods/2019-02/5c70b9e796efb_thumb.jpg', '1', '2019-02-23 11:12:47');
INSERT INTO `ox_spec_items` VALUES ('33', '5', '1', '81', '黑色', null, 'upload/goods/2019-02/5c70bafd8b315_thumb.jpg', '1', '2019-02-23 11:17:19');
INSERT INTO `ox_spec_items` VALUES ('34', '5', '2', '81', '32GB', null, '', '1', '2019-02-23 11:17:19');
INSERT INTO `ox_spec_items` VALUES ('35', '5', '2', '81', '128GB', null, '', '1', '2019-02-23 11:17:19');
INSERT INTO `ox_spec_items` VALUES ('36', '5', '1', '81', '金色', null, 'upload/goods/2019-02/5c70bb00740a3_thumb.jpg', '1', '2019-02-23 11:17:19');
INSERT INTO `ox_spec_items` VALUES ('37', '5', '1', '81', '玫瑰金', null, 'upload/goods/2019-02/5c70bb023ab10_thumb.jpg', '1', '2019-02-23 11:17:19');
INSERT INTO `ox_spec_items` VALUES ('38', '5', '1', '82', '金色', null, 'upload/goods/2019-02/5c70bc2f096cc_thumb.jpg', '1', '2019-02-23 11:22:35');
INSERT INTO `ox_spec_items` VALUES ('39', '5', '2', '82', '64GB', null, '', '1', '2019-02-23 11:22:35');
INSERT INTO `ox_spec_items` VALUES ('40', '5', '2', '82', '128GB', null, '', '1', '2019-02-23 11:22:35');
INSERT INTO `ox_spec_items` VALUES ('41', '5', '1', '82', '深空灰', null, 'upload/goods/2019-02/5c70bc479ef04_thumb.jpg', '1', '2019-02-23 11:22:35');
INSERT INTO `ox_spec_items` VALUES ('42', '1', '1', '93', '沙滩金', null, 'upload/goods/2019-02/5c70c5a454fbf_thumb.jpg', '1', '2019-02-23 12:03:29');
INSERT INTO `ox_spec_items` VALUES ('43', '1', '2', '93', '16GB', null, '', '1', '2019-02-23 12:03:29');
INSERT INTO `ox_spec_items` VALUES ('44', '1', '2', '93', '32GB', null, '', '1', '2019-02-23 12:03:29');
INSERT INTO `ox_spec_items` VALUES ('45', '1', '1', '93', '巴黎蓝', null, 'upload/goods/2019-02/5c70c5bbb5422_thumb.jpg', '1', '2019-02-23 12:03:29');
INSERT INTO `ox_spec_items` VALUES ('46', '1', '1', '93', '铂银灰', null, '', '1', '2019-02-23 12:03:29');
INSERT INTO `ox_spec_items` VALUES ('47', '1', '1', '94', '流沙金', null, 'upload/goods/2019-02/5c70c6bd4bb96_thumb.jpg', '1', '2019-02-23 12:07:17');
INSERT INTO `ox_spec_items` VALUES ('48', '1', '2', '94', '32GB', null, '', '1', '2019-02-23 12:07:17');
INSERT INTO `ox_spec_items` VALUES ('49', '1', '2', '94', '64GB', null, '', '1', '2019-02-23 12:07:17');
INSERT INTO `ox_spec_items` VALUES ('50', '1', '1', '94', '樱花粉', null, 'upload/goods/2019-02/5c70c6c6c7a2d_thumb.jpg', '1', '2019-02-23 12:07:17');
INSERT INTO `ox_spec_items` VALUES ('51', '1', '1', '95', '黑色', null, 'upload/goods/2019-02/5c70c794afa7e_thumb.jpg', '1', '2019-02-23 12:11:06');
INSERT INTO `ox_spec_items` VALUES ('52', '1', '2', '95', '132GB', null, '', '1', '2019-02-23 12:11:06');
INSERT INTO `ox_spec_items` VALUES ('53', '1', '2', '95', '64GB', null, '', '1', '2019-02-23 12:11:06');
INSERT INTO `ox_spec_items` VALUES ('54', '1', '1', '95', '白色', null, 'upload/goods/2019-02/5c70c79ce4fe4_thumb.jpg', '1', '2019-02-23 12:11:06');
INSERT INTO `ox_spec_items` VALUES ('55', '1', '1', '96', '流沙金', null, 'upload/goods/2019-02/5c70c89a2d461_thumb.jpg', '1', '2019-02-23 12:15:05');
INSERT INTO `ox_spec_items` VALUES ('56', '1', '2', '96', '32GB', null, '', '1', '2019-02-23 12:15:05');
INSERT INTO `ox_spec_items` VALUES ('57', '1', '2', '96', '64GB', null, '', '1', '2019-02-23 12:15:05');
INSERT INTO `ox_spec_items` VALUES ('58', '1', '1', '96', '樱花粉', null, 'upload/goods/2019-02/5c70c89bb8363_thumb.jpg', '1', '2019-02-23 12:15:05');
INSERT INTO `ox_spec_items` VALUES ('59', '1', '1', '97', '玫瑰金', null, 'upload/goods/2019-02/5c70c9c4005c3_thumb.jpg', '1', '2019-02-23 12:20:49');
INSERT INTO `ox_spec_items` VALUES ('60', '1', '2', '97', '64GB', null, '', '1', '2019-02-23 12:20:49');
INSERT INTO `ox_spec_items` VALUES ('61', '1', '2', '97', '128GB', null, '', '1', '2019-02-23 12:20:49');
INSERT INTO `ox_spec_items` VALUES ('62', '1', '1', '97', '金色', null, 'upload/goods/2019-02/5c70c9cb9237e_thumb.jpg', '1', '2019-02-23 12:20:49');
INSERT INTO `ox_spec_items` VALUES ('63', '1', '1', '97', '黑色', null, 'upload/goods/2019-02/5c70c9d1af1cc_thumb.jpg', '1', '2019-02-23 12:20:49');
INSERT INTO `ox_spec_items` VALUES ('64', '1', '1', '98', '亮瓷黑', null, 'upload/goods/2019-02/5c70cb1b88bfe_thumb.jpg', '1', '2019-02-23 12:25:59');
INSERT INTO `ox_spec_items` VALUES ('65', '1', '2', '98', '64GB', null, '', '1', '2019-02-23 12:25:59');
INSERT INTO `ox_spec_items` VALUES ('66', '1', '2', '98', '128GB', null, '', '1', '2019-02-23 12:25:59');
INSERT INTO `ox_spec_items` VALUES ('67', '1', '1', '98', '电光紫', null, 'upload/goods/2019-02/5c70cb194c6a5_thumb.jpg', '1', '2019-02-23 12:25:59');
INSERT INTO `ox_spec_items` VALUES ('68', '1', '1', '99', '砂岩白', null, 'upload/goods/2019-02/5c70cbea825cc_thumb.jpg', '1', '2019-02-23 12:29:34');
INSERT INTO `ox_spec_items` VALUES ('69', '1', '2', '99', '64GB', null, '', '1', '2019-02-23 12:29:34');
INSERT INTO `ox_spec_items` VALUES ('70', '1', '2', '99', '128GB', null, '', '1', '2019-02-23 12:29:34');
INSERT INTO `ox_spec_items` VALUES ('71', '1', '1', '99', '熔岩红', null, 'upload/goods/2019-02/5c70cbfded52c_thumb.jpg', '1', '2019-02-23 12:29:34');
INSERT INTO `ox_spec_items` VALUES ('72', '1', '1', '100', '香槟金', null, 'upload/goods/2019-02/5c70ccdd93eab_thumb.jpg', '1', '2019-02-23 12:33:50');
INSERT INTO `ox_spec_items` VALUES ('73', '1', '2', '100', '32GB', null, '', '1', '2019-02-23 12:33:50');
INSERT INTO `ox_spec_items` VALUES ('74', '1', '2', '100', '64GB', null, '', '1', '2019-02-23 12:33:50');
INSERT INTO `ox_spec_items` VALUES ('75', '1', '1', '100', '宝石红', null, 'upload/goods/2019-02/5c70ccdf96246_thumb.jpg', '1', '2019-02-23 12:33:50');
INSERT INTO `ox_spec_items` VALUES ('76', '1', '1', '101', '星语新愿', null, 'upload/goods/2019-02/5c70cdebdd457_thumb.jpg', '1', '2019-02-23 12:38:54');
INSERT INTO `ox_spec_items` VALUES ('77', '1', '2', '101', '64GB', null, '', '1', '2019-02-23 12:38:54');
INSERT INTO `ox_spec_items` VALUES ('78', '1', '1', '101', '北极晨曦', null, 'upload/goods/2019-02/5c70ce1512f72_thumb.jpg', '1', '2019-02-23 12:38:54');
INSERT INTO `ox_spec_items` VALUES ('79', '1', '1', '101', '星夜海洋', null, 'upload/goods/2019-02/5c70ce23f212f_thumb.jpg', '1', '2019-02-23 12:38:54');
INSERT INTO `ox_spec_items` VALUES ('80', '1', '1', '102', '魅海蓝', null, 'upload/goods/2019-02/5c70ce8d99b49_thumb.jpg', '1', '2019-02-23 12:42:01');
INSERT INTO `ox_spec_items` VALUES ('81', '1', '2', '102', '64GB', null, '', '1', '2019-02-23 12:42:01');
INSERT INTO `ox_spec_items` VALUES ('82', '1', '2', '102', '128GB', null, '', '1', '2019-02-23 12:42:01');
INSERT INTO `ox_spec_items` VALUES ('83', '1', '1', '102', '碧玉青', null, 'upload/goods/2019-02/5c70ce8ff0a70_thumb.jpg', '1', '2019-02-23 12:42:01');

-- ----------------------------
-- Table structure for ox_staffs
-- ----------------------------
DROP TABLE IF EXISTS `ox_staffs`;
CREATE TABLE `ox_staffs` (
  `staffId` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(40) NOT NULL,
  `loginPwd` varchar(50) NOT NULL,
  `secretKey` int(32) NOT NULL,
  `staffName` varchar(50) NOT NULL,
  `staffNo` varchar(20) DEFAULT NULL,
  `staffPhoto` varchar(150) DEFAULT NULL,
  `staffRoleId` int(11) NOT NULL,
  `workStatus` tinyint(4) NOT NULL DEFAULT '1',
  `staffStatus` tinyint(4) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `lastTime` datetime DEFAULT NULL,
  `lastIP` char(16) DEFAULT NULL,
  `wxOpenId` varchar(100) DEFAULT NULL,
  `staffPhone` char(11) DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  KEY `loginName` (`loginName`),
  KEY `staffStatus` (`staffStatus`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_staffs
-- ----------------------------
INSERT INTO `ox_staffs` VALUES ('1', 'admin', '4b77d74a3888ae8f28124a5d97014bff', '9365', 'admin', '001', 'Upload/staffs/2015-04/55306cf76bc1f.jpg', '3', '1', '1', '1', '2014-04-06 11:47:20', '2019-04-15 23:32:37', '127.0.0.1', null, null);
INSERT INTO `ox_staffs` VALUES ('2', 'system', 'a0da805e0b77f6cc05cdf0ef6ca8caad', '2508', '系统管理员', 'sn001', null, '3', '1', '1', '1', '2014-12-20 00:13:36', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('3', 'goodsAdmin', '1600195af828b21c1f586b1e01cb89fc', '1729', '商品管理员', 'sn001', 'Upload/staffs/2014-12/5496376a7ff89.jpg', '1', '1', '1', '1', '2014-12-21 10:58:40', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('4', 'rrr', '07835ecd178ee79ef0cfdb8240c18364', '8871', 'rrr', 'rrr', '\\upload\\staffs\\2016-08\\88\\e3b5fcacf9fb3c51b8cb5a036a2bf8.jpg', '0', '1', '1', '-1', '2016-08-12 23:57:41', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('5', 'ttt', '84199b9eb283d7c5be45a1f590d4a08f', '7982', 'ttt', 'ttt', '/upload/staffs/2016-08\\59\\099bfb349c4a7694c477aa94f23664.jpg', '0', '1', '1', '1', '2016-08-12 23:59:19', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('6', 'rrrcc', '17059e82870edb4e0320d52a40096519', '8333', 'rrr', 'rrr', '/upload/staffs/2016-08\\c2\\28f39b9a0cdd5839613f8aa6ef8256.jpg', '0', '1', '1', '1', '2016-08-13 00:20:48', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('7', 'rrr', 'd1ddbff25d00debf3ec48dcd541b7604', '5173', 'rrr', 'rr', '', '0', '1', '1', '1', '2016-08-13 00:23:02', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('8', 'rrrv', '79a65611f151432a56aca6cf291f3aff', '2294', 'rr', 'rr', '', '0', '1', '1', '1', '2016-08-13 00:23:15', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('9', 'dddddddddddddddddddd', 'c54a53d5764e413b33cfaba89a06d164', '4832', 'ddd--', 'dd--', '/upload/staffs/2016-08\\88\\e3b5fcacf9fb3c51b8cb5a036a2bf8.jpg', '2', '1', '1', '-1', '2016-08-13 00:24:32', null, null, null, null);
INSERT INTO `ox_staffs` VALUES ('10', 'fffff', '561429601f590b45f65e150b6a1daf5f', '3408', 'ffff', '', '', '0', '1', '1', '1', '2016-08-18 12:50:55', null, null, null, null);

-- ----------------------------
-- Table structure for ox_styles
-- ----------------------------
DROP TABLE IF EXISTS `ox_styles`;
CREATE TABLE `ox_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `styleSys` varchar(20) DEFAULT NULL,
  `styleName` varchar(255) NOT NULL,
  `styleAuthor` varchar(255) DEFAULT NULL,
  `styleShopSite` varchar(11) DEFAULT NULL,
  `styleShopId` int(11) DEFAULT '0',
  `stylePath` varchar(255) NOT NULL,
  `isUse` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `isUse` (`isUse`,`styleSys`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_styles
-- ----------------------------
INSERT INTO `ox_styles` VALUES ('1', 'home', '默认模板', 'WSTMart', '', '1', 'default', '1');

-- ----------------------------
-- Table structure for ox_switchs
-- ----------------------------
DROP TABLE IF EXISTS `ox_switchs`;
CREATE TABLE `ox_switchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homeURL` varchar(255) DEFAULT NULL,
  `mobileURL` varchar(255) DEFAULT NULL,
  `wechatURL` varchar(255) DEFAULT NULL,
  `urlMark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_switchs
-- ----------------------------
INSERT INTO `ox_switchs` VALUES ('1', 'home/goods/detail', 'mobile/goods/detail', 'wechat/goods/detail', null);
INSERT INTO `ox_switchs` VALUES ('2', 'home/goods/lists', 'mobile/goods/lists', 'mobile/goods/lists', null);
INSERT INTO `ox_switchs` VALUES ('4', 'home/shops/shopstreet', 'mobile/shops/shopstreet', 'wechat/shops/shopstreet', null);
INSERT INTO `ox_switchs` VALUES ('6', 'home/index/index', 'mobile/index/index', 'wechat/index/index', null);
INSERT INTO `ox_switchs` VALUES ('7', 'home/shops/goods', 'mobile/shops/goods', 'wechat/shops/goods', null);
INSERT INTO `ox_switchs` VALUES ('8', 'home/brands/index', 'mobile/brands/index', 'wechat/brands/index', null);
INSERT INTO `ox_switchs` VALUES ('9', '', 'mobile/news/view', 'wechat/news/view', null);
INSERT INTO `ox_switchs` VALUES ('10', 'home/users/login', 'mobile/users/login', '', null);
INSERT INTO `ox_switchs` VALUES ('11', 'home/users/regist', 'mobile/users/toregister', '', null);
INSERT INTO `ox_switchs` VALUES ('12', 'home/users/forgetpass', 'mobile/users/forgetpass', '', null);
INSERT INTO `ox_switchs` VALUES ('13', 'home/shops/home', 'mobile/shops/home', 'wechat/shops/home', null);
INSERT INTO `ox_switchs` VALUES ('14', '', 'mobile/goodscats/index', 'wechat/goodscats/index', null);
INSERT INTO `ox_switchs` VALUES ('15', 'home/goods/search', 'mobile/goods/search', 'wechat/goods/search', null);

-- ----------------------------
-- Table structure for ox_sys_configs
-- ----------------------------
DROP TABLE IF EXISTS `ox_sys_configs`;
CREATE TABLE `ox_sys_configs` (
  `configId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fieldName` varchar(50) DEFAULT NULL COMMENT '字段名称',
  `fieldCode` varchar(50) DEFAULT NULL,
  `fieldValue` text,
  `fieldType` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`configId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_sys_configs
-- ----------------------------
INSERT INTO `ox_sys_configs` VALUES ('1', '商城名称', 'mallName', '商淘软件多用户商城系统', '0');
INSERT INTO `ox_sys_configs` VALUES ('2', '商城标题', 'seoMallTitle', '商淘软件多用户商城系统', '0');
INSERT INTO `ox_sys_configs` VALUES ('3', '商城描述', 'seoMallDesc', 'WSTMart是商淘软件旗下的多用户商城系统，产品有分销商城系统、微信商城、小程序商城、手机商城系统等，让商家在PC端、微信端、手机触屏端、小程序以及APP端实现全屏部署', '0');
INSERT INTO `ox_sys_configs` VALUES ('4', '商城关键字', 'seoMallKeywords', '开源商城,PHP,THINKPHP,WSTMart电子商务系统', '0');
INSERT INTO `ox_sys_configs` VALUES ('5', '联系邮箱', 'serviceEmail', 'wstmart@qq.com', '0');
INSERT INTO `ox_sys_configs` VALUES ('6', '当前系统版本号', 'wstVersion', '2.1.1_190220', '0');
INSERT INTO `ox_sys_configs` VALUES ('7', '系统版本MD5', 'wstMd5', 'e83114cc05553c348020eb5b25e0ffe5', '0');
INSERT INTO `ox_sys_configs` VALUES ('8', '移动端图片后缀', 'wstMobileImgSuffix', '_m', '0');
INSERT INTO `ox_sys_configs` VALUES ('13', '商品是否需要审核', 'isGoodsVerify', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('14', '访问统计', 'visitStatistics', '&lt;script src=&quot;https://s13.cnzz.com/z_stat.php?id=1263804910&amp;web_id=1263804910&quot; language=&quot;JavaScript&quot;&gt;&lt;/script&gt;', '0');
INSERT INTO `ox_sys_configs` VALUES ('15', 'SMTP服务器', 'mailSmtp', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('16', 'SMTP端口', 'mailPort', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('17', '是否验证SMTP', 'mailAuth', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('18', 'SMTP发件人邮箱', 'mailAddress', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('19', 'SMTP登录账号', 'mailUserName', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('20', 'SMTP登录密码', 'mailPassword', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('21', '发件人名称', 'mailSendTitle', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('24', '号码每日发送数', 'smsLimit', '20', '0');
INSERT INTO `ox_sys_configs` VALUES ('26', '授权码', 'mallLicense', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('27', '商城Logo', 'mallLogo', 'upload/sysconfigs/2016-10/580480413c986.png', '0');
INSERT INTO `ox_sys_configs` VALUES ('28', '商品默认图片', 'goodsLogo', 'upload/sysconfigs/2016-10/5804802a4b162.png', '0');
INSERT INTO `ox_sys_configs` VALUES ('29', '底部设置', 'mallFooter', 'CROPYRIGHT 2013-2015 广州商淘信息科技有限公司 版权所有', '0');
INSERT INTO `ox_sys_configs` VALUES ('30', '联系电话', 'serviceTel', '020-85289921', '0');
INSERT INTO `ox_sys_configs` VALUES ('31', 'QQ', 'serviceQQ', '153289970', '0');
INSERT INTO `ox_sys_configs` VALUES ('33', '热搜关键词', 'hotWordsSearch', 'WSTMart,b2c,多商户', '0');
INSERT INTO `ox_sys_configs` VALUES ('34', '开启短信发送验证码', 'smsVerfy', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('35', '开启手机验证', 'smsOpen', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('37', '商城禁用关键字', 'registerLimitWords', 'admin,system,fuck', '0');
INSERT INTO `ox_sys_configs` VALUES ('38', '结算金额设置', 'settlementStartMoney', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('39', '开启积分支付', 'isOpenScorePay', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('40', '开启下单获取积分', 'isOrderScore', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('41', '开启评价获取积分', 'isAppraisesScore', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('42', '积分与金钱兑换比例', 'scoreCashRatio', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('43', '自动收货期限', 'autoReceiveDays', '7', '0');
INSERT INTO `ox_sys_configs` VALUES ('44', '自动评价期限', 'autoAppraiseDays', '10', '0');
INSERT INTO `ox_sys_configs` VALUES ('45', '订单佣金比例', 'poundageRate', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('46', '开启QQ登录', 'isOpenQQLogin', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('47', 'QQ APP ID', 'qqAppId', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('48', 'QQ APP KEY', 'qqAppKey', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('49', '开启微信登录', 'isOpenWxLogin', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('50', '微信 APP ID', 'wxAppId', '', '1');
INSERT INTO `ox_sys_configs` VALUES ('51', '微信 APP KEY', 'wxAppKey', '', '1');
INSERT INTO `ox_sys_configs` VALUES ('52', '店铺默认头像', 'shopLogo', 'upload/sysconfigs/2016-10/58048008993ed.png', '0');
INSERT INTO `ox_sys_configs` VALUES ('53', '会员默认头像', 'userLogo', 'upload/sysconfigs/2016-10/5804800d5841e.png', '0');
INSERT INTO `ox_sys_configs` VALUES ('54', '默认省份', 'defaultProvince', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('55', '水印文字', 'watermarkWord', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('56', '水印文字大小', 'watermarkSize', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('57', '水印文字颜色', 'watermarkColor', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('58', '水印文件', 'watermarkFile', 'upload/sysconfigs/2019-02/5c6f6e57055c5.png', '0');
INSERT INTO `ox_sys_configs` VALUES ('59', '水印位置', 'watermarkPosition', '9', '0');
INSERT INTO `ox_sys_configs` VALUES ('60', '水印透明度', 'watermarkOpacity', '60', '0');
INSERT INTO `ox_sys_configs` VALUES ('61', '水印字体', 'watermarkTtf', 'wstmart', '0');
INSERT INTO `ox_sys_configs` VALUES ('62', '商城口号', 'mallSlogan', '为创业赋能，为电商提速', '0');
INSERT INTO `ox_sys_configs` VALUES ('63', '热搜广告词(商品)', 'adsGoodsWordsSearch', 'WSTMart商品', '0');
INSERT INTO `ox_sys_configs` VALUES ('64', '热搜广告词(店铺)', 'adsShopWordsSearch', 'WSTMart店铺', '0');
INSERT INTO `ox_sys_configs` VALUES ('65', '未付款订单有效期', 'autoCancelNoPayDays', '24', '0');
INSERT INTO `ox_sys_configs` VALUES ('66', '结算方式', 'statementType', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('67', '禁用关键字', 'limitWords', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('68', '金额兑换积分比例', 'moneyToScore', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('69', '积分兑换金额比例', 'scoreToMoney', '100', '0');
INSERT INTO `ox_sys_configs` VALUES ('70', '评价获得积分', 'appraisesScore', '5', '0');
INSERT INTO `ox_sys_configs` VALUES ('71', '是否开启微信端', 'wxenabled', '0', '1');
INSERT INTO `ox_sys_configs` VALUES ('72', '用户提现金额限制', 'drawCashUserLimit', '10', '0');
INSERT INTO `ox_sys_configs` VALUES ('73', '商家提现金额限制', 'drawCashShopLimit', '10', '0');
INSERT INTO `ox_sys_configs` VALUES ('74', '商城开关', 'seoMallSwitch', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('75', '商城关闭原因', 'seoMallSwitchDesc', '商城暂时关闭', '0');
INSERT INTO `ox_sys_configs` VALUES ('76', '累计签到获得的积分', 'signScore', '5,10,15,20,25,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,', '0');
INSERT INTO `ox_sys_configs` VALUES ('77', '签到开关', 'signScoreSwitch', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('78', '用户下单微信提示', 'wxSubmitOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('79', '支付订单微信提示', 'wxPayOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('80', '取消订单微信提示', 'wxCancelOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('81', '拒收订单微信提示', 'wxRejectOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('82', '申请退款微信提示', 'wxRefundOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('83', '订单投诉微信提示', 'wxComplaintOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('84', '用户提现微信提示', 'wxCashDrawsTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('85', '用户下单微信提示', 'submitOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('86', '支付订单微信提示', 'payOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('87', '取消订单微信提示', 'cancelOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('88', '拒收订单微信提示', 'rejectOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('89', '申请退款微信提示', 'refundOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('90', '订单投诉微信提示', 'complaintOrderTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('91', '用户提现微信提示', 'cashDrawsTipUsers', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('92', '用户下单短信提示', 'smsSubmitOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('93', '支付订单短信提示', 'smsPayOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('94', '取消订单短信提示', 'smsCancelOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('95', '拒收订单短信提示', 'smsRejectOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('96', '申请退款短信提示', 'smsRefundOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('97', '订单投诉短信提示', 'smsComplaintOrderTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('98', '用户提现短信提示', 'smsCashDrawsTip', '0', '0');
INSERT INTO `ox_sys_configs` VALUES ('99', '商城密匙', 'pwdPrivateKey', '-----BEGIN RSA PRIVATE KEY-----\nMIICWwIBAAKBgQCbak4tYvmaxhVyMucxax/tgre8JuGgvBOKJCIp/S7qbdFRpvNW\n+njYR97DK8Rsf2UrYPDoqI8PsjSwJJgqEf2OEzNOBlVfQRbWzEX8DtWEGRpiJHtL\np8CfYqRi6ytdD+W13XAfst6OMVYgzotqHKgcpDMfgdmjqy8QUfv5+z/TrwIDAQAB\nAoGANs95/MXAM9aSL7FGGgamvvPv6ppnznEmDv0JU3eoOSM7xCk1/sHdJqHKLVjd\nMEqJmo/YxqTTt3xo2oo9Y/DuU8Ul6jcp8rhkd0Mf3UHoYManlEmM+XA83scD9g8t\new2Cjttd3BRXw3jMxYsQEcpcoV4VKzBtU1vUFoSpXI2iOEkCQQDO7/oUduS7bL7N\nP8cqRpmiYPM++W1Q+kIIIVou2sFeDsJZV2mXuWjoImZ9K0fkzu2XzD7D5fdXnK/K\nVthrJZFjAkEAwEMzuUp7bTTedffb43GRY9ui9qOVgwUniVVEZowbIqzkO1/hgr2n\nRJHQlR7om2UcMG0cVeA53XxD97PTnCUMRQJAR+quhp4rL9fDF6Gqnc6bZgs7fg9B\nJntSp3Cv3si3mvCWKmZulAQjqUkLRUTdX29qsu6QgZRSOWiCz1cPL22G8QJAauhz\naIMMIuuVEA/lC5HpAJfvBCpuRs6k726kfElIBX4R4xorsaF3018pluH7Af21MRBb\nAz2Nr6Ubvi8WaesH6QJAM7KL/LXkuBI7Hy1QfWIh/iBnJw0wRtLUp7BC+x64v83N\nuYn17WC0KS/s++yXWCWfmH36oWKIfWfozz/zGiek/Q==\n-----END RSA PRIVATE KEY-----', '0');
INSERT INTO `ox_sys_configs` VALUES ('100', '是否密码加密', 'isCryptPwd', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('101', 'Modulus', 'pwdModulusKey', '9B6A4E2D62F99AC6157232E7316B1FED82B7BC26E1A0BC138A242229FD2EEA6DD151A6F356FA78D847DEC32BC46C7F652B60F0E8A88F0FB234B024982A11FD8E13334E06555F4116D6CC45FC0ED584191A62247B4BA7C09F62A462EB2B5D0FE5B5DD701FB2DE8E315620CE8B6A1CA81CA4331F81D9A3AB2F1051FBF9FB3FD3AF', '0');
INSERT INTO `ox_sys_configs` VALUES ('102', '腾讯地图key', 'mapKey', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('103', '商品咨询默认是否显示', 'isConsult', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('104', '订单评价默认是否显示', 'isAppraise', '1', '0');
INSERT INTO `ox_sys_configs` VALUES ('105', '移动端店铺默认顶部广告', 'shopAdtop', 'upload/sysconfigs/2019-02/5c6f6e601b75d.jpg', '0');
INSERT INTO `ox_sys_configs` VALUES ('106', '文字水印偏移量', 'watermarkOffset', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('107', '开启邮件发送', 'mailOpen', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('108', '调试模式是否开启', 'isDebug', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('109', '系统版权', 'copyRight', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('110', '是否开启SSL', 'mailOpenSSL', '', '0');
INSERT INTO `ox_sys_configs` VALUES ('111', '对象存储服务器', 'ossService', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('112', 'AccessKey ID', 'ossAccessKey', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('113', 'Access Key Secret', 'ossAccessSecret', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('114', 'Bucket', 'ossBucket', null, '0');
INSERT INTO `ox_sys_configs` VALUES ('115', 'Bucket域名', 'ossBucketDomain', null, '0');

-- ----------------------------
-- Table structure for ox_template_msgs
-- ----------------------------
DROP TABLE IF EXISTS `ox_template_msgs`;
CREATE TABLE `ox_template_msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tplType` tinyint(4) NOT NULL DEFAULT '0',
  `tplCode` varchar(50) NOT NULL,
  `tplExternaId` varchar(255) DEFAULT NULL,
  `tplContent` varchar(255) NOT NULL,
  `isEnbale` tinyint(4) DEFAULT '1',
  `tplDesc` text,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tplType` (`tplType`),
  KEY `tplCode` (`tplCode`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_template_msgs
-- ----------------------------
INSERT INTO `ox_template_msgs` VALUES ('1', '0', 'USER_REGISTER', null, '欢迎您注册成为${MALL_NAME}会员。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。 ${MALL_NAME}：商城名称。<br/>2.为空则不发送', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('2', '0', 'ORDER_USER_PAY_TIMEOUT', null, '订单【${ORDER_NO}】因长时间未支付，系统自动取消订单。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('3', '0', 'ORDER_SHOP_PAY_TIMEOUT', null, '订单【${ORDER_NO}】因长时间未支付，系统自动取消订单。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('4', '0', 'ORDER_SUBMIT', null, '您有一笔新的订单【${ORDER_NO}】待处理。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('5', '0', 'ORDER_CANCEL', null, '订单【${ORDER_NO}】用户已取消，取消原因：${REASON}', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON} ：取消原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('6', '0', 'ORDER_DELIVERY', null, '您的订单【${ORDER_NO}】已发货啦，快递号：${EXPRESS_NO}，请做好收货准备哦~', '1', '1.变量说明：${ORDER_NO}：订单号。${EXPRESS_NO}：快递号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('7', '0', 'ORDER_REMINDER', null, '用户【${LOGIN_NAME}】提醒您：订单【${ORDER_NO}】请尽快发货.', '1', '1.变量说明：${LOGIN_NAME}：用户登录名。${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('8', '0', 'ORDER_REJECT', null, '订单【${ORDER_NO}】用户拒收，拒收原因：${REASON}。', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON}：拒收原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('9', '0', 'ORDER_RECEIVE', null, '您的订单【${ORDER_NO}】，用户已签收。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('10', '0', 'ORDER_REFUND_CONFER', null, '订单【${ORDER_NO}】用户申请退款，请及时处理。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('11', '0', 'ORDER_REFUND_SUCCESS', null, '您的退款订单【${ORDER_NO}】已处理，请留意账户到账情况。【退款备注：${REMARK}】', '1', '1.变量说明：${ORDER_NO}：订单号。${REMARK}：退款备注<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('12', '0', 'ORDER_REFUND_FAIL', null, '订单【${ORDER_NO}】商家不同意退款，原因：${REASON}。', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON}：不同意原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('13', '0', 'ORDER_SHOP_REFUND', null, '退款订单【${ORDER_NO}】已通过，返回商家金额¥${MONEY}，请留意账户情况。', '1', '1.变量说明：${ORDER_NO}：订单号。${MONEY}：补偿金额。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('14', '0', 'CASH_DRAW_SUCCESS', null, '您的提现申请单【${CASH_NO}】已通过，请留意您的到账信息。', '1', '1.变量说明：${CASH_NO}：提现单号<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('15', '0', 'CASH_DRAW_FAIL', null, '您的提现申请单【${CASH_NO}】审核不通，原因：${CASH_RESULT}。', '1', '1.变量说明：${CASH_NO}：提现单号。${CASH_RESULT}：不通过原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('16', '1', 'EMAIL_BIND', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了邮箱验证的请求,本次进行邮箱验证的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('17', '1', 'EMAIL_EDIT', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了更改邮箱的请求,本次进行邮箱验证的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('18', '1', 'EMAIL_FOTGET', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了重置密码的请求,本次进行密码重置的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('19', '2', 'PHONE_BIND', null, '欢迎您${LOGIN_NAME}会员，正在操作绑定手机，您的校验码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('20', '2', 'PHONE_EDIT', null, '欢迎您${LOGIN_NAME}会员，正在操作修改手机，您的校验码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('21', '2', 'PHONE_FOTGET', null, '您正在重置登录密码，验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('23', '2', 'PHONE_USER_SHOP_OPEN_SUCCESS', null, '会员${LOGIN_NAME}，您申请成为${MALL_NAME}商家的请求已通过，赶紧上架商品吧。', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('24', '2', 'PHONE_SHOP_OPEN_FAIL', null, '您申请成为${MALL_NAME}商家的请求未通过。原因：${REASON}', '1', '1.变量说明：${MALL_NAME}：商城名称。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('25', '0', 'SHOP_OPEN_SUCCESS', null, '${LOGIN_NAME}会员，您申请成为${MALL_NAME}商家的请求已通过。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${MALL_NAME}：商城名称。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('26', '0', 'SHOP_OPEN_FAIL', null, '${LOGIN_NAME}会员，您申请成为${MALL_NAME}商家的请求失败，原因：${REASON} 。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${MALL_NAME}：商城名称。${REASON} ：失败原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('27', '2', 'PHONE_USER_REGISTER_VERFIY', null, '欢迎您注册成为${MALL_NAME}会员，您的注册验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${MALL_NAME}：商城名称。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('46', '0', 'GOODS_ALLOW', null, '您的商品${GOODS}【${GOODS_SN}】已审核通过。', '1', '1.变量说明：${GOODS}：商品名称。${GOODS_SN}：商品编号。${TIME} ：当前时间。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('48', '0', 'GOODS_REJECT', null, '您的商品${GOODS}【${GOODS_SN}】因【${REASON}】审核不通过。', '1', '1.变量说明：${GOODS}：商品名称。${GOODS_SN}：商品编号。${TIME} ：当前时间。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('49', '0', 'ORDER_USER_AUTO_DELIVERY', null, '订单【${ORDER_NO}】${GOODS}商家已发货，请留意订单信息哦~', '1', '1.变量说明：${ORDER_NO}：订单编号。${GOODS}：商品名称。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('50', '0', 'ORDER_SHOP_AUTO_DELIVERY', null, '订单【${ORDER_NO}】${GOODS}已自动发货，请留意商品库存哦~', '1', '1.变量说明：${ORDER_NO}：订单编号。${GOODS}：商品名称。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('51', '0', 'ORDER_APPRAISES', '', '您的订单【${ORDER_NO}】商品【${GOODS}】已有新的用户评价。', '1', '1.变量说明：${GOODS}：商品名称 ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('52', '2', 'PHONE_FOTGET_PAY', null, '您正在重置支付密码，验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('53', '1', 'EMAIL_USER_SHOP_OPEN_SUCCESS', null, '&lt;p&gt;\n	会员${LOGIN_NAME}:\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;您的开店申请已通过审核，赶紧上架商品吧。\n&lt;/p&gt;', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。<br/>2.为空则不发送', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('54', '1', 'EMAIL_SHOP_OPEN_FAIL', null, '&lt;p&gt;\n	会员${LOGIN_NAME}:\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;您的开店申请因${REASON}申请不通过哦。\n&lt;/p&gt;', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('55', '2', 'PHONE_ADMIN_SUBMIT_ORDER', '', '有新的订单[${ORDER_NO}]，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('56', '2', 'PHONE_ADMIN_PAY_ORDER', '', '订单[${ORDER_NO}]用户已支付完成，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('57', '2', 'PHONE_ADMIN_CANCEL_ORDER', '', '订单[${ORDER_NO}]已被用户取消，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('58', '2', 'PHONE_ADMIN_REJECT_ORDER', '', '订单[${ORDER_NO}]已被用户拒收，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('59', '2', 'PHONE_ADMIN_REFUND_ORDER', '', '用户申请订单[${ORDER_NO}]退款，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('60', '2', 'PHONE_ADMIN_COMPLAINT_ORDER', '', '用户投诉订单[${ORDER_NO}]，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('61', '2', 'PHONE_ADMIN_CASH_DRAWS', '', '有用户申请提现，请留意~', '1', '1.变量说明：${CASH_NO}：提现编号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('62', '0', 'ORDER_NEW_COMPLAIN', '', '您有新的被投诉订单【${ORDER_NO}】，请及时回应以免影响您的店铺评分。', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('63', '0', 'ORDER_HANDLED_COMPLAIN', '', '您的订单投诉【${ORDER_NO}】已仲裁，请查看订单投诉详情。', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('64', '0', 'SHOP_SETTLEMENT', '', '您有新的结算单【${SETTLEMENT_NO}】生成，请留意结算信息~', '1', '1.变量说明： ${SETTLEMENT_NO}：结算单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('65', '0', 'ORDER_HASPAY', '', '订单【${ORDER_NO}】用户已支付完成，请尽快发货哦~', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');
INSERT INTO `ox_template_msgs` VALUES ('66', '0', 'ORDER_ATUO_RECEIVE', '', '您的订单【${ORDER_NO}】已自动确认收货~', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1');

-- ----------------------------
-- Table structure for ox_third_users
-- ----------------------------
DROP TABLE IF EXISTS `ox_third_users`;
CREATE TABLE `ox_third_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `thirdCode` varchar(20) DEFAULT NULL,
  `thirdOpenId` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_third_users
-- ----------------------------

-- ----------------------------
-- Table structure for ox_users
-- ----------------------------
DROP TABLE IF EXISTS `ox_users`;
CREATE TABLE `ox_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `loginSecret` int(11) NOT NULL,
  `loginPwd` varchar(50) NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT '0',
  `userSex` tinyint(4) DEFAULT '0',
  `userName` varchar(100) DEFAULT NULL,
  `trueName` varchar(100) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `userPhoto` varchar(200) DEFAULT NULL,
  `userQQ` varchar(20) DEFAULT NULL,
  `userPhone` char(11) DEFAULT '',
  `userEmail` varchar(50) DEFAULT '',
  `userScore` int(11) DEFAULT '0',
  `userTotalScore` int(11) DEFAULT '0',
  `lastIP` varchar(16) DEFAULT NULL,
  `lastTime` datetime DEFAULT NULL,
  `userFrom` tinyint(4) DEFAULT '0',
  `userMoney` decimal(11,2) DEFAULT '0.00',
  `lockMoney` decimal(11,2) DEFAULT '0.00',
  `userStatus` tinyint(4) NOT NULL DEFAULT '1',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `payPwd` varchar(100) DEFAULT NULL,
  `rechargeMoney` decimal(11,2) DEFAULT '0.00' COMMENT '充值金额',
  `isInform` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`),
  KEY `userStatus` (`userStatus`,`dataFlag`),
  KEY `loginName` (`loginName`),
  KEY `userPhone` (`userPhone`),
  KEY `userEmail` (`userEmail`),
  KEY `userType` (`userType`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_users
-- ----------------------------
INSERT INTO `ox_users` VALUES ('1', 'wstmart', '5937', '022a8dfc57d286de1e221a21dedad94b', '1', '0', null, null, null, '', null, '', '', '0', '0', '127.0.0.1', '2019-04-16 00:16:49', '0', '0.00', '0.00', '1', '1', '2016-10-08 10:27:28', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('2', 'shuiguo', '5443', 'd83f4da38aa6132f300e20cfc3d50677', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-22 23:23:49', '0', '0.00', '0.00', '1', '1', '2019-02-22 17:37:48', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('3', 'huawei', '8970', '1ecc796d3bebd976e27819c6f6e78aca', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-23 10:28:33', '0', '0.00', '0.00', '1', '1', '2019-02-22 17:46:24', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('4', 'xiaomi', '3330', 'ad48387b0411c8cf91b89eed0e965d45', '1', '0', null, null, null, null, null, '', '', '0', '0', null, null, '0', '0.00', '0.00', '1', '1', '2019-02-22 17:48:42', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('5', 'apple', '8064', '9b6c30e3a0298a311a1ce48bbc64bb52', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-23 11:07:06', '0', '0.00', '0.00', '1', '1', '2019-02-22 17:54:23', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('6', 'oppozy', '2334', 'b9648290e6eca5ea2036ba3512c2cc85', '1', '0', null, null, null, null, null, '', '', '0', '0', null, null, '0', '0.00', '0.00', '1', '1', '2019-02-22 17:59:15', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('7', 'sanzhisongshu', '8921', 'e12f2284982cb6e99fd2212de2f4ebd4', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-22 23:41:35', '0', '0.00', '0.00', '1', '1', '2019-02-22 18:15:46', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('8', 'liangpin', '5713', '770fd0253375127f24d9cddea362b16a', '1', '0', null, null, null, null, null, '', '', '0', '0', null, null, '0', '0.00', '0.00', '1', '1', '2019-02-22 18:24:59', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('9', 'lejuriyong', '3997', '1c00c6fee2b55278ec73cca05ecbc419', '1', '0', null, null, null, null, null, '', '', '0', '0', null, null, '0', '0.00', '0.00', '1', '1', '2019-02-22 18:30:58', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('10', 'tongrentang', '8669', 'b387dd2cdbc2412163a246db0e631fcd', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-23 00:17:04', '0', '0.00', '0.00', '1', '1', '2019-02-22 18:36:19', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('11', 'jiameijia', '1514', 'f18d0a1085d141e1e93bd759f0597ceb', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-23 11:28:43', '0', '0.00', '0.00', '1', '1', '2019-02-22 18:48:16', null, '0.00', '1');
INSERT INTO `ox_users` VALUES ('12', 'huaguoshan', '5493', '7cc0e67d02224815b4d0589edd65eaba', '1', '0', null, null, null, null, null, '', '', '0', '0', '::1', '2019-02-23 15:45:43', '0', '0.00', '0.00', '1', '1', '2019-02-22 19:19:45', null, '0.00', '1');

-- ----------------------------
-- Table structure for ox_user_address
-- ----------------------------
DROP TABLE IF EXISTS `ox_user_address`;
CREATE TABLE `ox_user_address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPhone` varchar(20) DEFAULT NULL,
  `areaIdPath` varchar(255) NOT NULL DEFAULT '0',
  `areaId` int(11) NOT NULL DEFAULT '0',
  `userAddress` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `userId` (`userId`,`dataFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for ox_user_ranks
-- ----------------------------
DROP TABLE IF EXISTS `ox_user_ranks`;
CREATE TABLE `ox_user_ranks` (
  `rankId` int(11) NOT NULL AUTO_INCREMENT,
  `rankName` varchar(20) NOT NULL,
  `startScore` int(11) NOT NULL DEFAULT '0',
  `endScore` int(11) NOT NULL DEFAULT '0',
  `userrankImg` varchar(150) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`rankId`),
  KEY `startScore` (`startScore`,`endScore`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_user_ranks
-- ----------------------------
INSERT INTO `ox_user_ranks` VALUES ('1', '初级会员', '0', '500', 'upload/userranks/2019-02/5c6f75ec26d08.png', '1', '2019-02-22 12:09:25');
INSERT INTO `ox_user_ranks` VALUES ('2', '中级会员', '501', '1000', 'upload/userranks/2019-02/5c6f75ff8b2ee.png', '1', '2019-02-22 12:09:43');
INSERT INTO `ox_user_ranks` VALUES ('3', '高级会员', '1001', '3000', 'upload/userranks/2019-02/5c6f760e5f336.png', '1', '2019-02-22 12:09:56');
INSERT INTO `ox_user_ranks` VALUES ('4', '钻石会员', '3001', '100000', 'upload/userranks/2019-02/5c6f761f97d68.png', '1', '2019-02-22 12:10:14');

-- ----------------------------
-- Table structure for ox_user_scores
-- ----------------------------
DROP TABLE IF EXISTS `ox_user_scores`;
CREATE TABLE `ox_user_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `dataSrc` int(11) NOT NULL DEFAULT '0',
  `dataId` int(11) NOT NULL DEFAULT '0',
  `dataRemarks` text,
  `scoreType` int(11) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`scoreId`),
  KEY `userId` (`userId`),
  KEY `userId_2` (`userId`,`dataSrc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ox_user_scores
-- ----------------------------
