import 'package:to_dev/app/enums/status.dart';
import 'package:to_dev/app/interfaces/ientity.dart';

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
  List<String> getFields() => [
        'id',
        'desc',
        'status',
        'start',
        'end',
        'created',
        'updated',
      ];

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'desc': desc,
        'status': status,
        'start': start?.millisecondsSinceEpoch.abs(),
        'end': end?.millisecondsSinceEpoch.abs(),
        'created': created?.millisecondsSinceEpoch.abs(),
        'updated': updated?.millisecondsSinceEpoch.abs(),
      };

  @override
  IEntity fromMap(Map<String, dynamic> map) {
    id = map['id'];
    desc = map['desc'];
    status = map['status'];
    start = map['start'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['start'])
        : DateTime.now();
    end = map['end'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['end'])
        : DateTime.now();
    created = map['created'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['created'])
        : DateTime.now();
    updated = map['updated'] == Null
        ? DateTime.fromMillisecondsSinceEpoch(map['updated'])
        : DateTime.now();

    return this;
  }

  @override
  String getTableName() => 'todos';

  @override
  String toString() => 'Todo()';
}
