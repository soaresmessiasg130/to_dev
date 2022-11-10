// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reminder _$ReminderFromJson(Map<String, dynamic> json) => Reminder()
  ..id = json['id'] as int?
  ..created =
      json['created'] == null ? null : DateTime.parse(json['created'] as String)
  ..updated =
      json['updated'] == null ? null : DateTime.parse(json['updated'] as String)
  ..label = json['label'] as String?
  ..date = json['date'] == null ? null : DateTime.parse(json['date'] as String)
  ..stopped = json['stopped'] as bool;

Map<String, dynamic> _$ReminderToJson(Reminder instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'label': instance.label,
      'date': instance.date?.toIso8601String(),
      'stopped': instance.stopped,
    };
