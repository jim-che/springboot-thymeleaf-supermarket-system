/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : cs

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 03/01/2022 01:08:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connectionpersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `stu` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
BEGIN;
INSERT INTO `bus_customer` VALUES (1, '小张', '111', '武汉', '027-9123131', '张大明', '15279230588', '中国银行', '654431331343413', '213123@sina.com', '430000', 1, '普通顾客');
INSERT INTO `bus_customer` VALUES (2, '小明', '222', '深圳', '0755-9123131', '张小明', '13064154936', '中国银行', '654431331343413', '213123@sina.com', '430000', 1, '普通顾客');
INSERT INTO `bus_customer` VALUES (3, '王五', '430000', '武汉', '027-11011011', '雷生', '13617020687', '招商银行', '6543123341334133', '6666@66.com', '545341', 1, '普通顾客');
INSERT INTO `bus_customer` VALUES (4, '丽云', '332005', '十里大道1039号', '0792-13658745', '射可可', '13648524759', '建设银行', '36245684125509', '13648524759@163.com', '152632', 1, '普通顾客');
INSERT INTO `bus_customer` VALUES (8, '红利', '332005', '十里大楼', '0792-56214528', '周三', '15236987455', '农业银行', '362458651236509', '15236987455@163.com', '320156', 1, '会员');
INSERT INTO `bus_customer` VALUES (9, '小丽', '900000', '上海陆家嘴', '18910101010', '小丽', '18910101010', '建设银行', '6543901010011', '1@qq.com', '111111111', 1, '会员');
COMMIT;

