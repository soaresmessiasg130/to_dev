// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      title: json['title'] as String,
      desc: json['desc'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
