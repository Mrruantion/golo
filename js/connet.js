var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'carmanage'
});

connection.connect();


function connectServer() {
  var client = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'carmanage'
  })
  return client;
}

function dbControl(client,target,val,callback){
  client.connect();
  client.query(target,val,function(err,results){
    if(err) throw err;
    callback(results)
  });
  client.end();
}

exports.connectServer = connectServer;
exports.dbControl = dbControl;
// connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results[0].solution);
// });

// connection.query('SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA="carmanage" AND TABLE_NAME="report"',function(err,res,fie){
//     if(err) throw err;
//     console.log('result:',res[0])
// })

// export default connection
// exports.connection = connection;
// $(document).ready(function () {

// })


var values = [
  ["index1","www.alibaba.com",1,0]
];
var sql = "INSERT ignore INTO url(`from`,`to`,`status`, `is_new`) VALUES ?";
connection.query(sql, [values], function (err, rows, fields) {
  if(err){
              console.log('INSERT ERROR - ', err.message);
              return;
          }
          console.log("INSERT SUCCESS");
});