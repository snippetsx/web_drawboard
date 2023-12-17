import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchUser(int id) async {
  final response = await http.get(
      Uri.parse('http://192.168.1.7:3000/user?user_id=1'));

  if (response.statusCode == 200) {
    // Парсинг JSON-ответа
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch user data');
  }
}

Future<dynamic> registerUser(String name, String email, String password) async {
  final response = await http.post(
      Uri.parse('http://localhost:3000/register'), body: {
    'name': name,
    'email': email,
    'password': password,
  });

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to register user');
  }
}