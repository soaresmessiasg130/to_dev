import 'package:json_annotation/json_annotation.dart';
import 'package:to_dev/app/enums/status.dart';
import 'package:to_dev/app/interfaces/ientity.dart';
import 'package:to_dev/app/utils/date.dart';

part 'todo.g.dart';

@JsonSerializable(explicitToJson: true)
class Todo extends IEntity {
  String title;
  String? desc;
  Status? status = Status.waiting;
  DateTime? start = getUtcNow();
  DateTime? end = getUtcTomorow();
  DateTime? created = getUtcNow();
  DateTime? updated = getUtcNow();

  Todo({
    required String id,
    required this.title,
    this.desc,
    this.status,
    this.start,
    this.end,
    this.created,
    this.updated,
  }) : super(
          id: id,
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
