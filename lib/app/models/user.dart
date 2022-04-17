import 'package:to_dev/app/interfaces/ientity.dart';

class User extends IEntity {
  String? name;
  String? email;

  User({String? name, String? email, int? id}) : super(id: id) {
    this.name = name;
    this.email = email;
  }

  @override
  List<String> getFields() => ['id', 'name', 'email'];

  @override
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'email': email};

  @override
  IEntity fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];

    return this;
  }

  @override
  String toString() => 'User()';

  @override
  final String tableName = 'users';

  @override
  final String ddl = '''
    CREATE TABLE users (id INTEGER PRIMARY KEY, email TEXT, name TEXT)
  ''';
}
