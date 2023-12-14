import 'package:mysql1/mysql1.dart';
import 'dart:async';

var pass = "qhA@r465OCCrbmy_";
var user = "drawboard";

Future select() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: user,
      db: 'edu',
      password: pass));
      conn.query('select from users')
}
