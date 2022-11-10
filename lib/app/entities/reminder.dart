import 'package:json_annotation/json_annotation.dart';

import '../interfaces/ientity.dart';

part 'reminder.g.dart';

@JsonSerializable()
class Reminder extends IEntity {
  String? label;
  DateTime? date;
  bool stopped = false;

  @override
  IEntity fromMap(Map<String, dynamic> map) => _$ReminderFromJson(map);

  @override
  Map<String, dynamic> toMap() => _$ReminderToJson(this);

  @override
  List<String> getFields() => toMap().keys.toList();

  @override
  String getTableName() => 'reminders';
}
