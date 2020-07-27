/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : flowerplus

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2020-06-18 14:58:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `gid` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cid` int(255) NOT NULL AUTO_INCREMENT,
  `gcount` int(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '1657714781@qq.com', '65', '5');
INSERT INTO `car` VALUES ('2', '1657714781@qq.com', '66', '7');
INSERT INTO `car` VALUES ('4', '1657714781@qq.com', '69', '2');
INSERT INTO `car` VALUES ('1', '459438430@qq.com', '93', '5');
INSERT INTO `car` VALUES ('2', '459438430@qq.com', '94', '3');
INSERT INTO `car` VALUES ('3', '459438430@qq.com', '95', '1');
INSERT INTO `car` VALUES ('4', '459438430@qq.com', '99', '4');
INSERT INTO `car` VALUES ('1', '1', '119', '2');
INSERT INTO `car` VALUES ('2', '1', '120', '2');
INSERT INTO `car` VALUES ('3', '1', '121', '3');
INSERT INTO `car` VALUES ('5', '1', '123', '4');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `title` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `img` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `gid` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '99', 'https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '2500', '1');
INSERT INTO `goods` VALUES ('【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '99', 'https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '2500', '2');
INSERT INTO `goods` VALUES ('【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1188', 'https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '2500', '3');
INSERT INTO `goods` VALUES ('FlowerPlus花加 繁花混合鲜花 包月一周一花生日礼物送女友包邮 订一个月 周一收花', '169', 'https://img14.360buyimg.com/n7/jfs/t1/33204/17/1061/163438/5ca32925E030d1b41/9f952c16e0037adb.jpg', '2000', '4');
INSERT INTO `goods` VALUES ('FlowerPlus花加绿萝盆栽绿植办公室室内客厅吸除甲醛净化空气植物 创意居家礼物送朋友同城速递 水培绿光绿萝（两组装）', '35', 'https://img13.360buyimg.com/n7/jfs/t1/23142/3/13961/135303/5ca32a80Ef2f4006e/dd8c27343d2cd50e.jpg', '300', '5');
INSERT INTO `goods` VALUES ('FlowerPlus花加 悦花混合鲜花单次体验 鲜花单次体验 创意生日礼物 含花瓶 周六收花', '69', 'https://img12.360buyimg.com/n7/jfs/t1/24444/38/13958/141352/5ca32aaeE37413b6b/ef0d6b12ea0ee093.jpg', '1700', '6');
INSERT INTO `goods` VALUES ('FlowerPlus花加优质国产玫瑰包月花束爱情鲜花速递一周一花包邮 国产玫瑰8枝（一个月4束），周一收花', '129', 'https://img11.360buyimg.com/n7/jfs/t1/74501/21/4113/506870/5d25ce9aEd49582bc/071206630c925698.jpg', '80', '7');
INSERT INTO `goods` VALUES ('FlowerPlus花加 谜藏·高端混合鲜花包月4束/月 一周一花生日节日创意礼物送爱人同城速递包邮 订一个月 周一收花', '399', 'https://img12.360buyimg.com/n7/jfs/t1/80580/36/6591/377186/5d4a894dEc223bbab/c841f63d22da5c74.jpg', '400', '8');
INSERT INTO `goods` VALUES ('FlowerPlus花加 繁花·混合鲜花单次体验 鲜花包邮 鲜花速递 同城包邮 生日创意礼物送女友 不含花瓶 周一收花', '59', 'https://img10.360buyimg.com/n7/jfs/t1/28893/27/13935/151675/5ca3326bEb05389e0/5e34945be021984a.jpg', '900', '9');
INSERT INTO `goods` VALUES ('FlowerPlus花加精品野逸包月鲜花一周一花室内英式时尚花束包邮 订一个月（共2束） 周六收花', '99', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/77038/36/14844/463707/5dc23a66E0f476361/748f77ab56eda32c.jpg', '100', '11');
INSERT INTO `goods` VALUES ('【买花赠花】Flowerplus花加大师花包月鲜花野逸花束插花礼品装饰 大师，订1个月，共5束（大师4束+悦花1束） 周一收花', '239', 'https://img14.360buyimg.com/n7/jfs/t1/124279/8/1772/587054/5ebfc40fE8bdf6c3b/28464d0e7f06d607.jpg', '30', '12');
INSERT INTO `goods` VALUES ('FlowerPlus花加大马士革玫瑰补水保湿纯露温和提亮舒缓喷雾 大马士革玫瑰纯露 99ml', '79', 'https://img11.360buyimg.com/n7/jfs/t1/123290/19/3086/331575/5eccc9e5Eaa5f495f/ac7663c88a2258f0.jpg', '80', '13');
INSERT INTO `goods` VALUES ('FlowerPlus花加「小野」法式桌面包月一周一花室内花束鲜花速递 订一个月（共4束） 周一收花', '129', 'https://img12.360buyimg.com/n7/jfs/t1/47936/15/16391/529698/5dd5f516Ec175da9a/0e7fbe9e92397ec7.jpg', '70', '14');
INSERT INTO `goods` VALUES ('\r\nFlowerplus花加春季小白瓶无火香氛居家简约装饰植物精油香氛 F+“KAZE小白瓶”无火香氛-晚香玉  50ml\r\n关注 分享举报\r\nFlowerplus花加春季小白瓶无火香氛居家简约装饰植物精油香氛 F+“KAZE小白瓶”无火香氛-晚香玉 50ml', '59', 'https://img10.360buyimg.com/n7/jfs/t1/133359/13/417/224580/5eccd19bE477660ce/6bc1a96da4083c49.jpg', '30', '15');
INSERT INTO `goods` VALUES ('Flowerplus花加春季小白瓶无火香氛居家简约装饰植物精油香氛 F+“KAZE小白瓶”无火香氛-玫瑰 50ml', '59', 'https://img10.360buyimg.com/n1/s190x190_jfs/t1/43725/40/2422/291759/5cca8191E1dad9f59/332908cd7ad9570a.jpg', '300', '16');
INSERT INTO `goods` VALUES ('FlowerPlus花加 鲜花保鲜液 250ml/瓶 延长花期促进花开鲜花养护同城包邮速递 250ML', '29', 'https://img12.360buyimg.com/n7/jfs/t1/17050/8/13978/124620/5ca32810Ede1afeed/53347665911081dc.jpg', '1200', '17');
INSERT INTO `goods` VALUES ('FlowerPlus花加 花艺剪刀 双色可选 专业好用不伤手 插花修剪 花加专属定制花剪园艺工具包邮 梦幻粉', '69', 'https://img11.360buyimg.com/n7/jfs/t1/19906/2/13926/85652/5ca31f64E4d86faa9/4aaf639297529589.jpg', '100', '18');
INSERT INTO `goods` VALUES ('FlowerPlus花加绿萝盆栽绿植办公室室内客厅吸除甲醛净化空气植物 创意居家礼物送朋友同城速递 水培绿光绿萝（两组装）', '35', 'https://img13.360buyimg.com/n7/jfs/t1/23142/3/13961/135303/5ca32a80Ef2f4006e/dd8c27343d2cd50e.jpg', '300', '19');
INSERT INTO `goods` VALUES ('', '0', '', '', '20');
INSERT INTO `goods` VALUES ('', '0', '', '', '21');
INSERT INTO `goods` VALUES ('', '0', '', '', '22');
INSERT INTO `goods` VALUES ('', '0', '', '', '23');
INSERT INTO `goods` VALUES ('', '0', '', '', '24');
INSERT INTO `goods` VALUES ('', '0', '', '', '25');

-- ----------------------------
-- Table structure for myorder
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gcount` varchar(255) NOT NULL,
  `allprice` decimal(65,2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `oid` int(65) NOT NULL AUTO_INCREMENT,
  `otime` varchar(255) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myorder
-- ----------------------------
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '5', '495.00', '459438430@qq.com', '61', '2020-6-17 15:20:50');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '3', '297.00', '459438430@qq.com', '62', '2020-6-17 15:20:50');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430@qq.com', '63', '2020-6-17 15:20:50');
INSERT INTO `myorder` VALUES ('https://img14.360buyimg.com/n7/jfs/t1/33204/17/1061/163438/5ca32925E030d1b41/9f952c16e0037adb.jpg', 'FlowerPlus花加 繁花混合鲜花 包月一周一花生日礼物送女友包邮 订一个月 周一收花', '3', '507.00', '459438430@qq.com', '64', '2020-6-17 15:20:50');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '5', '495.00', '459438430@qq.com', '65', '2020-6-17 15:20:59');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '3', '297.00', '459438430@qq.com', '66', '2020-6-17 15:20:59');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430@qq.com', '67', '2020-6-17 15:20:59');
INSERT INTO `myorder` VALUES ('https://img14.360buyimg.com/n7/jfs/t1/33204/17/1061/163438/5ca32925E030d1b41/9f952c16e0037adb.jpg', 'FlowerPlus花加 繁花混合鲜花 包月一周一花生日礼物送女友包邮 订一个月 周一收花', '4', '676.00', '459438430@qq.com', '68', '2020-6-17 15:20:59');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '5', '495.00', '1657714781@qq.com', '69', '2020-6-17 15:31:44');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '7', '693.00', '1657714781@qq.com', '70', '2020-6-17 15:31:44');
INSERT INTO `myorder` VALUES ('https://img14.360buyimg.com/n7/jfs/t1/33204/17/1061/163438/5ca32925E030d1b41/9f952c16e0037adb.jpg', 'FlowerPlus花加 繁花混合鲜花 包月一周一花生日礼物送女友包邮 订一个月 周一收花', '2', '338.00', '1657714781@qq.com', '71', '2020-6-17 15:31:44');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '4', '396.00', '459438430111@qq.com', '72', '2020-6-18 8:39:22');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '73', '2020-6-18 8:39:22');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '5', '495.00', '459438430@qq.com', '74', '2020-6-18 9:23:11');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '3', '297.00', '459438430@qq.com', '75', '2020-6-18 9:23:11');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430@qq.com', '76', '2020-6-18 9:23:11');
INSERT INTO `myorder` VALUES ('https://img14.360buyimg.com/n7/jfs/t1/33204/17/1061/163438/5ca32925E030d1b41/9f952c16e0037adb.jpg', 'FlowerPlus花加 繁花混合鲜花 包月一周一花生日礼物送女友包邮 订一个月 周一收花', '4', '676.00', '459438430@qq.com', '77', '2020-6-18 9:23:11');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '78', '2020-6-18 9:25:49');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '79', '2020-6-18 9:25:49');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '3', '3564.00', '459438430111@qq.com', '80', '2020-6-18 9:25:49');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '81', '2020-6-18 9:36:33');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '82', '2020-6-18 9:36:33');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '3', '3564.00', '459438430111@qq.com', '83', '2020-6-18 9:36:33');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '84', '2020-6-18 9:38:49');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '85', '2020-6-18 9:38:49');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '3', '3564.00', '459438430111@qq.com', '86', '2020-6-18 9:38:49');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '87', '2020-6-18 9:41:41');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '88', '2020-6-18 9:41:41');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '3', '3564.00', '459438430111@qq.com', '89', '2020-6-18 9:41:41');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '90', '2020-6-18 9:44:09');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '91', '2020-6-18 9:44:09');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '3', '3564.00', '459438430111@qq.com', '92', '2020-6-18 9:44:09');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '93', '2020-6-18 9:44:53');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '94', '2020-6-18 9:44:53');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '95', '2020-6-18 9:45:51');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430111@qq.com', '96', '2020-6-18 9:45:51');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '97', '2020-6-18 9:46:41');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '98', '2020-6-18 9:55:59');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '2', '198.00', '459438430111@qq.com', '99', '2020-6-18 9:56:24');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430111@qq.com', '100', '2020-6-18 9:58:27');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '101', '2020-6-18 9:59:27');
INSERT INTO `myorder` VALUES ('https://img10.360buyimg.com/n1/jfs/t1/47957/9/3353/366398/5d11d605E01b7cd3e/728125673f817cbd.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订12个月，周一收花（简花48束+时令12束）', '1', '1188.00', '459438430111@qq.com', '102', '2020-6-18 9:59:27');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n7/jfs/t28945/179/583861264/174115/a6e90377/5bf7af0cN414dd507.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 悦花订1个月，周一收花（悦花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '103', '2020-6-18 9:59:44');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '104', '2020-6-18 9:59:44');
INSERT INTO `myorder` VALUES ('https://img13.360buyimg.com/n7/jfs/t1/23142/3/13961/135303/5ca32a80Ef2f4006e/dd8c27343d2cd50e.jpg', 'FlowerPlus花加绿萝盆栽绿植办公室室内客厅吸除甲醛净化空气植物 创意居家礼物送朋友同城速递 水培绿光绿萝（两组装）', '1', '35.00', '459438430111@qq.com', '105', '2020-6-18 10:00:13');
INSERT INTO `myorder` VALUES ('https://img12.360buyimg.com/n1/jfs/t1/83297/40/2891/536419/5d11d606E3450746f/3bbb1e091630c380.jpg', '【买花赠花】FlowerPlus花加简约混合鲜花包月4+1束一周一花鲜花速递 简花订1个月，周六收花（简花4束+时令鲜花1束）', '1', '99.00', '459438430111@qq.com', '106', '2020-6-18 10:00:30');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL,
  `cardimg` varchar(255) NOT NULL,
  `uid` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('2323', '30@qq.com', '123', 'http://localhost:8090/public/upload/e3ff698f-8167-49ee-964e-f62e62b3291f.jpg', '38');
