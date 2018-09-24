var mysql = require('mysql');

var mysql_connection = function() {
    console.log('Conexão com DB estabelecida!');
    return connection = mysql.createConnection(
        {
            host: 'Localhost',
            user: 'root',
            password: 'XXXX',
            database: 'bfyme'
        }
    );
}

module.exports = function() {
    console.log(':::: Autoload successfully load connection module!');
    return mysql_connection;
}