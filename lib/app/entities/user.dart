import 'package:json_annotation/json_annotation.dart';
import 'package:to_dev/app/interfaces/ientity.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
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
  IEntity fromMap(Map<String, dynamic> map) => _$UserFromJson(map);

  @override
  Map<String, dynamic> toMap() => _$UserToJson(this);

  @override
  List<String> getFields() => toMap().keys.toList();

  @override
  String getTableName() => 'users';
}
