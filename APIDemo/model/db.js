var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Yfgreat601ms',
    database: 'coupons'
});

connection.connect(err=>{
    if( err ) {
        throw err;
    }
});

module.exports = connection