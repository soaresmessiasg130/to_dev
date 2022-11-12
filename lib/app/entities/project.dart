import 'package:json_annotation/json_annotation.dart';

import '../interfaces/ientity.dart';

part 'project.g.dart';

@JsonSerializable(explicitToJson: true)
class Project extends IEntity {
  String title;
  String? desc;
  DateTime? start;
  DateTime? end;

  Project({
    required this.title,
    this.desc,
    this.start,
    this.end,
    DateTime? created,
    DateTime? updated,
    int? id,
  }) : super(
          id: id,
          created: created,
          updated: updated,
        );

  @override
  IEntity fromMap(Map<String, dynamic> map) => _$ProjectFromJson(map);

  @override
  Map<String, dynamic> toMap() => _$ProjectToJson(this);

  @override
  List<String> getFields() => toMap().keys.toList();

  @override
  String getTableName() => 'projects';
}
