import 'package:json_annotation/json_annotation.dart';
import '../interfaces/ientity.dart';

part 'cash.g.dart';

@JsonSerializable(explicitToJson: true)
class Cash extends IEntity {
  DateTime? month;
  double? total;

  Cash({
    this.month,
    this.total,
    int? id,
    DateTime? created,
    DateTime? updated,
  }) : super(id: id, created: created);

  @override
  IEntity fromMap(Map<String, dynamic> map) => _$CashFromJson(map);

  @override
  Map<String, dynamic> toMap() => _$CashToJson(this);

  @override
  List<String> getFields() => toMap().keys.toList();

  @override
  String getTableName() => 'cashs';
}
