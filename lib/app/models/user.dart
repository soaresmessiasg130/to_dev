import 'package:to_dev/app/interfaces/imodel.dart';

class User extends IModel {
  final String name;
  final String email;

  User({required this.name, required this.email, int? id}) : super(id: id);

  @override
  List<String> getFields() => ['id', 'name', 'email'];

  @override
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'email': email};

  @override
  String toString() => 'User()';
}