-- ----------------------------
-- Table structure for bus_goods
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods`;
CREATE TABLE `bus_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produceplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodspackage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promitcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `dangernum` int(11) DEFAULT NULL,
  `goodsimg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bus_goods_ibfk_1` (`providerid`) USING BTREE,
  CONSTRAINT `bus_goods_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 9216 kB; (`providerid`) REFER `warehouse/bus_provider`(`id`)';

-- ----------------------------
-- Records of bus_goods
-- ----------------------------
BEGIN;
INSERT INTO `bus_goods` VALUES (1, '娃哈哈', '武汉', '120ML', '瓶', 'PH12345', 'PZ1234', '小孩子都爱的', 2, 468, 10, '2021-10-25/DFEFBD2A862F497D91BD238B0579E0F9.jpg', 1, 3, 1, 1);
INSERT INTO `bus_goods` VALUES (2, '旺旺雪饼', '仙桃', '包', '袋', 'PH12312312', 'PZ12312', '好吃不上火', 4, 1111, 10, '2021-10-25/DFEFBD2A862F497D91BD238B0579E0F9.jpg', 1, 1, 1, 1);
INSERT INTO `bus_goods` VALUES (3, '旺旺大礼包', '仙桃', '盒', '盒', '11', '11', '111', 28, 1021, 100, '2021-10-25/DFEFBD2A862F497D91BD238B0579E0F9.jpg', 1, 1, 1, 1);
INSERT INTO `bus_goods` VALUES (4, '娃哈哈', '武汉', '200ML', '瓶', '11', '111', '12321', 3, 1130, 10, '2021-10-25/DFEFBD2A862F497D91BD238B0579E0F9.jpg', 1, 3, 2, 1);
INSERT INTO `bus_goods` VALUES (5, '娃哈哈', '武汉', '300ML', '瓶', '1234', '12321', '22221111', 3, 1000, 100, '2021-10-25/F6394748B28C4DE5B3E0074ECC75D0E7.jpg', 1, 3, 2, 1);
INSERT INTO `bus_goods` VALUES (6, 'jasper测试添加商品1', 'jasper测试添加商品', '45112', 'jasper测试添加商品', '4512221', '4465123', 'jasper测试添加商品1', 10, 915, 1000, '2021-10-25/DFEFBD2A862F497D91BD238B0579E0F9.jpg', 1, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_inport
-- ----------------------------
DROP TABLE IF EXISTS `bus_inport`;
CREATE TABLE `bus_inport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inporttime` datetime DEFAULT NULL,
  `operateperson` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `rent_per_hour` double NOT NULL DEFAULT '0' COMMENT '租金/每小时',
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bus_inport_ibfk_1` (`providerid`) USING BTREE,
  KEY `bus_inport_ibfk_2` (`goodsid`) USING BTREE,
  CONSTRAINT `bus_inport_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`),
  CONSTRAINT `bus_inport_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `bus_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 9216 kB; (`providerid`) REFER `warehouse/bus_provider`(`id`); (`goo';

-- ----------------------------
-- Records of bus_inport
-- ----------------------------
BEGIN;
INSERT INTO `bus_inport` VALUES (1, '微信', '2021-10-15 00:00:00', '张三', 100, '备注', 3.5, 1, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (2, '支付宝', '2021-03-28 00:00:00', '张三', 1000, '无', 2.5, 3, 3, 0, 1);
INSERT INTO `bus_inport` VALUES (3, '银联', '2021-03-28 00:00:00', '张三', 100, '1231', 111, 3, 3, 0, 1);
INSERT INTO `bus_inport` VALUES (4, '银联', '2021-03-28 00:00:00', '张三', 1000, '无', 2, 3, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (5, '银联', '2021-03-28 00:00:00', '张三', 100, '无', 1, 3, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (6, '银联', '2021-03-28 00:00:00', '张三', 100, '1231', 2.5, 1, 2, 0, 1);
INSERT INTO `bus_inport` VALUES (8, '支付宝', '2021-03-28 00:00:00', '张三', 100, '', 1, 3, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (10, '支付宝', '2021-03-28 17:17:57', '超级管理员', 100, 'sadfasfdsa', 1.5, 3, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (11, '支付宝', '2021-03-28 16:12:25', '超级管理员', 21, '21', 21, 1, 3, 0, 1);
INSERT INTO `bus_inport` VALUES (12, '微信', '2021-03-28 16:48:24', '超级管理员', 100, '123213213', 12321321, 3, 1, 0, 1);
INSERT INTO `bus_inport` VALUES (13, '支付宝', '2021-04-17 13:57:18', '超级管理员', 8, 'jsper测试进货', 100, 1, 6, 0, 1);
INSERT INTO `bus_inport` VALUES (14, '支付宝', '2021-10-25 10:38:02', '超级管理员', 11, '11', 11, 1, 2, 0, 1);
INSERT INTO `bus_inport` VALUES (15, '支付宝', '2021-10-25 10:38:46', '超级管理员', 30, '22', 20, 3, 4, 0, 1);
INSERT INTO `bus_inport` VALUES (16, '支付宝', '2021-10-26 09:43:41', '超级管理员', 9, '11', 11, 1, 6, 0, 1);
INSERT INTO `bus_inport` VALUES (17, '支付宝', '2021-10-26 09:44:12', '超级管理员', 777, '11', 11, 1, 6, 0, 1);
INSERT INTO `bus_inport` VALUES (18, '支付宝', '2021-11-14 17:04:33', '超级管理员', 111, '111', 111, 1, 6, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_num
-- ----------------------------
DROP TABLE IF EXISTS `bus_num`;
CREATE TABLE `bus_num` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `providerid` int(22) DEFAULT NULL,
  `num` int(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bus_num
-- ----------------------------
BEGIN;
INSERT INTO `bus_num` VALUES (1, 1, 111);
INSERT INTO `bus_num` VALUES (2, 2, 20);
COMMIT;

-- ----------------------------
-- Table structure for bus_outport
-- ----------------------------
DROP TABLE IF EXISTS `bus_outport`;
CREATE TABLE `bus_outport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outputtime` datetime DEFAULT NULL,
  `operateperson` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outportprice` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_outport
-- ----------------------------
BEGIN;
INSERT INTO `bus_outport` VALUES (1, 3, '微信', '2021-10-11 08:19:50', '超级管理员', 12321321, 1, '', 1);
INSERT INTO `bus_outport` VALUES (2, 3, '微信', '2021-10-11 08:26:54', '超级管理员', 12321321, 11, '11', 1);
INSERT INTO `bus_outport` VALUES (3, 1, '支付宝', '2021-10-16 12:20:35', '超级管理员', 100, 2, '这是jasper出货备注', 6);
INSERT INTO `bus_outport` VALUES (4, 1, '支付宝', '2021-10-15 10:24:37', '超级管理员', 100, 1, '111111111', 6);
INSERT INTO `bus_outport` VALUES (5, 1, '支付宝', '2021-10-23 10:37:27', '超级管理员', 100, 1, '1', 6);
COMMIT;

-- ----------------------------
-- Table structure for bus_pandian
-- ----------------------------
DROP TABLE IF EXISTS `bus_pandian`;
CREATE TABLE `bus_pandian` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `providerid` int(25) DEFAULT NULL,
  `text` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bus_pandian
-- ----------------------------
BEGIN;
INSERT INTO `bus_pandian` VALUES (2, 1, '大门损坏');
INSERT INTO `bus_pandian` VALUES (3, 5, '丢失哇哈哈一箱');
COMMIT;

-- ----------------------------
-- Table structure for bus_provider
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connectionperson` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
BEGIN;
INSERT INTO `bus_provider` VALUES (1, '蜜桃公司', '434000', '仙桃', '07284124312', '小明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` VALUES (2, '食品有限公司', '430000', '汉川', '07284124312', '大明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` VALUES (3, '哇哈哈公司', '513131', '杭州', '21312', '小晨', '12312', '建设银行', '512314141541', '123131', '312312', 1);
INSERT INTO `bus_provider` VALUES (4, '老干妈公司', '332005', '内蒙古', '0790362514856', '姿态', '13617252689', '中国银行', '36214587962509', '13617252689@163.com', '364145', 1);
INSERT INTO `bus_provider` VALUES (5, '仲景公司', '562115', '内蒙古', '0792-36548569', 'Rita', '13698560566', '建设银行', '3621458963596509', '13698560566@163.com', '362514', 1);
INSERT INTO `bus_provider` VALUES (9, '卫龙', 'df', 'dfffff6666', 'fd666', 'df', '23e4', 'df', 'fd', 'fd', 'df', 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_sales
-- ----------------------------
DROP TABLE IF EXISTS `bus_sales`;
CREATE TABLE `bus_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salestime` datetime DEFAULT NULL,
  `operateperson` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_sales
-- ----------------------------
BEGIN;
INSERT INTO `bus_sales` VALUES (1, 1, '支付宝', '2021-03-29 14:43:33', '超级管理员', 11, '12', 12.00, 1, 1);
INSERT INTO `bus_sales` VALUES (2, 9, '支付宝', '2021-10-26 09:42:36', '超级管理员', 9, '111', 9.00, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_salesback
-- ----------------------------
DROP TABLE IF EXISTS `bus_salesback`;
CREATE TABLE `bus_salesback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesbacktime` datetime DEFAULT NULL,
  `salebackprice` double(10,2) DEFAULT NULL,
  `operateperson` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_salesback
-- ----------------------------
BEGIN;
INSERT INTO `bus_salesback` VALUES (1, 1, '支付宝', '2021-05-27 07:37:57', 12.00, '超级管理员', 1, '1111', 1, 1);
INSERT INTO `bus_salesback` VALUES (2, 9, '支付宝', '2021-11-14 17:52:01', 9.00, '超级管理员', 1, '11', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_type
-- ----------------------------
DROP TABLE IF EXISTS `bus_type`;
CREATE TABLE `bus_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bus_type
-- ----------------------------
BEGIN;
INSERT INTO `bus_type` VALUES (1, '零食', 1);
INSERT INTO `bus_type` VALUES (2, '饮料', 1);
INSERT INTO `bus_type` VALUES (3, '333', 0);
COMMIT;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `event` varchar(255) DEFAULT NULL COMMENT 'event',
  `user` varchar(255) DEFAULT 'system' COMMENT '用户',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `mac` varchar(255) DEFAULT NULL COMMENT 'mac',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
BEGIN;
INSERT INTO `record` VALUES (133, '键盘按下了: KeyJ', 'system', '2022-01-02 19:29:35', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (134, '鼠标左键按下', 'system', '2022-01-02 19:40:18', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (135, '鼠标左键按下', 'system', '2022-01-02 19:40:19', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (136, '鼠标左键按下', 'system', '2022-01-02 19:40:19', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (137, '鼠标左键按下', 'system', '2022-01-02 19:40:19', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (138, '鼠标左键按下', 'system', '2022-01-02 19:40:59', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (139, '键盘按下了: KeyF', 'system', '2022-01-02 19:41:00', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (140, '键盘按下了: KeyA', 'system', '2022-01-02 19:41:00', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (141, '键盘按下了: KeyK', 'system', '2022-01-02 19:41:00', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (142, '键盘按下了: KeyL', 'system', '2022-01-02 19:41:00', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (143, '鼠标右键按下', 'system', '2022-01-02 19:42:32', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (144, '鼠标左键按下', 'system', '2022-01-02 19:42:37', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (145, '键盘按下了: KeyW', 'system', '2022-01-02 19:42:38', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (146, '键盘按下了: KeyR', 'system', '2022-01-02 19:42:38', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (147, '键盘按下了: KeyJ', 'system', '2022-01-02 19:42:38', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (148, '键盘按下了: KeyK', 'system', '2022-01-02 19:42:38', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (149, '键盘按下了: KeyA', 'system', '2022-01-02 19:42:39', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (150, '键盘按下了: KeyS', 'system', '2022-01-02 19:42:39', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (151, '键盘按下了: KeyD', 'system', '2022-01-02 19:42:39', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (152, '鼠标左键按下', 'system', '2022-01-02 19:42:39', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (153, '鼠标右键按下', 'system', '2022-01-03 00:15:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (154, '鼠标左键按下', 'system', '2022-01-03 00:15:57', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (155, '键盘按下了: KeyU', 'system', '2022-01-03 00:15:58', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (156, '键盘按下了: KeyY', 'system', '2022-01-03 00:15:58', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (157, '键盘按下了: KeyG', 'system', '2022-01-03 00:15:58', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (158, '鼠标左键按下', 'system', '2022-01-03 00:18:11', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (159, '鼠标右键按下', 'system', '2022-01-03 00:18:19', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (160, '鼠标左键按下', 'system', '2022-01-03 00:18:30', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (161, '键盘按下了: KeyG', 'system', '2022-01-03 00:18:31', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (162, '键盘按下了: KeyJ', 'system', '2022-01-03 00:18:31', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (163, '鼠标左键按下', 'system', '2022-01-03 00:22:10', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (164, '鼠标左键按下', 'system', '2022-01-03 00:22:16', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (165, '键盘按下了: KeyD', 'system', '2022-01-03 00:22:17', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (166, '键盘按下了: KeyF', 'system', '2022-01-03 00:22:17', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (167, '键盘按下了: KeyG', 'system', '2022-01-03 00:22:17', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (168, '鼠标右键按下', 'system', '2022-01-03 00:22:18', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (169, '鼠标左键按下', 'system', '2022-01-03 01:04:52', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (170, '键盘按下了: KeyA', 'system', '2022-01-03 01:04:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (171, '键盘按下了: KeyS', 'system', '2022-01-03 01:04:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (172, '键盘按下了: KeyD', 'system', '2022-01-03 01:04:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (173, '键盘按下了: KeyF', 'system', '2022-01-03 01:04:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (174, '键盘按下了: KeyA', 'system', '2022-01-03 01:04:53', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
INSERT INTO `record` VALUES (175, '鼠标右键按下', 'system', '2022-01-03 01:04:54', 'chenguodeMacBook-Pro.local/127.0.0.1', '127.0.0.1');
COMMIT;

-- ----------------------------
-- Table structure for request_method
-- ----------------------------
DROP TABLE IF EXISTS `request_method`;
CREATE TABLE `request_method` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user` varchar(255) DEFAULT 'system',
  `ip_address` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `mac` varchar(255) DEFAULT NULL COMMENT 'mac地址',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri',
  `method` varchar(255) DEFAULT NULL COMMENT 'method',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_method
-- ----------------------------
BEGIN;
INSERT INTO `request_method` VALUES (1487, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1488, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1489, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1490, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1491, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1492, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:21:00');
INSERT INTO `request_method` VALUES (1493, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toSalesbackManager', 'GET', '2022-01-02 19:21:01');
INSERT INTO `request_method` VALUES (1494, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:21:01');
INSERT INTO `request_method` VALUES (1495, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/salesback/loadAllSalesback', 'GET', '2022-01-02 19:21:01');
INSERT INTO `request_method` VALUES (1496, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:21:01');
INSERT INTO `request_method` VALUES (1497, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toControllerTrace', 'GET', '2022-01-02 19:21:10');
INSERT INTO `request_method` VALUES (1498, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:29:21');
INSERT INTO `request_method` VALUES (1499, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:29:22');
INSERT INTO `request_method` VALUES (1500, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:29:22');
INSERT INTO `request_method` VALUES (1501, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:29:22');
INSERT INTO `request_method` VALUES (1502, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:29:22');
INSERT INTO `request_method` VALUES (1503, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:29:22');
INSERT INTO `request_method` VALUES (1504, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toGoodsManager', 'GET', '2022-01-02 19:29:27');
INSERT INTO `request_method` VALUES (1505, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/file/showImageByPath', 'GET', '2022-01-02 19:29:28');
INSERT INTO `request_method` VALUES (1506, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoods', 'GET', '2022-01-02 19:29:28');
INSERT INTO `request_method` VALUES (1507, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/provider/loadAllProviderForSelect', 'GET', '2022-01-02 19:29:28');
INSERT INTO `request_method` VALUES (1508, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/type/loadAllTypeForSelect', 'GET', '2022-01-02 19:29:28');
INSERT INTO `request_method` VALUES (1509, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:29:28');
INSERT INTO `request_method` VALUES (1510, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:29:29');
INSERT INTO `request_method` VALUES (1511, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:29:29');
INSERT INTO `request_method` VALUES (1512, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:29:29');
INSERT INTO `request_method` VALUES (1513, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:34');
INSERT INTO `request_method` VALUES (1514, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:34');
INSERT INTO `request_method` VALUES (1515, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:34');
INSERT INTO `request_method` VALUES (1516, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:34');
INSERT INTO `request_method` VALUES (1517, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:34');
INSERT INTO `request_method` VALUES (1518, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:29:35');
INSERT INTO `request_method` VALUES (1519, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1520, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1521, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1522, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1523, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1524, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:36:49');
INSERT INTO `request_method` VALUES (1525, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 19:36:51');
INSERT INTO `request_method` VALUES (1526, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 19:36:51');
INSERT INTO `request_method` VALUES (1527, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 19:36:51');
INSERT INTO `request_method` VALUES (1528, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:36:52');
INSERT INTO `request_method` VALUES (1529, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:36:52');
INSERT INTO `request_method` VALUES (1530, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:36:52');
INSERT INTO `request_method` VALUES (1531, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:36:53');
INSERT INTO `request_method` VALUES (1532, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:36:54');
INSERT INTO `request_method` VALUES (1533, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/', 'GET', '2022-01-02 19:37:01');
INSERT INTO `request_method` VALUES (1534, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-02 19:37:01');
INSERT INTO `request_method` VALUES (1535, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/', 'GET', '2022-01-02 19:37:02');
INSERT INTO `request_method` VALUES (1536, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-02 19:37:02');
INSERT INTO `request_method` VALUES (1537, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toLogin', 'GET', '2022-01-02 19:37:02');
INSERT INTO `request_method` VALUES (1538, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 19:37:02');
INSERT INTO `request_method` VALUES (1539, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1540, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1541, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1542, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1543, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1544, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1545, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:37:11');
INSERT INTO `request_method` VALUES (1546, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1547, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1548, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1549, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1550, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1551, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:13');
INSERT INTO `request_method` VALUES (1552, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:37:16');
INSERT INTO `request_method` VALUES (1553, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:37:16');
INSERT INTO `request_method` VALUES (1554, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuMaxOrderNum', 'GET', '2022-01-02 19:37:17');
INSERT INTO `request_method` VALUES (1555, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/addMenu', 'POST', '2022-01-02 19:37:35');
INSERT INTO `request_method` VALUES (1556, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:37:35');
INSERT INTO `request_method` VALUES (1557, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:35');
INSERT INTO `request_method` VALUES (1558, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:35');
INSERT INTO `request_method` VALUES (1559, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 19:37:51');
INSERT INTO `request_method` VALUES (1560, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:37:51');
INSERT INTO `request_method` VALUES (1561, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:51');
INSERT INTO `request_method` VALUES (1562, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:37:51');
INSERT INTO `request_method` VALUES (1563, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1564, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1565, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1566, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1567, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1568, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:37:54');
INSERT INTO `request_method` VALUES (1569, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toNoticeManager', 'GET', '2022-01-02 19:38:01');
INSERT INTO `request_method` VALUES (1570, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:38:01');
INSERT INTO `request_method` VALUES (1571, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1572, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1573, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1574, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1575, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1576, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:38:03');
INSERT INTO `request_method` VALUES (1577, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:38:10');
INSERT INTO `request_method` VALUES (1578, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:38:11');
INSERT INTO `request_method` VALUES (1579, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/checkMenuHasChildrenNode', 'POST', '2022-01-02 19:38:13');
INSERT INTO `request_method` VALUES (1580, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 19:38:18');
INSERT INTO `request_method` VALUES (1581, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:38:18');
INSERT INTO `request_method` VALUES (1582, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:38:18');
INSERT INTO `request_method` VALUES (1583, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:38:18');
INSERT INTO `request_method` VALUES (1584, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1585, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1586, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1587, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1588, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1589, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:38:19');
INSERT INTO `request_method` VALUES (1590, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:38:22');
INSERT INTO `request_method` VALUES (1591, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-02 19:38:22');
INSERT INTO `request_method` VALUES (1592, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1593, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1594, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1595, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1596, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1597, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:38:45');
INSERT INTO `request_method` VALUES (1598, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:38:52');
INSERT INTO `request_method` VALUES (1599, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toControllerTrace', 'GET', '2022-01-02 19:38:59');
INSERT INTO `request_method` VALUES (1600, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1601, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1602, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1603, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1604, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1605, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:10');
INSERT INTO `request_method` VALUES (1606, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:12');
INSERT INTO `request_method` VALUES (1607, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:39:20');
INSERT INTO `request_method` VALUES (1608, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:39:20');
INSERT INTO `request_method` VALUES (1609, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:39:20');
INSERT INTO `request_method` VALUES (1610, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:39:21');
INSERT INTO `request_method` VALUES (1611, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:39:21');
INSERT INTO `request_method` VALUES (1612, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:39:21');
INSERT INTO `request_method` VALUES (1613, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/', 'GET', '2022-01-02 19:39:23');
INSERT INTO `request_method` VALUES (1614, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-02 19:39:23');
INSERT INTO `request_method` VALUES (1615, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toLogin', 'GET', '2022-01-02 19:39:23');
INSERT INTO `request_method` VALUES (1616, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 19:39:23');
INSERT INTO `request_method` VALUES (1617, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 19:39:32');
INSERT INTO `request_method` VALUES (1618, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 19:39:32');
INSERT INTO `request_method` VALUES (1619, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 19:39:32');
INSERT INTO `request_method` VALUES (1620, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1621, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1622, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1623, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1624, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1625, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1626, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:39:36');
INSERT INTO `request_method` VALUES (1627, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1628, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1629, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1630, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1631, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1632, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:38');
INSERT INTO `request_method` VALUES (1633, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:40');
INSERT INTO `request_method` VALUES (1634, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:41');
INSERT INTO `request_method` VALUES (1635, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:42');
INSERT INTO `request_method` VALUES (1636, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/checkMenuHasChildrenNode', 'POST', '2022-01-02 19:39:43');
INSERT INTO `request_method` VALUES (1637, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/deleteMenu', 'POST', '2022-01-02 19:39:44');
INSERT INTO `request_method` VALUES (1638, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:44');
INSERT INTO `request_method` VALUES (1639, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:44');
INSERT INTO `request_method` VALUES (1640, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:44');
INSERT INTO `request_method` VALUES (1641, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:45');
INSERT INTO `request_method` VALUES (1642, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 19:39:56');
INSERT INTO `request_method` VALUES (1643, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 19:39:56');
INSERT INTO `request_method` VALUES (1644, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:56');
INSERT INTO `request_method` VALUES (1645, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 19:39:56');
INSERT INTO `request_method` VALUES (1646, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toControllerTrace', 'GET', '2022-01-02 19:40:01');
INSERT INTO `request_method` VALUES (1647, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:40:04');
INSERT INTO `request_method` VALUES (1648, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1649, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1650, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1651, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1652, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1653, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:40:08');
INSERT INTO `request_method` VALUES (1654, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toInportManager', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1655, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/loadAllInport', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1656, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1657, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/provider/loadAllProviderForSelect', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1658, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1659, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:40:18');
INSERT INTO `request_method` VALUES (1660, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:40:19');
INSERT INTO `request_method` VALUES (1661, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:40:19');
INSERT INTO `request_method` VALUES (1662, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:40:24');
INSERT INTO `request_method` VALUES (1663, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1664, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1665, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1666, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1667, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1668, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:40:26');
INSERT INTO `request_method` VALUES (1669, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:40:30');
INSERT INTO `request_method` VALUES (1670, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toSalesManager', 'GET', '2022-01-02 19:40:58');
INSERT INTO `request_method` VALUES (1671, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sales/loadAllSales', 'GET', '2022-01-02 19:40:58');
INSERT INTO `request_method` VALUES (1672, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:40:58');
INSERT INTO `request_method` VALUES (1673, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:40:58');
INSERT INTO `request_method` VALUES (1674, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:40:59');
INSERT INTO `request_method` VALUES (1675, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:41:00');
INSERT INTO `request_method` VALUES (1676, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:41:00');
INSERT INTO `request_method` VALUES (1677, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:41:00');
INSERT INTO `request_method` VALUES (1678, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:41:00');
INSERT INTO `request_method` VALUES (1679, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:41:33');
INSERT INTO `request_method` VALUES (1680, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:41:34');
INSERT INTO `request_method` VALUES (1681, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:41:34');
INSERT INTO `request_method` VALUES (1682, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:41:34');
INSERT INTO `request_method` VALUES (1683, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:41:34');
INSERT INTO `request_method` VALUES (1684, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:41:34');
INSERT INTO `request_method` VALUES (1685, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:41:38');
INSERT INTO `request_method` VALUES (1686, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:41:39');
INSERT INTO `request_method` VALUES (1687, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:41:40');
INSERT INTO `request_method` VALUES (1688, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:41:40');
INSERT INTO `request_method` VALUES (1689, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:41:40');
INSERT INTO `request_method` VALUES (1690, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:41:40');
INSERT INTO `request_method` VALUES (1691, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:41:40');
INSERT INTO `request_method` VALUES (1692, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:41:42');
INSERT INTO `request_method` VALUES (1693, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1694, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1695, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1696, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1697, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1698, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:42:22');
INSERT INTO `request_method` VALUES (1699, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:42:32');
INSERT INTO `request_method` VALUES (1700, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:42:32');
INSERT INTO `request_method` VALUES (1701, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:42:32');
INSERT INTO `request_method` VALUES (1702, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:42:32');
INSERT INTO `request_method` VALUES (1703, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:42:37');
INSERT INTO `request_method` VALUES (1704, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:38');
INSERT INTO `request_method` VALUES (1705, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:38');
INSERT INTO `request_method` VALUES (1706, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:38');
INSERT INTO `request_method` VALUES (1707, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:38');
INSERT INTO `request_method` VALUES (1708, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:39');
INSERT INTO `request_method` VALUES (1709, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:39');
INSERT INTO `request_method` VALUES (1710, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-02 19:42:39');
INSERT INTO `request_method` VALUES (1711, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-02 19:42:39');
INSERT INTO `request_method` VALUES (1712, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1713, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1714, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1715, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1716, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1717, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:42:42');
INSERT INTO `request_method` VALUES (1718, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:42:47');
INSERT INTO `request_method` VALUES (1719, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:42:47');
INSERT INTO `request_method` VALUES (1720, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:42:47');
INSERT INTO `request_method` VALUES (1721, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1722, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1723, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1724, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1725, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1726, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 19:46:51');
INSERT INTO `request_method` VALUES (1727, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 19:46:53');
INSERT INTO `request_method` VALUES (1728, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:46:53');
INSERT INTO `request_method` VALUES (1729, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:46:53');
INSERT INTO `request_method` VALUES (1730, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toControllerTrace', 'GET', '2022-01-02 19:46:55');
INSERT INTO `request_method` VALUES (1731, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 19:46:55');
INSERT INTO `request_method` VALUES (1732, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 19:46:55');
INSERT INTO `request_method` VALUES (1733, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-02 23:09:10');
INSERT INTO `request_method` VALUES (1734, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-02 23:09:10');
INSERT INTO `request_method` VALUES (1735, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toLogin', 'GET', '2022-01-02 23:09:10');
INSERT INTO `request_method` VALUES (1736, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 23:09:10');
INSERT INTO `request_method` VALUES (1737, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 23:09:19');
INSERT INTO `request_method` VALUES (1738, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 23:09:19');
INSERT INTO `request_method` VALUES (1739, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 23:09:19');
INSERT INTO `request_method` VALUES (1740, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 23:09:23');
INSERT INTO `request_method` VALUES (1741, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 23:09:23');
INSERT INTO `request_method` VALUES (1742, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-02 23:09:23');
INSERT INTO `request_method` VALUES (1743, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1744, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1745, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1746, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1747, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1748, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1749, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 23:09:31');
INSERT INTO `request_method` VALUES (1750, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1751, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1752, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1753, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1754, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1755, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:11:33');
INSERT INTO `request_method` VALUES (1756, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:11:36');
INSERT INTO `request_method` VALUES (1757, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:11:37');
INSERT INTO `request_method` VALUES (1758, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuMaxOrderNum', 'GET', '2022-01-02 23:11:39');
INSERT INTO `request_method` VALUES (1759, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/addMenu', 'POST', '2022-01-02 23:11:59');
INSERT INTO `request_method` VALUES (1760, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:11:59');
INSERT INTO `request_method` VALUES (1761, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:11:59');
INSERT INTO `request_method` VALUES (1762, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:11:59');
INSERT INTO `request_method` VALUES (1763, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1764, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1765, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1766, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1767, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1768, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 23:12:01');
INSERT INTO `request_method` VALUES (1769, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1770, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1771, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1772, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1773, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1774, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:12:51');
INSERT INTO `request_method` VALUES (1775, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:12:53');
INSERT INTO `request_method` VALUES (1776, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 23:13:06');
INSERT INTO `request_method` VALUES (1777, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:13:06');
INSERT INTO `request_method` VALUES (1778, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:06');
INSERT INTO `request_method` VALUES (1779, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:06');
INSERT INTO `request_method` VALUES (1780, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 23:13:09');
INSERT INTO `request_method` VALUES (1781, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:13:09');
INSERT INTO `request_method` VALUES (1782, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:09');
INSERT INTO `request_method` VALUES (1783, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:09');
INSERT INTO `request_method` VALUES (1784, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1785, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1786, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1787, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1788, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1789, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 23:13:10');
INSERT INTO `request_method` VALUES (1790, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordRadius', 'GET', '2022-01-02 23:13:12');
INSERT INTO `request_method` VALUES (1791, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-02 23:13:12');
INSERT INTO `request_method` VALUES (1792, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1793, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1794, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1795, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1796, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1797, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:13:50');
INSERT INTO `request_method` VALUES (1798, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:13:52');
INSERT INTO `request_method` VALUES (1799, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-02 23:14:07');
INSERT INTO `request_method` VALUES (1800, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-02 23:14:07');
INSERT INTO `request_method` VALUES (1801, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:14:07');
INSERT INTO `request_method` VALUES (1802, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-02 23:14:07');
INSERT INTO `request_method` VALUES (1803, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-02 23:14:08');
INSERT INTO `request_method` VALUES (1804, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-02 23:14:09');
INSERT INTO `request_method` VALUES (1805, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-02 23:14:09');
INSERT INTO `request_method` VALUES (1806, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-02 23:14:09');
INSERT INTO `request_method` VALUES (1807, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-02 23:14:09');
INSERT INTO `request_method` VALUES (1808, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-02 23:14:09');
INSERT INTO `request_method` VALUES (1809, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-02 23:14:10');
INSERT INTO `request_method` VALUES (1810, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-02 23:14:13');
INSERT INTO `request_method` VALUES (1811, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-02 23:14:14');
INSERT INTO `request_method` VALUES (1812, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-02 23:14:14');
INSERT INTO `request_method` VALUES (1813, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-03 00:15:40');
INSERT INTO `request_method` VALUES (1814, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toLogin', 'GET', '2022-01-03 00:15:40');
INSERT INTO `request_method` VALUES (1815, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-03 00:15:40');
INSERT INTO `request_method` VALUES (1816, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1817, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1818, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1819, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1820, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1821, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1822, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:15:48');
INSERT INTO `request_method` VALUES (1823, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:15:50');
INSERT INTO `request_method` VALUES (1824, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:15:50');
INSERT INTO `request_method` VALUES (1825, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:15:50');
INSERT INTO `request_method` VALUES (1826, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:15:53');
INSERT INTO `request_method` VALUES (1827, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:15:57');
INSERT INTO `request_method` VALUES (1828, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1829, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1830, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1831, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1832, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1833, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1834, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1835, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1836, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:15:58');
INSERT INTO `request_method` VALUES (1837, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:18:11');
INSERT INTO `request_method` VALUES (1838, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1839, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1840, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1841, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1842, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1843, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:18:12');
INSERT INTO `request_method` VALUES (1844, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:18:18');
INSERT INTO `request_method` VALUES (1845, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:18:19');
INSERT INTO `request_method` VALUES (1846, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:18:19');
INSERT INTO `request_method` VALUES (1847, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:18:19');
INSERT INTO `request_method` VALUES (1848, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:18:30');
INSERT INTO `request_method` VALUES (1849, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1850, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1851, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1852, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1853, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1854, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:18:31');
INSERT INTO `request_method` VALUES (1855, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:22:10');
INSERT INTO `request_method` VALUES (1856, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:22:10');
INSERT INTO `request_method` VALUES (1857, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:22:10');
INSERT INTO `request_method` VALUES (1858, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:22:10');
INSERT INTO `request_method` VALUES (1859, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:22:11');
INSERT INTO `request_method` VALUES (1860, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:22:11');
INSERT INTO `request_method` VALUES (1861, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:22:11');
INSERT INTO `request_method` VALUES (1862, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-03 00:22:15');
INSERT INTO `request_method` VALUES (1863, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:22:15');
INSERT INTO `request_method` VALUES (1864, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:22:15');
INSERT INTO `request_method` VALUES (1865, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:22:16');
INSERT INTO `request_method` VALUES (1866, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:22:16');
INSERT INTO `request_method` VALUES (1867, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:22:16');
INSERT INTO `request_method` VALUES (1868, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:22:16');
INSERT INTO `request_method` VALUES (1869, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1870, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1871, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1872, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1873, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1874, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1875, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/getKeyRadius', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1876, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1877, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:22:17');
INSERT INTO `request_method` VALUES (1878, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 00:22:18');
INSERT INTO `request_method` VALUES (1879, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1880, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1881, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1882, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1883, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1884, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:33:14');
INSERT INTO `request_method` VALUES (1885, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:33:18');
INSERT INTO `request_method` VALUES (1886, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:33:18');
INSERT INTO `request_method` VALUES (1887, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1888, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1889, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1890, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1891, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1892, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:34:43');
INSERT INTO `request_method` VALUES (1893, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:34:46');
INSERT INTO `request_method` VALUES (1894, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:34:46');
INSERT INTO `request_method` VALUES (1895, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1896, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1897, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1898, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1899, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1900, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:35:17');
INSERT INTO `request_method` VALUES (1901, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:35:20');
INSERT INTO `request_method` VALUES (1902, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/error', 'GET', '2022-01-03 00:35:20');
INSERT INTO `request_method` VALUES (1903, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:38:03');
INSERT INTO `request_method` VALUES (1904, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:38:04');
INSERT INTO `request_method` VALUES (1905, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:38:04');
INSERT INTO `request_method` VALUES (1906, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:38:04');
INSERT INTO `request_method` VALUES (1907, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:38:04');
INSERT INTO `request_method` VALUES (1908, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:38:04');
INSERT INTO `request_method` VALUES (1909, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:38:05');
INSERT INTO `request_method` VALUES (1910, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1911, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1912, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1913, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1914, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1915, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:38:13');
INSERT INTO `request_method` VALUES (1916, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:38:17');
INSERT INTO `request_method` VALUES (1917, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:39:10');
INSERT INTO `request_method` VALUES (1918, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:39:11');
INSERT INTO `request_method` VALUES (1919, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:39:11');
INSERT INTO `request_method` VALUES (1920, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:39:11');
INSERT INTO `request_method` VALUES (1921, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:39:11');
INSERT INTO `request_method` VALUES (1922, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:39:11');
INSERT INTO `request_method` VALUES (1923, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:39:17');
INSERT INTO `request_method` VALUES (1924, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:39:53');
INSERT INTO `request_method` VALUES (1925, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:39:53');
INSERT INTO `request_method` VALUES (1926, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:39:54');
INSERT INTO `request_method` VALUES (1927, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:39:54');
INSERT INTO `request_method` VALUES (1928, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:39:54');
INSERT INTO `request_method` VALUES (1929, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:39:54');
INSERT INTO `request_method` VALUES (1930, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-03 00:40:00');
INSERT INTO `request_method` VALUES (1931, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:40:00');
INSERT INTO `request_method` VALUES (1932, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:40:00');
INSERT INTO `request_method` VALUES (1933, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:40:01');
INSERT INTO `request_method` VALUES (1934, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:40:01');
INSERT INTO `request_method` VALUES (1935, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:40:01');
INSERT INTO `request_method` VALUES (1936, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:45:41');
INSERT INTO `request_method` VALUES (1937, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:45:41');
INSERT INTO `request_method` VALUES (1938, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:45:41');
INSERT INTO `request_method` VALUES (1939, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:45:42');
INSERT INTO `request_method` VALUES (1940, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:45:42');
INSERT INTO `request_method` VALUES (1941, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:45:42');
INSERT INTO `request_method` VALUES (1942, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:45:45');
INSERT INTO `request_method` VALUES (1943, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:45:45');
INSERT INTO `request_method` VALUES (1944, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:45:45');
INSERT INTO `request_method` VALUES (1945, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-03 00:48:14');
INSERT INTO `request_method` VALUES (1946, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:48:14');
INSERT INTO `request_method` VALUES (1947, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:48:14');
INSERT INTO `request_method` VALUES (1948, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-03 00:50:12');
INSERT INTO `request_method` VALUES (1949, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1950, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1951, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1952, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1953, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1954, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 00:50:13');
INSERT INTO `request_method` VALUES (1955, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 00:50:16');
INSERT INTO `request_method` VALUES (1956, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 00:50:16');
INSERT INTO `request_method` VALUES (1957, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 00:50:16');
INSERT INTO `request_method` VALUES (1958, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 01:04:46');
INSERT INTO `request_method` VALUES (1959, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 01:04:47');
INSERT INTO `request_method` VALUES (1960, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 01:04:47');
INSERT INTO `request_method` VALUES (1961, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 01:04:47');
INSERT INTO `request_method` VALUES (1962, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 01:04:47');
INSERT INTO `request_method` VALUES (1963, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 01:04:47');
INSERT INTO `request_method` VALUES (1964, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toKeyRadius', 'GET', '2022-01-03 01:04:49');
INSERT INTO `request_method` VALUES (1965, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 01:04:49');
INSERT INTO `request_method` VALUES (1966, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 01:04:49');
INSERT INTO `request_method` VALUES (1967, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 01:04:52');
INSERT INTO `request_method` VALUES (1968, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 01:04:53');
INSERT INTO `request_method` VALUES (1969, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 01:04:53');
INSERT INTO `request_method` VALUES (1970, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 01:04:53');
INSERT INTO `request_method` VALUES (1971, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 01:04:53');
INSERT INTO `request_method` VALUES (1972, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/keyboard', 'GET', '2022-01-03 01:04:53');
INSERT INTO `request_method` VALUES (1973, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/record/mouse', 'GET', '2022-01-03 01:04:54');
INSERT INTO `request_method` VALUES (1974, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1975, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1976, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1977, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1978, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1979, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 01:04:56');
INSERT INTO `request_method` VALUES (1980, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1981, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1982, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1983, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1984, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1985, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:04:58');
INSERT INTO `request_method` VALUES (1986, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:00');
INSERT INTO `request_method` VALUES (1987, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1988, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1989, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1990, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/index.html', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1991, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toLogin', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1992, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/getCode', 'GET', '2022-01-03 01:05:05');
INSERT INTO `request_method` VALUES (1993, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/login/login', 'POST', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1994, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1995, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1996, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1997, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1998, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (1999, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 01:05:13');
INSERT INTO `request_method` VALUES (2000, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuManager', 'GET', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2001, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuLeft', 'GET', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2002, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toMenuRight', 'GET', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2003, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2004, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2005, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:17');
INSERT INTO `request_method` VALUES (2006, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:20');
INSERT INTO `request_method` VALUES (2007, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuMaxOrderNum', 'GET', '2022-01-03 01:05:21');
INSERT INTO `request_method` VALUES (2008, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/addMenu', 'POST', '2022-01-03 01:05:35');
INSERT INTO `request_method` VALUES (2009, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:36');
INSERT INTO `request_method` VALUES (2010, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:36');
INSERT INTO `request_method` VALUES (2011, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:36');
INSERT INTO `request_method` VALUES (2012, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:49');
INSERT INTO `request_method` VALUES (2013, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/updateMenu', 'POST', '2022-01-03 01:05:53');
INSERT INTO `request_method` VALUES (2014, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadAllMenu', 'GET', '2022-01-03 01:05:53');
INSERT INTO `request_method` VALUES (2015, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:53');
INSERT INTO `request_method` VALUES (2016, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadMenuManagerLeftTreeJson', 'POST', '2022-01-03 01:05:53');
INSERT INTO `request_method` VALUES (2017, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/index', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2018, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toDeskManager', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2019, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/menu/loadIndexLeftMenuJson', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2020, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/echarts', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2021, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/inport/pandian', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2022, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/notice/loadAllNotice', 'GET', '2022-01-03 01:05:54');
INSERT INTO `request_method` VALUES (2023, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/sys/toRoleManager', 'GET', '2022-01-03 01:05:56');
INSERT INTO `request_method` VALUES (2024, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/role/loadAllRole', 'GET', '2022-01-03 01:05:56');
INSERT INTO `request_method` VALUES (2025, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toMouseRadius', 'GET', '2022-01-03 01:05:58');
INSERT INTO `request_method` VALUES (2026, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 01:05:58');
INSERT INTO `request_method` VALUES (2027, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 01:05:58');
INSERT INTO `request_method` VALUES (2028, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toControllerTrace', 'GET', '2022-01-03 01:08:14');
INSERT INTO `request_method` VALUES (2029, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 01:08:15');
INSERT INTO `request_method` VALUES (2030, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 01:08:15');
INSERT INTO `request_method` VALUES (2031, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/bus/toRecordTrace', 'GET', '2022-01-03 01:08:19');
INSERT INTO `request_method` VALUES (2032, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/customer/loadAllCustomerForSelect', 'GET', '2022-01-03 01:08:19');
INSERT INTO `request_method` VALUES (2033, 'system', '127.0.0.1', 'chenguodeMacBook-Pro.local/127.0.0.1', '/goods/loadAllGoodsForSelect', 'GET', '2022-01-03 01:08:19');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL COMMENT '是否展开，0不展开，1展开',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `createtime` datetime DEFAULT NULL,
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, 0, '总经办', 1, '大BOSS', '深圳', 1, 1, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (2, 1, '销售部', 0, '程序员屌丝', '武汉', 1, 2, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (3, 1, '运营部', 0, '无', '武汉', 1, 3, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (4, 1, '生产部', 0, '无', '武汉', 1, 4, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (5, 2, '销售一部', 0, '销售一部', '武汉', 1, 5, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (6, 2, '销售二部', 0, '销售二部', '武汉', 1, 6, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (7, 3, '运营一部', 0, '运营一部', '武汉', 1, 7, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (8, 2, '销售三部', 0, '销售三部', '11', 1, 8, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (9, 2, '销售四部', 0, '销售四部', '222', 1, 9, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (10, 2, '销售五部', 0, '销售五部', '33', 1, 10, '2021-03-28 14:06:32', 1);
INSERT INTO `sys_dept` VALUES (18, 4, '生产一部', 0, '生产食品', '武汉', 1, 11, '2021-03-28 09:49:38', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_kaoqin
-- ----------------------------
DROP TABLE IF EXISTS `sys_kaoqin`;
CREATE TABLE `sys_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_kaoqin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_leave`;
CREATE TABLE `sys_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `stu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_leave
-- ----------------------------
BEGIN;
INSERT INTO `sys_leave` VALUES (31, 'sss', 'sss', '2021-10-26 06:10:17', '通过', '超级管理员');
INSERT INTO `sys_leave` VALUES (32, 'ddd', 'ddd', '2021-10-26 06:10:24', '审核中', '超级管理员');
INSERT INTO `sys_leave` VALUES (33, '333', '3333', '2021-10-26 06:10:35', '拒绝', '超级管理员1');
INSERT INTO `sys_leave` VALUES (34, '肚子疼', '<p><span>肚子疼</span></p>', '2021-10-26 12:12:18', '审核中', '小明');
COMMIT;

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
BEGIN;
INSERT INTO `sys_loginfo` VALUES (91, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 09:42:17');
INSERT INTO `sys_loginfo` VALUES (92, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 09:49:03');
INSERT INTO `sys_loginfo` VALUES (93, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 11:27:54');
INSERT INTO `sys_loginfo` VALUES (94, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 11:38:57');
INSERT INTO `sys_loginfo` VALUES (95, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 11:41:13');
INSERT INTO `sys_loginfo` VALUES (96, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 11:59:59');
INSERT INTO `sys_loginfo` VALUES (97, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 12:01:24');
INSERT INTO `sys_loginfo` VALUES (98, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 12:03:32');
INSERT INTO `sys_loginfo` VALUES (99, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 12:06:11');
INSERT INTO `sys_loginfo` VALUES (100, '小明-xiaoming', '0:0:0:0:0:0:0:1', '2021-10-26 12:07:41');
INSERT INTO `sys_loginfo` VALUES (101, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-26 12:08:10');
INSERT INTO `sys_loginfo` VALUES (102, '小明-xiaoming', '0:0:0:0:0:0:0:1', '2021-10-26 12:09:55');
INSERT INTO `sys_loginfo` VALUES (103, '小明-xiaoming', '0:0:0:0:0:0:0:1', '2021-10-26 12:11:59');
INSERT INTO `sys_loginfo` VALUES (104, '超级管理员-system', '127.0.0.1', '2021-10-26 13:05:54');
INSERT INTO `sys_loginfo` VALUES (105, '超级管理员-system', '127.0.0.1', '2021-10-26 15:21:30');
INSERT INTO `sys_loginfo` VALUES (106, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-27 14:31:18');
INSERT INTO `sys_loginfo` VALUES (107, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-28 06:20:18');
INSERT INTO `sys_loginfo` VALUES (108, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 12:08:09');
INSERT INTO `sys_loginfo` VALUES (109, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 13:51:54');
INSERT INTO `sys_loginfo` VALUES (110, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 13:52:43');
INSERT INTO `sys_loginfo` VALUES (111, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 13:56:25');
INSERT INTO `sys_loginfo` VALUES (112, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:06:45');
INSERT INTO `sys_loginfo` VALUES (113, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:13:13');
INSERT INTO `sys_loginfo` VALUES (114, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:23:17');
INSERT INTO `sys_loginfo` VALUES (115, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:27:38');
INSERT INTO `sys_loginfo` VALUES (116, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:39:16');
INSERT INTO `sys_loginfo` VALUES (117, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:42:38');
INSERT INTO `sys_loginfo` VALUES (118, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:44:41');
INSERT INTO `sys_loginfo` VALUES (119, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 14:45:08');
INSERT INTO `sys_loginfo` VALUES (120, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:00:00');
INSERT INTO `sys_loginfo` VALUES (121, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:01:46');
INSERT INTO `sys_loginfo` VALUES (122, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:02:35');
INSERT INTO `sys_loginfo` VALUES (123, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:04:16');
INSERT INTO `sys_loginfo` VALUES (124, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:11:12');
INSERT INTO `sys_loginfo` VALUES (125, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:17:39');
INSERT INTO `sys_loginfo` VALUES (126, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:27:52');
INSERT INTO `sys_loginfo` VALUES (127, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:32:27');
INSERT INTO `sys_loginfo` VALUES (128, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 15:40:32');
INSERT INTO `sys_loginfo` VALUES (129, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 16:17:44');
INSERT INTO `sys_loginfo` VALUES (130, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 16:49:20');
INSERT INTO `sys_loginfo` VALUES (131, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-10-29 16:52:18');
INSERT INTO `sys_loginfo` VALUES (132, '超级管理员-system', '127.0.0.1', '2021-11-05 12:15:26');
INSERT INTO `sys_loginfo` VALUES (133, '超级管理员-system', '127.0.0.1', '2021-11-08 01:46:25');
INSERT INTO `sys_loginfo` VALUES (134, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 12:24:14');
INSERT INTO `sys_loginfo` VALUES (135, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 13:44:11');
INSERT INTO `sys_loginfo` VALUES (136, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:10:30');
INSERT INTO `sys_loginfo` VALUES (137, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:12:11');
INSERT INTO `sys_loginfo` VALUES (138, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:13:14');
INSERT INTO `sys_loginfo` VALUES (139, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:19:56');
INSERT INTO `sys_loginfo` VALUES (140, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:24:50');
INSERT INTO `sys_loginfo` VALUES (141, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 15:31:49');
INSERT INTO `sys_loginfo` VALUES (142, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:20:50');
INSERT INTO `sys_loginfo` VALUES (143, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:23:25');
INSERT INTO `sys_loginfo` VALUES (144, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:24:56');
INSERT INTO `sys_loginfo` VALUES (145, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:26:09');
INSERT INTO `sys_loginfo` VALUES (146, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:36:57');
INSERT INTO `sys_loginfo` VALUES (147, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:39:01');
INSERT INTO `sys_loginfo` VALUES (148, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:40:24');
INSERT INTO `sys_loginfo` VALUES (149, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 16:52:38');
INSERT INTO `sys_loginfo` VALUES (150, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 17:40:49');
INSERT INTO `sys_loginfo` VALUES (151, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 17:50:40');
INSERT INTO `sys_loginfo` VALUES (152, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 18:06:24');
INSERT INTO `sys_loginfo` VALUES (153, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 18:08:03');
INSERT INTO `sys_loginfo` VALUES (154, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 18:08:44');
INSERT INTO `sys_loginfo` VALUES (155, '超级管理员-system', '0:0:0:0:0:0:0:1', '2021-11-14 18:20:46');
INSERT INTO `sys_loginfo` VALUES (156, '超级管理员-system', '127.0.0.1', '2021-11-16 09:37:27');
INSERT INTO `sys_loginfo` VALUES (157, '超级管理员-system', '127.0.0.1', '2021-11-16 09:40:43');
INSERT INTO `sys_loginfo` VALUES (158, '超级管理员-system', '127.0.0.1', '2021-11-16 10:21:18');
INSERT INTO `sys_loginfo` VALUES (159, '超级管理员-system', '127.0.0.1', '2021-11-16 10:29:38');
INSERT INTO `sys_loginfo` VALUES (160, '超级管理员-system', '127.0.0.1', '2021-11-16 10:58:34');
INSERT INTO `sys_loginfo` VALUES (161, '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-01-01 14:35:19');
INSERT INTO `sys_loginfo` VALUES (162, '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-01-02 04:56:34');
INSERT INTO `sys_loginfo` VALUES (163, '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-01-02 06:42:00');
INSERT INTO `sys_loginfo` VALUES (164, '超级管理员-system', '127.0.0.1', '2022-01-02 06:50:40');
INSERT INTO `sys_loginfo` VALUES (165, '超级管理员-system', '127.0.0.1', '2022-01-02 06:57:53');
INSERT INTO `sys_loginfo` VALUES (166, '超级管理员-system', '127.0.0.1', '2022-01-02 07:10:13');
INSERT INTO `sys_loginfo` VALUES (167, '超级管理员-system', '127.0.0.1', '2022-01-02 07:40:12');
INSERT INTO `sys_loginfo` VALUES (168, '超级管理员-system', '127.0.0.1', '2022-01-02 08:09:48');
INSERT INTO `sys_loginfo` VALUES (169, '超级管理员-system', '127.0.0.1', '2022-01-02 08:31:24');
INSERT INTO `sys_loginfo` VALUES (170, '超级管理员-system', '127.0.0.1', '2022-01-02 08:34:08');
INSERT INTO `sys_loginfo` VALUES (171, '超级管理员-system', '127.0.0.1', '2022-01-02 08:46:47');
INSERT INTO `sys_loginfo` VALUES (172, '超级管理员-system', '127.0.0.1', '2022-01-02 08:46:50');
INSERT INTO `sys_loginfo` VALUES (173, '超级管理员-system', '127.0.0.1', '2022-01-02 08:48:09');
INSERT INTO `sys_loginfo` VALUES (174, '超级管理员-system', '127.0.0.1', '2022-01-02 08:53:19');
INSERT INTO `sys_loginfo` VALUES (175, '超级管理员-system', '127.0.0.1', '2022-01-02 08:53:57');
INSERT INTO `sys_loginfo` VALUES (176, '超级管理员-system', '127.0.0.1', '2022-01-02 09:00:45');
INSERT INTO `sys_loginfo` VALUES (177, '超级管理员-system', '127.0.0.1', '2022-01-02 09:02:27');
INSERT INTO `sys_loginfo` VALUES (178, '超级管理员-system', '127.0.0.1', '2022-01-02 10:36:39');
INSERT INTO `sys_loginfo` VALUES (179, '超级管理员-system', '127.0.0.1', '2022-01-02 10:54:22');
INSERT INTO `sys_loginfo` VALUES (180, '超级管理员-system', '127.0.0.1', '2022-01-02 11:20:41');
INSERT INTO `sys_loginfo` VALUES (181, '超级管理员-system', '127.0.0.1', '2022-01-02 11:37:11');
INSERT INTO `sys_loginfo` VALUES (182, '超级管理员-system', '127.0.0.1', '2022-01-02 11:39:36');
INSERT INTO `sys_loginfo` VALUES (183, '超级管理员-system', '127.0.0.1', '2022-01-02 15:09:31');
INSERT INTO `sys_loginfo` VALUES (184, '超级管理员-system', '127.0.0.1', '2022-01-02 16:15:48');
INSERT INTO `sys_loginfo` VALUES (185, '超级管理员-system', '127.0.0.1', '2022-01-02 16:50:13');
INSERT INTO `sys_loginfo` VALUES (186, '超级管理员-system', '127.0.0.1', '2022-01-02 17:05:13');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (17, '超市管理系统公告', '超市管理系统公告', '2021-10-20 15:34:51', '管理员');
INSERT INTO `sys_notice` VALUES (18, '超市管理系统公告1', '超市管理系统公告1', '2021-10-20 09:24:09', '管理员');
INSERT INTO `sys_notice` VALUES (19, '超市管理系统公告2', '超市管理系统公告3', '2021-10-20 09:24:59', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_pay
-- ----------------------------
DROP TABLE IF EXISTS `sys_pay`;
CREATE TABLE `sys_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_pay
-- ----------------------------
BEGIN;
INSERT INTO `sys_pay` VALUES (17, '超市管理系统公告', '超市管理系统公告', '2021-10-20 15:34:51', '管理员');
INSERT INTO `sys_pay` VALUES (19, '超市管理系统公告2', '超市管理系统公告3', '2021-10-20 09:24:59', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限编码[只有type=permission才有 user:view]',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用[0不可用，1可用]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES (1, 0, 'menu', '超市管理系统', NULL, '&#xe68e;', '', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (2, 1, 'menu', '商品管理', NULL, '&#xe857;', '', '', 0, 2, 1);
INSERT INTO `sys_permission` VALUES (3, 1, 'menu', '进货管理', NULL, '&#xe857;', '', '', 0, 2, 1);
INSERT INTO `sys_permission` VALUES (4, 1, 'menu', '库存管理', NULL, '&#xe645;', '', '', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (5, 1, 'menu', '销售管理', NULL, '&#xe611;', '', '', 0, 6, 1);
INSERT INTO `sys_permission` VALUES (6, 1, 'menu', '财务管理', NULL, '&#xe628;', '', '', 0, 1, 1);
INSERT INTO `sys_permission` VALUES (7, 1, 'menu', '人事管理', NULL, '&#xe628;', '', '', 0, 4, 1);
INSERT INTO `sys_permission` VALUES (8, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 0, 5, 1);
INSERT INTO `sys_permission` VALUES (9, 2, 'menu', '商品管理', NULL, '&#xe657;', '/bus/toGoodsManager', '', 0, 9, 1);
INSERT INTO `sys_permission` VALUES (10, 4, 'menu', '商品入库', NULL, '&#xe756;', '/bus/toInportManager', '', 1, 10, 1);
INSERT INTO `sys_permission` VALUES (11, 4, 'menu', '商品出库', NULL, '&#xe65a;', '/bus/toOutportManager', '', 1, 11, 1);
INSERT INTO `sys_permission` VALUES (12, 5, 'menu', '销售订单', NULL, '&#xe65b;', '/bus/toSalesManager', '', 1, 12, 1);
INSERT INTO `sys_permission` VALUES (13, 5, 'menu', '销售退货', NULL, '&#xe770;', '/bus/toSalesbackManager', '', 0, 13, 1);
INSERT INTO `sys_permission` VALUES (14, 7, 'menu', '部门管理', NULL, '&#xe770;', '/sys/toDeptManager', '', 0, 14, 1);
INSERT INTO `sys_permission` VALUES (15, 8, 'menu', '菜单管理', NULL, '&#xe857;', '/sys/toMenuManager', '', 0, 15, 1);
INSERT INTO `sys_permission` VALUES (16, 8, 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', '', 0, 16, 1);
INSERT INTO `sys_permission` VALUES (17, 8, 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', '', 0, 17, 1);
INSERT INTO `sys_permission` VALUES (18, 7, 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', 0, 18, 1);
INSERT INTO `sys_permission` VALUES (21, 8, 'menu', '登陆日志', NULL, '&#xe675;', '/sys/toLoginfoManager', '', 0, 21, 1);
INSERT INTO `sys_permission` VALUES (22, 8, 'menu', '系统公告', NULL, '&#xe756;', '/sys/toNoticeManager', '', 0, 22, 0);
INSERT INTO `sys_permission` VALUES (23, 8, 'menu', '图标管理', NULL, '&#xe670;', '../resources/page/icon.html', '', 0, 23, 0);
INSERT INTO `sys_permission` VALUES (30, 14, 'permission', '添加部门', 'dept:create', '', NULL, NULL, 0, 24, 1);
INSERT INTO `sys_permission` VALUES (31, 14, 'permission', '修改部门', 'dept:update', '', NULL, NULL, 0, 26, 1);
INSERT INTO `sys_permission` VALUES (32, 14, 'permission', '删除部门', 'dept:delete', '', NULL, NULL, 0, 27, 1);
INSERT INTO `sys_permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `sys_permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `sys_permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `sys_permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `sys_permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `sys_permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `sys_permission` VALUES (42, 17, 'permission', '添加角色', 'role:create', '', NULL, NULL, 0, 37, 1);
INSERT INTO `sys_permission` VALUES (43, 17, 'permission', '修改角色', 'role:update', '', NULL, NULL, 0, 38, 1);
INSERT INTO `sys_permission` VALUES (44, 17, 'permission', '删除角色', 'role:delete', '', NULL, NULL, 0, 39, 1);
INSERT INTO `sys_permission` VALUES (46, 17, 'permission', '分配权限', 'role:selectPermission', '', NULL, NULL, 0, 41, 1);
INSERT INTO `sys_permission` VALUES (47, 18, 'permission', '添加用户', 'user:create', '', NULL, NULL, 0, 42, 1);
INSERT INTO `sys_permission` VALUES (48, 18, 'permission', '修改用户', 'user:update', '', NULL, NULL, 0, 43, 1);
INSERT INTO `sys_permission` VALUES (49, 18, 'permission', '删除用户', 'user:delete', '', NULL, NULL, 0, 44, 1);
INSERT INTO `sys_permission` VALUES (51, 18, 'permission', '用户分配角色', 'user:selectRole', '', NULL, NULL, 0, 46, 1);
INSERT INTO `sys_permission` VALUES (52, 18, 'permission', '重置密码', 'user:resetPwd', NULL, NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` VALUES (53, 14, 'permission', '部门查询', 'dept:view', NULL, NULL, NULL, 0, 48, 1);
INSERT INTO `sys_permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` VALUES (56, 17, 'permission', '角色查询', 'role:view', NULL, NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` VALUES (57, 18, 'permission', '用户查询', 'user:view', NULL, NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` VALUES (68, 200, 'permission', '客户查询', 'customer:view', NULL, NULL, NULL, NULL, 60, 1);
INSERT INTO `sys_permission` VALUES (69, 200, 'permission', '客户添加', 'customer:create', NULL, NULL, NULL, NULL, 61, 1);
INSERT INTO `sys_permission` VALUES (70, 200, 'permission', '客户修改', 'customer:update', NULL, NULL, NULL, NULL, 62, 1);
INSERT INTO `sys_permission` VALUES (71, 200, 'permission', '客户删除', 'customer:delete', NULL, NULL, NULL, NULL, 63, 1);
INSERT INTO `sys_permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `sys_permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `sys_permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `sys_permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, NULL, 68, 1);
INSERT INTO `sys_permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, NULL, 69, 1);
INSERT INTO `sys_permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, NULL, 70, 1);
INSERT INTO `sys_permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, NULL, 71, 1);
INSERT INTO `sys_permission` VALUES (81, 201, 'permission', '供应商查询', 'provider:view', NULL, NULL, NULL, NULL, 73, 1);
INSERT INTO `sys_permission` VALUES (82, 201, 'permission', '供应商添加', 'provider:create', NULL, NULL, NULL, NULL, 74, 1);
INSERT INTO `sys_permission` VALUES (83, 201, 'permission', '供应商修改', 'provider:update', NULL, NULL, NULL, NULL, 75, 1);
INSERT INTO `sys_permission` VALUES (84, 201, 'permission', '供应商删除', 'provider:delete', NULL, NULL, NULL, NULL, 76, 1);
INSERT INTO `sys_permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, NULL, 78, 1);
INSERT INTO `sys_permission` VALUES (91, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, NULL, 0, 79, 1);
INSERT INTO `sys_permission` VALUES (92, 9, 'permission', '商品添加', 'goods:create', NULL, NULL, NULL, 0, 80, 1);
INSERT INTO `sys_permission` VALUES (116, 9, 'permission', '商品删除', 'goods:delete', NULL, NULL, NULL, 0, 84, 1);
INSERT INTO `sys_permission` VALUES (117, 9, 'permission', '商品修改', 'goods:update', NULL, NULL, NULL, 0, 85, 1);
INSERT INTO `sys_permission` VALUES (118, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, NULL, 0, 86, 1);
INSERT INTO `sys_permission` VALUES (119, 22, 'permission', '公告批量删除', 'notice:batchdelete', NULL, NULL, NULL, 0, 87, 1);
INSERT INTO `sys_permission` VALUES (120, 10, 'permission', '入库添加', 'ruk:create', NULL, NULL, NULL, 1, 88, 1);
INSERT INTO `sys_permission` VALUES (121, 10, 'permission', '修改入库', 'ruk:update', NULL, NULL, NULL, 1, 89, 1);
INSERT INTO `sys_permission` VALUES (122, 7, 'menu', '请假管理', NULL, '&#xe857;', '/sys/toLeaveManager', '', 0, 90, 1);
INSERT INTO `sys_permission` VALUES (123, 7, 'menu', '个人请假', NULL, '&#xe857;', '/sys/toUserLeave', '', 0, 91, 1);
INSERT INTO `sys_permission` VALUES (125, 3, 'menu', '超市退货', NULL, '&#xe756;', '/bus/toInportManager', '', 0, 92, 1);
INSERT INTO `sys_permission` VALUES (126, 2, 'menu', '分类管理', NULL, '&#xe657;', '/bus/toGoodsTypeManager', '', 0, 93, 1);
INSERT INTO `sys_permission` VALUES (128, 6, 'menu', '薪资管理', NULL, '&#xe756;', '/sys/toSalManager', '', 1, 95, 1);
INSERT INTO `sys_permission` VALUES (129, 6, 'menu', '进货支出', NULL, '&#xe756;', '/sys/toPayManager', '', 1, 96, 1);
INSERT INTO `sys_permission` VALUES (130, 7, 'menu', '考勤管理', NULL, '&#xe756;', '/sys/toKaoqinManager', '', 1, 97, 1);
INSERT INTO `sys_permission` VALUES (131, 6, 'menu', '财务分析', NULL, '&#xe756;', '/sys/todesk', '', 1, 98, 1);
INSERT INTO `sys_permission` VALUES (132, 2, 'menu', '已删分类', NULL, '&#xe657;', '/bus/todelGoodsTypeManager', '3', 0, 99, 1);
INSERT INTO `sys_permission` VALUES (133, 2, 'menu', '已删商品', NULL, '&#xe657;', '/bus/todelGoodsManager', '', 0, 10, 1);
INSERT INTO `sys_permission` VALUES (134, 2, 'menu', '预警商品', NULL, '&#xe657;', '/bus/toGoodsyjManager', '', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (135, 7, 'menu', '已删部门', NULL, '&#xe657;', '/sys/todelDeptManager', '', 0, 8, 1);
INSERT INTO `sys_permission` VALUES (136, 7, 'menu', '已删用户', NULL, '&#xe657;', '/sys/deltoUserManager', '', 0, 100, 1);
INSERT INTO `sys_permission` VALUES (137, 5, 'menu', '已删账单', NULL, '&#xe657;', '/bus/deltoSalesManager', '', 1, 101, 1);
INSERT INTO `sys_permission` VALUES (138, 5, 'menu', '已删退货', NULL, '&#xe657;', '/bus/deltoSalesbackManager', '', 0, 102, 1);
INSERT INTO `sys_permission` VALUES (139, 4, 'menu', '已删入库', NULL, '&#xe657;', '/bus/deltoInportManager', '', 0, 103, 1);
INSERT INTO `sys_permission` VALUES (200, 5, 'menu', '客户管理', NULL, '&#xe651;', '/bus/toCustomerManager', '', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (201, 3, 'menu', '供应商管理', NULL, '&#xe658;', '/bus/toProviderManager', '', 0, 8, 1);
INSERT INTO `sys_permission` VALUES (203, 8, 'menu', '方法痕迹', NULL, '&#xe857;', '/bus/toControllerTrace', '', 1, 105, 1);
INSERT INTO `sys_permission` VALUES (204, 8, 'menu', '键鼠痕迹', NULL, '&#xe857;', '/bus/toRecordTrace', '', 1, 106, 1);
INSERT INTO `sys_permission` VALUES (205, 8, 'menu', '键盘饼图', NULL, '&#xe670;', '/bus/toKeyRadius', '', 1, 107, 1);
INSERT INTO `sys_permission` VALUES (206, 8, 'menu', '鼠标饼图', NULL, '&#xe756;', '/bus/toMouseRadius', '', 1, 108, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '0不可用，1可用',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1, '2021-03-29 14:06:32');
INSERT INTO `sys_role` VALUES (4, '基础管理员', '主要负责货物、供应商管理', 1, '2021-03-29 14:06:32');
INSERT INTO `sys_role` VALUES (5, '采购管理员', '采购管理员', 1, '2021-03-29 14:06:32');
INSERT INTO `sys_role` VALUES (6, '销售管理员', '销售管理员', 1, '2021-03-29 14:06:32');
INSERT INTO `sys_role` VALUES (7, '人事管理', '人事管理', 1, '2021-03-29 14:06:32');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` VALUES (5, 1);
INSERT INTO `sys_role_permission` VALUES (5, 3);
INSERT INTO `sys_role_permission` VALUES (5, 10);
INSERT INTO `sys_role_permission` VALUES (5, 120);
INSERT INTO `sys_role_permission` VALUES (5, 121);
INSERT INTO `sys_role_permission` VALUES (5, 11);
INSERT INTO `sys_role_permission` VALUES (5, 6);
INSERT INTO `sys_role_permission` VALUES (5, 123);
INSERT INTO `sys_role_permission` VALUES (6, 1);
INSERT INTO `sys_role_permission` VALUES (6, 4);
INSERT INTO `sys_role_permission` VALUES (6, 12);
INSERT INTO `sys_role_permission` VALUES (6, 13);
INSERT INTO `sys_role_permission` VALUES (6, 6);
INSERT INTO `sys_role_permission` VALUES (6, 22);
INSERT INTO `sys_role_permission` VALUES (6, 76);
INSERT INTO `sys_role_permission` VALUES (6, 86);
INSERT INTO `sys_role_permission` VALUES (6, 123);
INSERT INTO `sys_role_permission` VALUES (7, 1);
INSERT INTO `sys_role_permission` VALUES (7, 5);
INSERT INTO `sys_role_permission` VALUES (7, 14);
INSERT INTO `sys_role_permission` VALUES (7, 30);
INSERT INTO `sys_role_permission` VALUES (7, 31);
INSERT INTO `sys_role_permission` VALUES (7, 32);
INSERT INTO `sys_role_permission` VALUES (7, 53);
INSERT INTO `sys_role_permission` VALUES (7, 17);
INSERT INTO `sys_role_permission` VALUES (7, 42);
INSERT INTO `sys_role_permission` VALUES (7, 43);
INSERT INTO `sys_role_permission` VALUES (7, 44);
INSERT INTO `sys_role_permission` VALUES (7, 56);
INSERT INTO `sys_role_permission` VALUES (7, 18);
INSERT INTO `sys_role_permission` VALUES (7, 47);
INSERT INTO `sys_role_permission` VALUES (7, 48);
INSERT INTO `sys_role_permission` VALUES (7, 49);
INSERT INTO `sys_role_permission` VALUES (7, 52);
INSERT INTO `sys_role_permission` VALUES (7, 57);
INSERT INTO `sys_role_permission` VALUES (7, 6);
INSERT INTO `sys_role_permission` VALUES (7, 21);
INSERT INTO `sys_role_permission` VALUES (7, 73);
INSERT INTO `sys_role_permission` VALUES (7, 22);
INSERT INTO `sys_role_permission` VALUES (7, 76);
INSERT INTO `sys_role_permission` VALUES (7, 86);
INSERT INTO `sys_role_permission` VALUES (7, 123);
INSERT INTO `sys_role_permission` VALUES (4, 1);
INSERT INTO `sys_role_permission` VALUES (4, 2);
INSERT INTO `sys_role_permission` VALUES (4, 9);
INSERT INTO `sys_role_permission` VALUES (4, 91);
INSERT INTO `sys_role_permission` VALUES (4, 92);
INSERT INTO `sys_role_permission` VALUES (4, 116);
INSERT INTO `sys_role_permission` VALUES (4, 117);
INSERT INTO `sys_role_permission` VALUES (4, 118);
INSERT INTO `sys_role_permission` VALUES (4, 126);
INSERT INTO `sys_role_permission` VALUES (4, 22);
INSERT INTO `sys_role_permission` VALUES (4, 76);
INSERT INTO `sys_role_permission` VALUES (4, 86);
INSERT INTO `sys_role_permission` VALUES (4, 6);
INSERT INTO `sys_role_permission` VALUES (4, 123);
INSERT INTO `sys_role_permission` VALUES (4, 8);
INSERT INTO `sys_role_permission` VALUES (4, 81);
INSERT INTO `sys_role_permission` VALUES (4, 82);
INSERT INTO `sys_role_permission` VALUES (4, 83);
INSERT INTO `sys_role_permission` VALUES (4, 84);
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (1, 2);
INSERT INTO `sys_role_permission` VALUES (1, 9);
INSERT INTO `sys_role_permission` VALUES (1, 91);
INSERT INTO `sys_role_permission` VALUES (1, 92);
INSERT INTO `sys_role_permission` VALUES (1, 116);
INSERT INTO `sys_role_permission` VALUES (1, 117);
INSERT INTO `sys_role_permission` VALUES (1, 118);
INSERT INTO `sys_role_permission` VALUES (1, 3);
INSERT INTO `sys_role_permission` VALUES (1, 125);
INSERT INTO `sys_role_permission` VALUES (1, 81);
INSERT INTO `sys_role_permission` VALUES (1, 82);
INSERT INTO `sys_role_permission` VALUES (1, 83);
INSERT INTO `sys_role_permission` VALUES (1, 84);
INSERT INTO `sys_role_permission` VALUES (1, 4);
INSERT INTO `sys_role_permission` VALUES (1, 10);
INSERT INTO `sys_role_permission` VALUES (1, 120);
INSERT INTO `sys_role_permission` VALUES (1, 121);
INSERT INTO `sys_role_permission` VALUES (1, 11);
INSERT INTO `sys_role_permission` VALUES (1, 139);
INSERT INTO `sys_role_permission` VALUES (1, 5);
INSERT INTO `sys_role_permission` VALUES (1, 12);
INSERT INTO `sys_role_permission` VALUES (1, 13);
INSERT INTO `sys_role_permission` VALUES (1, 137);
INSERT INTO `sys_role_permission` VALUES (1, 138);
INSERT INTO `sys_role_permission` VALUES (1, 200);
INSERT INTO `sys_role_permission` VALUES (1, 68);
INSERT INTO `sys_role_permission` VALUES (1, 69);
INSERT INTO `sys_role_permission` VALUES (1, 70);
INSERT INTO `sys_role_permission` VALUES (1, 71);
INSERT INTO `sys_role_permission` VALUES (1, 6);
INSERT INTO `sys_role_permission` VALUES (1, 18);
INSERT INTO `sys_role_permission` VALUES (1, 47);
INSERT INTO `sys_role_permission` VALUES (1, 48);
INSERT INTO `sys_role_permission` VALUES (1, 49);
INSERT INTO `sys_role_permission` VALUES (1, 51);
INSERT INTO `sys_role_permission` VALUES (1, 52);
INSERT INTO `sys_role_permission` VALUES (1, 57);
INSERT INTO `sys_role_permission` VALUES (1, 128);
INSERT INTO `sys_role_permission` VALUES (1, 129);
INSERT INTO `sys_role_permission` VALUES (1, 131);
INSERT INTO `sys_role_permission` VALUES (1, 7);
INSERT INTO `sys_role_permission` VALUES (1, 14);
INSERT INTO `sys_role_permission` VALUES (1, 30);
INSERT INTO `sys_role_permission` VALUES (1, 31);
INSERT INTO `sys_role_permission` VALUES (1, 32);
INSERT INTO `sys_role_permission` VALUES (1, 53);
INSERT INTO `sys_role_permission` VALUES (1, 122);
INSERT INTO `sys_role_permission` VALUES (1, 123);
INSERT INTO `sys_role_permission` VALUES (1, 130);
INSERT INTO `sys_role_permission` VALUES (1, 135);
INSERT INTO `sys_role_permission` VALUES (1, 136);
INSERT INTO `sys_role_permission` VALUES (1, 8);
INSERT INTO `sys_role_permission` VALUES (1, 15);
INSERT INTO `sys_role_permission` VALUES (1, 34);
INSERT INTO `sys_role_permission` VALUES (1, 35);
INSERT INTO `sys_role_permission` VALUES (1, 36);
INSERT INTO `sys_role_permission` VALUES (1, 54);
INSERT INTO `sys_role_permission` VALUES (1, 16);
INSERT INTO `sys_role_permission` VALUES (1, 38);
INSERT INTO `sys_role_permission` VALUES (1, 39);
INSERT INTO `sys_role_permission` VALUES (1, 40);
INSERT INTO `sys_role_permission` VALUES (1, 55);
INSERT INTO `sys_role_permission` VALUES (1, 17);
INSERT INTO `sys_role_permission` VALUES (1, 42);
INSERT INTO `sys_role_permission` VALUES (1, 43);
INSERT INTO `sys_role_permission` VALUES (1, 44);
INSERT INTO `sys_role_permission` VALUES (1, 46);
INSERT INTO `sys_role_permission` VALUES (1, 56);
INSERT INTO `sys_role_permission` VALUES (1, 21);
INSERT INTO `sys_role_permission` VALUES (1, 73);
INSERT INTO `sys_role_permission` VALUES (1, 74);
INSERT INTO `sys_role_permission` VALUES (1, 75);
INSERT INTO `sys_role_permission` VALUES (1, 22);
INSERT INTO `sys_role_permission` VALUES (1, 76);
INSERT INTO `sys_role_permission` VALUES (1, 77);
INSERT INTO `sys_role_permission` VALUES (1, 78);
INSERT INTO `sys_role_permission` VALUES (1, 79);
INSERT INTO `sys_role_permission` VALUES (1, 86);
INSERT INTO `sys_role_permission` VALUES (1, 119);
INSERT INTO `sys_role_permission` VALUES (1, 23);
COMMIT;

-- ----------------------------
-- Table structure for sys_sal
-- ----------------------------
DROP TABLE IF EXISTS `sys_sal`;
CREATE TABLE `sys_sal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_sal
-- ----------------------------
BEGIN;
INSERT INTO `sys_sal` VALUES (1, '1', '1', '2021-10-07 23:47:37', '111');
INSERT INTO `sys_sal` VALUES (2, '11', '1', '2021-11-16 10:41:24', '超级管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL COMMENT '上级领导id',
  `available` int(11) DEFAULT '1' COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `type` int(255) DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盐',
  `stu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_sys_dept_sys_user` (`deptid`) USING BTREE,
  CONSTRAINT `FK_sys_dept_sys_user` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, '超级管理员', 'system', '532ac00e86893901af5f0be6b704dbc7', '北京', 1, '超级管理员', 1, '2021-03-29 11:06:34', NULL, 1, 1, 0, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (2, '落亦-', 'luoyi', '532ac00e86893901af5f0be6b704dbc7', '九江', 1, '超级管理员', 1, '2021-03-29 20:52:16', NULL, 1, 2, 0, '../resources/images/defaultusertitle.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (3, '小明', 'xiaoming', '532ac00e86893901af5f0be6b704dbc7', '猎户座旋臂', 1, '主要负责货物、供应商管理', 1, '2021-10-22 11:50:38', 3, 1, 3, 1, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (4, '李四', 'lisi', '70776d6ec464fc36597992bdb3544456', '九江', 1, '采购人员', 2, '2021-03-29 18:57:04', 3, 1, 4, 1, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (5, '王五', 'wangwu', '532ac00e86893901af5f0be6b704dbc7', '上海', 1, '销售人员', 5, '2021-03-29 18:57:42', 4, 1, 5, 1, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (6, '赵六', 'zhaoliu', '532ac00e86893901af5f0be6b704dbc7', '广州', 1, '普通用户', 5, '2021-03-29 18:59:05', 5, 1, 6, 1, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (7, '陈七', 'chengqi', '532ac00e86893901af5f0be6b704dbc7', '深圳', 1, '人事管理', 4, '2021-03-29 09:52:18', 3, 1, 7, 1, '/resources/images/userface1.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB', 1);
INSERT INTO `sys_user` VALUES (8, '11', '1111', 'ec333800c3b2774b83bcb31a36a8f0b6', '11', 1, '11', 2, '2021-11-16 10:24:35', 5, 1, 8, 1, '/resources/images/userface1.jpg', '1C3B5F6030F24FED9D6D00D9C5AADCDB', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (3, 4);
INSERT INTO `sys_user_role` VALUES (4, 5);
INSERT INTO `sys_user_role` VALUES (5, 6);
INSERT INTO `sys_user_role` VALUES (6, 6);
INSERT INTO `sys_user_role` VALUES (7, 7);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
