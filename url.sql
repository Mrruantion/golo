/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : carmanage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-27 09:22:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `url`
-- ----------------------------
DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `from` varchar(222) NOT NULL,
  `to` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `is_new` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of url
-- ----------------------------
INSERT INTO `url` VALUES ('index', 'www.alibaba.com', '1', '0');
INSERT INTO `url` VALUES ('index1', 'www.alibaba.com', '1', '0');
