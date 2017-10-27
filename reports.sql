/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : carmanage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-27 17:53:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `trip_info`
-- ----------------------------
DROP TABLE IF EXISTS `trip_info`;
CREATE TABLE `trip_info` (
  `OTripRecordUID` varchar(255) NOT NULL COMMENT '里程id',
  `DeviceUID` varchar(255) DEFAULT NULL COMMENT '设备uid',
  `DeviceSN` varchar(255) DEFAULT NULL COMMENT '序列号',
  `TripSN` varchar(255) DEFAULT NULL COMMENT '里程序列号',
  `LockSymbol` varchar(255) DEFAULT NULL COMMENT '锁标志',
  `GPSTime` varchar(255) DEFAULT NULL COMMENT '格林尼治时间',
  `GPSLongValue` varchar(255) DEFAULT NULL COMMENT '格林尼治时间戳',
  `DeviceTimeZone` varchar(255) DEFAULT NULL COMMENT '设备所在时区',
  `GPSTimeInDefaultTimeZone` varchar(255) DEFAULT NULL COMMENT '设备所在默认时区时间',
  `JsonContent` varchar(13000) DEFAULT NULL COMMENT 'Json数据包',
  `TripMileage` varchar(255) DEFAULT NULL COMMENT '本次里程数',
  `FuelConsumption` varchar(255) DEFAULT NULL COMMENT '本次油耗',
  `AvgFuelConsumption` varchar(255) DEFAULT NULL COMMENT '本次平均油耗',
  `ISCreateIP` varchar(255) DEFAULT NULL COMMENT '创建IP',
  `ISServerUID` varchar(255) DEFAULT NULL COMMENT '服务器UID',
  `ISServerIP` varchar(255) DEFAULT NULL COMMENT '服务器IP',
  `ISCreateTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `SyncFlag` varchar(255) DEFAULT NULL COMMENT '同步标识',
  `ArchivedSyncFlag` varchar(255) DEFAULT NULL,
  `DelFlag` varchar(255) DEFAULT NULL COMMENT '删除标志',
  `ASCreateIP` varchar(255) DEFAULT NULL,
  `ASCreateTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `ISSynchro` varchar(255) DEFAULT NULL,
  `ModifyIp` varchar(255) DEFAULT NULL COMMENT '修改IP',
  `ModifyTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `TripStartTime` varchar(255) DEFAULT NULL COMMENT '里程开始时间',
  `TripEndTime` varchar(255) DEFAULT NULL COMMENT '里程结束时间',
  `oil_rank` varchar(255) DEFAULT NULL COMMENT '油量排名',
  `longitude_start` varchar(255) DEFAULT NULL COMMENT '里程开始经度',
  `longitude_end` varchar(255) DEFAULT NULL COMMENT '里程结束经度',
  `latitude_start` varchar(255) DEFAULT NULL COMMENT '里程开始纬度',
  `latitude_end` varchar(255) DEFAULT NULL COMMENT '里程结束纬度',
  PRIMARY KEY (`OTripRecordUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trip_info
-- ----------------------------
INSERT INTO `trip_info` VALUES ('35bcbe5f-a173-04e6-4961-8f681c36bad9', 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0', '971190000018', '1', null, null, '1435659319', null, '2015-06-30+18:15:19', '[{\"DFDataStreamID\":\"0000E005\",\"DFDataStreamValue\":43,\"DFDataStreamUnitName\":\"\\u5206\\u949f\",\"DFDataStreamUnitID\":\"457\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u9a76\\u4f7f\\u7528\\u65f6\\u95f4\"},{\"DFDataStreamID\":\"0000E002\",\"DFDataStreamValue\":16.72,\"DFDataStreamUnitName\":\"km\",\"DFDataStreamUnitID\":\"7\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u7a0b\\u884c\\u9a76\\u91cc\\u7a0b\"},{\"DFDataStreamID\":\"0000E004\",\"DFDataStreamValue\":1.84,\"DFDataStreamUnitName\":\"L\",\"DFDataStreamUnitID\":\"12\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u7a0b\\u71c3\\u6cb9\\u6d88\\u8017(\\u8ba1\\u7b97)\"},{\"DFDataStreamID\":\"0000E105\",\"DFDataStreamValue\":1435656727,\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u91cc\\u7a0b\\u65f6\\u95f4\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E205\",\"DFDataStreamValue\":1435659319,\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u91cc\\u7a0b\\u65f6\\u95f4\\uff08\\u7ed3\\u675f\\uff09\"},{\"DFDataStreamID\":\"0000E106\",\"DFDataStreamValue\":\"114.05443692\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7ecf\\u5ea6\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E206\",\"DFDataStreamValue\":\"114.09201455\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7ecf\\u5ea6\\uff08\\u7ed3\\u675f\\uff09\"},{\"DFDataStreamID\":\"0000E107\",\"DFDataStreamValue\":\"22.66674399\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7eac\\u5ea6\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E207\",\"DFDataStreamValue\":\"22.5656502\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7eac\\u5ea6\\uff08\\u7ed3\\u675f\\uff09\"}]', '16.72', '1.84', '11.004784688995', null, null, null, '2015-06-30+18:15:22', null, null, null, null, null, null, null, null, '2015-06-30+17:32:07', '2015-06-30+18:15:19', '21', '114.05443692', '114.09201455', '22.66674399', '22.5656502');
INSERT INTO `trip_info` VALUES ('b07ce776-c869-25e6-c451-0e811d21b252', 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0', '971190000018', '2', null, null, '1435661083', null, '2015-06-30+18:44:43', '[{\"DFDataStreamID\":\"0000E005\",\"DFDataStreamValue\":24,\"DFDataStreamUnitName\":\"\\u5206\\u949f\",\"DFDataStreamUnitID\":\"457\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u9a76\\u4f7f\\u7528\\u65f6\\u95f4\"},{\"DFDataStreamID\":\"0000E002\",\"DFDataStreamValue\":6.97,\"DFDataStreamUnitName\":\"km\",\"DFDataStreamUnitID\":\"7\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u7a0b\\u884c\\u9a76\\u91cc\\u7a0b\"},{\"DFDataStreamID\":\"0000E004\",\"DFDataStreamValue\":0.87,\"DFDataStreamUnitName\":\"L\",\"DFDataStreamUnitID\":\"12\",\"DFDataStreamName\":\"\\u672c\\u6b21\\u884c\\u7a0b\\u71c3\\u6cb9\\u6d88\\u8017(\\u8ba1\\u7b97)\"},{\"DFDataStreamID\":\"0000E105\",\"DFDataStreamValue\":1435659637,\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u91cc\\u7a0b\\u65f6\\u95f4\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E205\",\"DFDataStreamValue\":1435661083,\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u91cc\\u7a0b\\u65f6\\u95f4\\uff08\\u7ed3\\u675f\\uff09\"},{\"DFDataStreamID\":\"0000E106\",\"DFDataStreamValue\":\"114.09275274\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7ecf\\u5ea6\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E206\",\"DFDataStreamValue\":\"114.10501243\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7ecf\\u5ea6\\uff08\\u7ed3\\u675f\\uff09\"},{\"DFDataStreamID\":\"0000E107\",\"DFDataStreamValue\":\"22.56589229\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7eac\\u5ea6\\uff08\\u5f00\\u59cb\\uff09\"},{\"DFDataStreamID\":\"0000E207\",\"DFDataStreamValue\":\"22.57371449\",\"DFDataStreamUnitName\":\"0\",\"DFDataStreamUnitID\":\"0\",\"DFDataStreamName\":\"\\u7eac\\u5ea6\\uff08\\u7ed3\\u675f\\uff09\"}]', '6.97', '0.87', '12.482065997131', null, null, null, '2015-06-30+18:44:46', null, null, null, null, null, null, null, null, '2015-06-30+18:20:37', '2015-06-30+18:44:43', '11', '114.09275274', '114.10501243', '22.56589229', '22.57371449');
