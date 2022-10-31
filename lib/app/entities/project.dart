import '../interfaces/ientity.dart';

class Project extends IEntity {
  String title;
  String? desc;
  DateTime? start;
  DateTime? end;

  Project({
    required this.title,
    this.desc,
    this.start,
    this.end,
    DateTime? created,
    DateTime? updated,
    int? id,
  }) : super(
          id: id,
          created: created,
          updated: updated,
        );

  @override
  IEntity fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    desc = map['desc'];
    start = map['start'];
    end = map['end'];
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
        'title',
        'desc',
        'start',
        'end',
        'created',
        'updated',
      ];

  @override
  String getTableName() => 'projects';

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'desc': desc,
        'start': start?.millisecondsSinceEpoch.abs(),
        'end': end?.millisecondsSinceEpoch.abs(),
        'created': created?.millisecondsSinceEpoch.abs(),
        'updated': updated?.millisecondsSinceEpoch.abs(),
      };
}
