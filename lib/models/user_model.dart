class UserModel {
  final String name;
  final String email;
  final String profilePicture;

  UserModel({
    required this.name,
    required this.email,
    required this.profilePicture,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? 'No Name',
      email: json['email'] ?? 'No Email',
      profilePicture: 'https://i.pravatar.cc/150?img=${json['id'] ?? 1}',
    );
  }
}
