
DROP TABLE IF EXISTS `devices_info`;
CREATE TABLE `devices_info` (
    `ModifyIp` varchar(255) DEFAULT NULL COMMENT '修改IP',
    `ModifyTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
    `DeviceGroupUID` varchar(255) DEFAULT NULL COMMENT '设备组UID',
    `DeviceUID` varchar(255) DEFAULT NULL COMMENT '设备uid',
    `DeviceGroupName` varchar(255) DEFAULT NULL COMMENT '设备组名称',
    `DeviceInfo` varchar(255) DEFAULT NULL COMMENT '设备信息',
    `Description` varchar(255) DEFAULT NULL COMMENT '描述',
    `IsEnabled` varchar(255) DEFAULT NULL COMMENT '是否可用',
    `DelFlag` varchar(255) DEFAULT NULL COMMENT '删除标志',
    `CreateIP` varchar(255) DEFAULT NULL COMMENT '创建IP',
    `CreateTime` varchar(255) DEFAULT NULL COMMENT '服务开始时间',
    `UID` varchar(255) NOT NULL COMMENT '无意义',
    `ApplicationID` varchar(255) DEFAULT NULL COMMENT '应用ID',
    `DeviceType` varchar(255) DEFAULT NULL COMMENT '设备类型',
    `DeviceSN` varchar(255) DEFAULT NULL COMMENT '设备序列号',
    `DeviceTimeZone` varchar(255) DEFAULT NULL COMMENT '设备时区',
    `CarSeriesCode` varchar(255) DEFAULT NULL COMMENT '车系',
    `DeviceStatus` varchar(255) DEFAULT NULL COMMENT '正常',
    `CarType` varchar(255) DEFAULT NULL COMMENT '车型',
    `DeviceVersion` varchar(255) DEFAULT NULL COMMENT '设备版本',
    `DeviceKey` varchar(255) DEFAULT NULL COMMENT '设备秘钥',
    `DeviceIMEI` varchar(255) DEFAULT NULL COMMENT '',
    `AppKey` varchar(255) DEFAULT NULL COMMENT '',
    `Delisting` varchar(255) DEFAULT NULL COMMENT '',
    `SIMSN` varchar(255) DEFAULT NULL COMMENT '',
    `ServiceStartTime` varchar(255) DEFAULT NULL COMMENT '服务开始时间',
    `ServiceEndTime` varchar(255) DEFAULT NULL COMMENT '服务结束时间',
    PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






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
    `ArchivedSyncFlag` varchar(255) DEFAULT NULL COMMENT '',
    `DelFlag` varchar(255) DEFAULT NULL COMMENT '删除标志',
    `ASCreateIP` varchar(255) DEFAULT NULL COMMENT '',
    `ASCreateTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
    `ISSynchro` varchar(255) DEFAULT NULL COMMENT '',
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



DROP TABLE IF EXISTS `stream_info`;
CREATE TABLE `stream_info` (
    `CarSeriesCode` varchar(255) NOT NULL COMMENT '车系代码',
    `ModifyTime` varchar(255) NOT NULL COMMENT '修改时间',
    `ModifyIp` varchar(255) NOT NULL COMMENT '修改ip',
    `ASCreateTime` varchar(255) NOT NULL COMMENT '接入创建时间',
    `ASCreateIP` varchar(255) NOT NULL COMMENT '接入创建ip',
    `DelFlag` varchar(255) NOT NULL COMMENT '删除标志',
    `ArchivedSyncFlag` varchar(255) NOT NULL COMMENT '存档同步标志',
    `SyncFlag` varchar(255) NOT NULL COMMENT '同步标志',
    `ISServerIP` varchar(255) NOT NULL COMMENT '',
    `ISServerUID` varchar(255) NOT NULL COMMENT '',
    `ISCreateTime` varchar(255) NOT NULL COMMENT '',
    `ISCreateIP` varchar(255) NOT NULL COMMENT '',
    `Description` varchar(255) NOT NULL COMMENT '描述',
    `DFJsonContent` varchar(13000) NOT NULL COMMENT '数据流信息',
    `DFDataStreamID` varchar(255) NOT NULL COMMENT '统一数据流id',
    `DFDataStreamValue` varchar(255) NOT NULL COMMENT '统一数据流值',
    `DFDataStreamUnitName` varchar(255) NOT NULL COMMENT '统一数据流单位名称',
    `DFDataStreamUnitID` varchar(255) NOT NULL COMMENT '统一数据流单位id',
    `DFDataStreamName` varchar(255) NOT NULL COMMENT '统一数据流名称',
    `GPSTime` varchar(255) NOT NULL COMMENT '格林威治时间',
    `GPSLongValue` varchar(255) NOT NULL COMMENT 'Gps时间戳',
    `DeviceTimeZone` varchar(255) NOT NULL COMMENT '设备所在时区',
    `GPSTimeInDefaultTimeZone` varchar(255) NOT NULL COMMENT 'GPS默认所在时区时间',
    `LockSymbol` varchar(255) NOT NULL COMMENT '锁标志',
    `DeviceUID` varchar(255) NOT NULL COMMENT '设备uid',
    `DisplayUID` varchar(255) NOT NULL COMMENT '显示id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `trouble_code_info`;
CREATE TABLE `trouble_code_info` (
    `DeviceUID` varchar(255) NOT NULL COMMENT '设备uid',
    `DisplayUID` varchar(255) NOT NULL COMMENT '显示id',
    `CarSeriesCode` varchar(255) NOT NULL COMMENT '',
    `LockSymbol` varchar(255) NOT NULL COMMENT '锁标志',
    `GPSTime` varchar(255) NOT NULL COMMENT '格林威治时间',
    `GPSLongValue` varchar(255) NOT NULL COMMENT 'Gps时间戳',
    `DeviceTimeZone` varchar(255) NOT NULL COMMENT '设备所在时区',
    `GPSTimeInDefaultTimeZone` varchar(255) NOT NULL COMMENT 'GPS默认所在时区时间',
    `JsonContent` varchar(13000) NOT NULL COMMENT '',
    `ModifyTime` varchar(255) NOT NULL COMMENT '修改时间',
    `ModifyIp` varchar(255) NOT NULL COMMENT '',
    `ASCreateTime` varchar(255) NOT NULL COMMENT '',
    `ASCreateIP` varchar(255) NOT NULL COMMENT '',
    `ArchivedSyncFlag` varchar(255) NOT NULL COMMENT '',
    `ISServerIP` varchar(255) NOT NULL COMMENT '',
    `ISServerUID` varchar(255) NOT NULL COMMENT '',
    `ISCreateTime` varchar(255) NOT NULL COMMENT '',
    `ISCreateIP` varchar(255) NOT NULL COMMENT '',
    `SystemIDOnCar` varchar(255) NOT NULL COMMENT '',
    `SystemTextID` varchar(255) NOT NULL COMMENT '',
    `SystemNameOnCar` varchar(255) NOT NULL COMMENT '',
    `SystemTypeID` varchar(255) NOT NULL COMMENT '',
    `SystemTypeName` varchar(255) NOT NULL COMMENT '',
    `DTCID` varchar(255) NOT NULL COMMENT '故障码id',
    `DTCValue` varchar(255) NOT NULL COMMENT '故障码值',
    `DTCDescription` varchar(255) NOT NULL COMMENT '故障码描述',
    `DTCHelp` varchar(255) NOT NULL COMMENT '故障码帮助',
    `DTCStatus` varchar(255) NOT NULL COMMENT '故障码状态',
    `Description` varchar(255) NOT NULL COMMENT '描述',
    `SyncFlag` varchar(255) NOT NULL COMMENT '同步标志',
    `DelFlag` varchar(255) NOT NULL COMMENT '删除标志',
    `__v` varchar(255) NOT NULL COMMENT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gps_info`;
CREATE TABLE `gps_info` (
    `GPSLongValue` varchar(255) NOT NULL COMMENT 'GPS时间戳',
    `Direction` varchar(255) NOT NULL COMMENT '方向',
    `Speed` varchar(255) NOT NULL COMMENT '瞬时速度',
    `Height` varchar(255) NOT NULL COMMENT '海拔高度',
    `Longitude` varchar(255) NOT NULL COMMENT '经度',
    `Latitude` varchar(255) NOT NULL COMMENT '纬度',
    `GPSTime` varchar(255) NOT NULL COMMENT 'GPS时间戳',
    `DeviceUID` varchar(255) NOT NULL COMMENT '设备uid',
    `Accuracy` varchar(255) NOT NULL COMMENT '精度',
    `DeviceTimeZone` varchar(255) NOT NULL COMMENT '设备所在时区',
    `GPSTimeInDefaultTimeZone` varchar(255) NOT NULL COMMENT '默认时区的GPS时间',
    `GPSLocateModel` varchar(255) NOT NULL COMMENT 'GPS坐标类型',
    `ISCreateTime` varchar(255) NOT NULL COMMENT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `reports_info`;
CREATE TABLE `reports_info` (
    `id` varchar(255) NOT NULL COMMENT '体检报告id',
    `car_id` varchar(255) NOT NULL COMMENT '体检车辆ID',
    `theme` varchar(255) NOT NULL COMMENT '报告主题',
    `cars` varchar(255) NOT NULL COMMENT '车系',
    `models` varchar(255) NOT NULL COMMENT '车型',
    `model_year` varchar(255) NOT NULL COMMENT '年款',
    `displacement` varchar(255) NOT NULL COMMENT '排量',
    `transmission` varchar(255) NOT NULL COMMENT '变速器',
    `vin` varchar(255) NOT NULL COMMENT 'vin码',
    `fault_codes` varchar(255) NOT NULL COMMENT '体检故障码',
    `data_flow` varchar(255) NOT NULL COMMENT '数据流',
    `examination_time` varchar(255) NOT NULL COMMENT '体检时间',
    `update_time` varchar(255) NOT NULL COMMENT '上传报告时间',
    `serial_no` varchar(255) NOT NULL COMMENT '产品序列号',
    `user_id` varchar(255) NOT NULL COMMENT '上传用户ID',
    `remark` varchar(255) NOT NULL COMMENT '报告备注',
    `versionCode` varchar(255) NOT NULL COMMENT '报告版本，默认为0区分新老报告',
    `language` varchar(255) NOT NULL COMMENT '报告语言',
    `type` varchar(255) NOT NULL COMMENT '报告类型',
    `ver` varchar(255) NOT NULL COMMENT '版本号',
    `appid` varchar(255) NOT NULL COMMENT '客户端来源'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;