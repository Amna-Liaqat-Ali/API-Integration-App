import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class UserApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  static Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
