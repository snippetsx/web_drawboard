import 'package:mysql1/mysql1.dart';
import 'dart:async';

var pass = "sssss";
var user = "drawboard";

Future connect() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'testdb',
      password: pass));
}