var mysql = require('mysql');

var con = mysql.createConnection({
  host: "192.168.1.16",
  user: "root",
  password: "12345678",
  database: "nodejs_api"
});

con.connect(function (err){mysql
    if(err) throw err;
});

module.exports = con;