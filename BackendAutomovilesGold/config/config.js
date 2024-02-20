const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    port: 3333,
    user: 'root',
    password: 'password',
    database: 'automoviles_gold'
});

db.connect(function(err) {
    if(err) throw err;
    console.log('DATABASE CONNECTED');
});

module.exports = db;