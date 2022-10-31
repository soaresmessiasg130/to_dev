import '../interfaces/ientity.dart';

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
  IEntity fromMap(Map<String, dynamic> map) {
    id = map['id'];
    month = map['month'];
    total = map['total'];
    created = map['created'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['created'])
        : DateTime.now();
    updated = map['updated'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['updated'])
        : DateTime.now();

    return this;
  }

  @override
  List<String> getFields() => [
        'id',
        'month',
        'total',
        'created',
        'updated',
      ];

  @override
  String getTableName() => 'cashs';

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'month': month,
        'total': total,
        'created': created?.millisecondsSinceEpoch.abs(),
        'updated': updated?.millisecondsSinceEpoch.abs(),
      };
}
