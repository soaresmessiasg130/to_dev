// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cash _$CashFromJson(Map<String, dynamic> json) => Cash(
      month: json['month'] == null
          ? null
          : DateTime.parse(json['month'] as String),
      total: (json['total'] as num?)?.toDouble(),
      id: json['id'] as int?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$CashToJson(Cash instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'month': instance.month?.toIso8601String(),
      'total': instance.total,
    };
