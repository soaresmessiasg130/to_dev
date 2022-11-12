// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      desc: json['desc'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      id: json['id'] as int?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'desc': instance.desc,
      'status': _$StatusEnumMap[instance.status],
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };

const _$StatusEnumMap = {
  Status.waiting: 'waiting',
  Status.started: 'started',
  Status.resolved: 'resolved',
  Status.done: 'done',
  Status.canceled: 'canceled',
  Status.deleted: 'deleted',
};
