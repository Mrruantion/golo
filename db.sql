



DROP TABLE IF EXISTS `gps_info`;
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
    `ISCreateTime` varchar(20) NOT NULL DEFAULT '0' COMMENT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `gps_info`;
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
    `ISCreateTime` varchar(20) NOT NULL DEFAULT '0' COMMENT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;