class User {
  final int id;
  final String email;
  final String fullName;

  const User({
    required this.id,
    required this.email,
    required this.fullName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'fullName': fullName,
    };
  }

  @override
  String toString() {
    return 'User{id: $id, email: $email, fullName: $fullName}';
  }
}
