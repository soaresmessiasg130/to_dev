import 'package:to_dev/app/interfaces/imodel.dart';

class User extends IModel {
  final int id;
  final String email;
  final String fullName;

  User({
    required this.id,
    required this.email,
    required this.fullName,
  }) {
    fields = {
      'id': id,
      'email': email,
      'fullName': fullName,
    };
  }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'email': email,
  //     'fullName': fullName,
  //   };
  // }

  @override
  String toString() {
    return 'User{id: $id, email: $email, fullName: $fullName}';
  }
}
