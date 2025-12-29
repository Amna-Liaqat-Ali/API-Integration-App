import 'package:flutter/material.dart';
import 'package:flutter_api_integration_app/screens/users_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter API Integration',
      home: UsersListScreen(),
    );
  }
}
