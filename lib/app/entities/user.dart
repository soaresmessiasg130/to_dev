import 'package:to_dev/app/interfaces/ientity.dart';

class User extends IEntity {
  String? name;
  String? email;

  User({
    this.name,
    this.email,
    DateTime? created,
    DateTime? updated,
    int? id,
  }) : super(
          id: id,
          created: created,
          updated: updated,
        );

  @override
  List<String> getFields() => ['id', 'name', 'email'];

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'created': created?.millisecondsSinceEpoch.abs(),
        'updated': updated?.millisecondsSinceEpoch.abs(),
      };

  @override
  IEntity fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    created = DateTime.fromMillisecondsSinceEpoch(map['created']);
    updated = DateTime.fromMillisecondsSinceEpoch(map['updated']);

    return this;
  }

  @override
  String toString() => 'User()';
}
