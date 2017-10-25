var $ = require('jquery');
var md5 = require('md5')
// import connection from './connet.js';
var mySql = require('./js/connet')
// var connection = require('connection')
console.log(mySql);


$(document).ready(function () {
  function time() {
    return 0 | new Date().getTime() / 1000
  }
  // console.log(connection,'connection');
  // connection.query('SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA="carmanage" AND TABLE_NAME="report"',function(err,res,fie){
  //     if(err) throw err;
  //     console.log('result1:',res[0])
  // })
  //1获取根据设备序列号获取设备信息
  function get_devices_info() {
    /**
     * url         http://open.api.dbscar.com/?action=data_develop.get_devices_info
     * develop_id  开发者id(1000)
     * develop_key 开发者对应的值a8f93c4e9f2ab7dcbef012cd8b5147
     * devicesn    设备序列号(967790005588)
     * app_id      应用ID(5EF7407B-2E3C-4CB3-B71E-3634DA9C8AD8|242EE0B0-43BB-A4D0-DC4F-1999D166D4D3)
     * devicetype  设备类型(golo3CU)
     * time        十位的时间戳0|new Date().getTime()/1000
     * sign        md5(action=data_develop.get_devices_info&app_id=242EE0B0-43BB-A4D0-DC4F-1999D166D4D3&develop_id=1000&devicesn=971190000018&devicetype=golo3CU&time=1404296554a8f93c4e9f2ab7dcbef012cd8b5147)
     */
    let opt = {
      app_id: '242EE0B0-43BB-A4D0-DC4F-1999D166D4D3',
      develop_id: 1000,
      devicesn: 971190000018,
      devicetype: 'golo3CU',
      time: time()
    }
    let url1 = 'action=data_develop.get_devices_info'
    ajax(opt,url1,1)
  }
  get_devices_info();

  //2获取里程数据列表
  function get_trip_record_by_page() {
    /**
     * develop_id    开发者id(1000)
     * deviceuid     设备uid(D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0) 根据get_devices_info获得
     * endtime       结束时间
     * pagesize      每页记录数
     * starttime     开始时间
     * targetpage    目标页码
     * time          十位的时间戳
     * sign          md5签名
     */
    let opt = {
      develop_id: 1000,
      deviceuid: 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0',
      endtime: '2015-07-20 16:58:31',
      pagesize: '10',
      starttime: '2015-06-20 14:44:16',
      targetpage: 1,
      time: time()
    }
    let url1 = 'action=data_develop.get_trip_record_by_page'
    ajax(opt,url1,2)

  }
  get_trip_record_by_page()
  //3获取具体某天的统一数据流信息
  function get_dfdata_stream_info() {
    /**
     * date          日期
     * develop_id    开发者id(1000)
     * deviceuid     设备uid(D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0) 根据get_devices_info获得
     * endtime       结束时间
     * starttime     开始时间
     * time          十位的时间戳
     * sign          md5签名
     */
    let opt = {
      date: '2015-06-30',
      develop_id: 1000,
      deviceuid: 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0',
      endtime: '20:40:44',
      starttime: '00:34:44',
      time: time()
    }
    let url1 = 'action=data_develop. get_dfdata_stream_info'
    ajax(opt,url1,3)
  }
  get_dfdata_stream_info()

  //5获取具体某天的故障码信息
  function get_trouble_code_info() {
    /**
     * develop_id    开发者id(1000)
     * deviceuid     设备uid(D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0) 根据get_devices_info获得
     * time          十位的时间戳
     * sign          md5签名
     */
    let opt = {
      date:'2015-06-30',
      develop_id: 1000,
      deviceuid: 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0',
      endtime:'20:19:46',
      starttime:'00:40:41',
      time: time()
    }
    let url1 = 'action=data_develop.get_trouble_code_info'
    ajax(opt,url1,5);

  }
  get_trouble_code_info();

  // 5.7 获取具体某天的GPS信息
  function get_gps_info() {
    let obj = {
      date: '2015-06-30',
      develop_id: 1000,
      deviceuid: 'D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0',
      endtime: '24:30:12',
      starttime: '00:53:46',
      time: time(),
    }
    let url1 = 'action=data_develop.get_gps_info'
    ajax(obj,url1,7)
  }
  get_gps_info()

  // 5.10 获取车辆某个时间段的体检报告

  function get_medical_reports_by_page(){
    let opt = {
      develop_id:1000,
      devicesn: '971190000018',
      start_date:'2015-06-14',
      end_date:'2017-07-16',
      pagesize:10,
      time:time(),
    }
    let url1 = 'action=vehicle_medical_report_service.get_medical_reports_by_page';
    ajax(opt,url1,10)
  }
  get_medical_reports_by_page()



  function ajax(opt, url1,type) {
    let url = "http://open.api.dbscar.com/?"
    for (var k in opt) {
      url1 += '&' + k + '=' + opt[k]
    }
    url += url1;
    url1 += 'a8f93c4e9f2ab7dcbef012cd8b5147'
    let sign = md5(url1);
    url += '&sign=' + sign;
    $.ajax({
      url: url,
      success: function (result) {
        console.log(JSON.parse(result),type)
      }
    })
  }
  
  
  // $.ajax({
  //   url: 'http://open.api.dbscar.com/?action=data_stream.get_current_dfdata_stream&develop_id=1000&deviceuid=D4BF37A7-6E49-41D4-16F6-E5A5E3D34BB0&time=1404296554&sign=14666ef0835a0f1ea4ab1f727d731aa4',
  //   success: function (result) {
  //     console.log(JSON.parse(result))
  //   }
  // })
  
});