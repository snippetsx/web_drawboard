import 'package:crypto/crypto.dart';
import 'dart:convert';

String crypto256(String source) {
  var bytes = utf8.encode(source);
  var result = sha256.convert(bytes);
  return result.toString();
}