import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  late Future<List<UserModel>> usersFuture;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: FutureBuilder<List<UserModel>>(
        future: usersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Error loading users'));
          }

          final users = snapshot.data!;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];

              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(user.name),
                subtitle: Text(user.email),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute());
                },
              );
            },
          );
        },
      ),
    );
  }
}
