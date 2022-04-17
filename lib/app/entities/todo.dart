import 'package:to_dev/app/enums/status.dart';
import 'package:to_dev/app/interfaces/ientity.dart';

class Todo extends IEntity {
  String? desc;
  Status status = Status.Waiting;
  DateTime? start;
  DateTime? end;

  Todo({
    String? desc,
    Status status = Status.Waiting,
    DateTime? start,
    DateTime? end,
    int? id,
    DateTime? created,
    DateTime? updated,
  }) : super(
          id: id,
          created: created,
          updated: updated,
        ) {
    this.desc = desc;
    this.status = status;
    this.start = start;
    this.end = end;
  }

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
    start = DateTime.fromMillisecondsSinceEpoch(map['start']);
    end = DateTime.fromMillisecondsSinceEpoch(map['end']);
    created = DateTime.fromMillisecondsSinceEpoch(map['created']);
    updated = DateTime.fromMillisecondsSinceEpoch(map['updated']);

    return this;
  }

  @override
  String toString() => 'Todo()';
}
