var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '123456',
  database : 'carmanage'
});
 
connection.connect();


// connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results[0].solution);
// });

connection.query('SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA="carmanage" AND TABLE_NAME="report"',function(err,res,fie){
    if(err) throw err;
    console.log('result:',res[0])
})

// export default connection

$(document).ready(function () {
    
})