INSERT INTO `userinfo` VALUES ('杨卿', '459438430@qq.com', '123', 'http://localhost:8090/public/upload/0c2df6c0-d254-4541-bc87-1d2d5d34f3a6.jpg', '39');
INSERT INTO `userinfo` VALUES ('456', '1657714781@qq.com', '123', 'http://localhost:8090/public/upload/dad87b54-78ef-4241-842d-2fc79a68ff2a.jpg', '40');
INSERT INTO `userinfo` VALUES ('你好', '4594577@qq.com', '123', 'http://localhost:8090/public/upload/9f5abc6c-9b07-43a6-8707-f3c4aec78020.jpg', '41');
INSERT INTO `userinfo` VALUES ('nini', '340@qq.com', '123', 'http://localhost:8090/public/upload/8ef1ff01-26d8-4a33-8838-7d622d3ed2d7.jpg', '42');
INSERT INTO `userinfo` VALUES ('111111', '111111@qq.com', '123', 'http://localhost:8090/public/upload/28362512-8704-4ab8-bd9e-8b6795906113.jpg', '43');
INSERT INTO `userinfo` VALUES ('19', '19@qq.com', '123', 'http://localhost:8090/public/upload/87bd51e6-f9a1-4fd3-93da-705b33b14c74.jpg', '44');
INSERT INTO `userinfo` VALUES ('99', '99@qq.com', '123', 'http://localhost:8090/public/upload/60ffc5f8-ff13-4dbc-8a41-b0bfdf13e7e6.jpg', '45');
INSERT INTO `userinfo` VALUES ('98', '98@qq.com', '123', 'http://localhost:8090/public/upload/224ca1dd-ab3c-44a7-9780-f634523c6ed4.jpg', '46');
INSERT INTO `userinfo` VALUES ('910', '910@qq.com', '123', 'http://localhost:8090/public/upload/79ab214c-c8d4-48a6-91f1-cc5279ce57fa.JPG', '47');
INSERT INTO `userinfo` VALUES ('你好', '123123123123', '123131', 'http://localhost:8090/public/upload/f4908391-6c33-404a-90bb-1cccfcfd63eb.JPG', '48');
INSERT INTO `userinfo` VALUES ('1', '1', '1', 'http://localhost:8090/public/upload/17d0f703-e98e-4d29-a596-b255cedef6c5.jpg', '49');
INSERT INTO `userinfo` VALUES ('2222', '2222', '2222', 'http://localhost:8090/public/upload/7c0d6277-8ca3-49ac-9029-da4c5e182a8a.jpg', '50');
INSERT INTO `userinfo` VALUES ('345543', '345543', '345543', 'http://localhost:8090/public/upload/24e0adfc-6dba-49dd-aee9-7b9d78a578f0.jpg', '51');
INSERT INTO `userinfo` VALUES ('2323', '2323', '2323', 'http://localhost:8090/public/upload/e6919725-9330-4465-b503-b165e1af780a.jpg', '52');
INSERT INTO `userinfo` VALUES ('618', '459438430111@qq.com', '123', 'http://localhost:8090/public/upload/70fe39ce-9009-4bfb-bc96-a52cfdfe711d.jpg', '53');
