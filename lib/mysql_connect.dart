import 'package:mysql1/mysql1.dart';
import 'dart:async';

var database_pass = "qhA@r465OCCrbmy_";
var database_username = "drawboard";

Future LoginSQL_check(user, passwd) async {
  // Open a connection (testdb should already exist)
  /*final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '192.168.1.7',
      port: 3306,
      user: database_username,
      db: 'edu',
      password: database_pass));*/
      var sql_username = 'snippetsx';// conn.query('select username from users where username = $user');
      var sql_password = '17092006Go';//conn.query('select passowrd from users where username = $passwd');
      if (sql_username == user || sql_password == passwd)
      {
/*        await conn.close();*/
        return 1;
      }
      else
      {
/*        await conn.close();*/
        return 0;
      }
}
