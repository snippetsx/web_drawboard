import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchUser(String username) async {
  final queryParameters = {
    'username': username,
  };
  final uri = Uri.https('api.lcsa.ru', '/user', queryParameters);
  final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
  final response = await http.get(uri, headers: headers);
  if (response.statusCode == 200) {
    // Парсинг JSON-ответа
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch user data');
  }
}

Future<dynamic> registerUser(String name, String email, String password) async {
  final response = await http.post(
      Uri.parse('https://api.lca.ru/register'), body: {
    'username': name,
    'email': email,
    'password': password,
  });

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to register user');
  }
}