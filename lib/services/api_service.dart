import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class ApiService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final List data = json.decode(response.body);
        return data.map((e) => UserModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }
}
