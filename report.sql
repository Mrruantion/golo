/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : carmanage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-25 17:32:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `report`
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `ID` int(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
CREATE TABLE `gps_info` (
    `GPSLongValue` varchar(20) NOT NULL DEFAULT '0' COMMENT 'GPS时间戳',
    `Direction` varchar(20) NOT NULL DEFAULT '0' COMMENT '方向',
    `Speed` varchar(20) NOT NULL DEFAULT '0' COMMENT '瞬时速度',
    `Height` varchar(20) NOT NULL DEFAULT '0' COMMENT '海拔高度',
    `Longitude` varchar(20) NOT NULL DEFAULT '0' COMMENT '经度',
    `Latitude` varchar(20) NOT NULL DEFAULT '0' COMMENT '纬度',
    `GPSTime` varchar(20) NOT NULL DEFAULT '0' COMMENT 'GPS时间戳',
    `DeviceUID` varchar(20) NOT NULL DEFAULT '0' COMMENT '设备uid',
    `Accuracy` varchar(20) NOT NULL DEFAULT '0' COMMENT '精度',
    `DeviceTimeZone` varchar(20) NOT NULL DEFAULT '0' COMMENT '设备所在时区',
    `GPSTimeInDefaultTimeZone` varchar(20) NOT NULL DEFAULT '0' COMMENT '默认时区的GPS时间',
    `GPSLocateModel` varchar(20) NOT NULL DEFAULT '0' COMMENT 'GPS坐标类型',
    `ISCreateTime` varchar(20) NOT NULL DEFAULT '0' COMMENT '',
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `ID` int(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;