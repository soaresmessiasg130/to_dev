abstract class IModel {
  Map<String, dynamic> fields = {};

  Map<String, dynamic> toMap() {
    return fields;
  }

  // @override
  // String toString() {
  //   return 'User{id: $id, email: $email, fullName: $fullName}';
  // }
}
