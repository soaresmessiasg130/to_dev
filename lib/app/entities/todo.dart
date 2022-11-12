import 'package:json_annotation/json_annotation.dart';
import 'package:to_dev/app/enums/status.dart';
import 'package:to_dev/app/interfaces/ientity.dart';

part 'todo.g.dart';

@JsonSerializable(explicitToJson: true)
class Todo extends IEntity {
  String? desc;
  Status? status = Status.waiting;
  DateTime? start = DateTime.now();
  DateTime? end = DateTime.now().add(const Duration(days: 1));

  Todo({
    this.desc,
    this.status,
    this.start,
    this.end,
    int? id,
    DateTime? created,
    DateTime? updated,
  }) : super(
          id: id,
          created: created,
          updated: updated,
        );

  @override
  IEntity fromMap(Map<String, dynamic> map) => _$TodoFromJson(map);

  @override
  Map<String, dynamic> toMap() => _$TodoToJson(this);

  @override
  List<String> getFields() => toMap().keys.toList();

  @override
  String getTableName() => 'todos';
}
