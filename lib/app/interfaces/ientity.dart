abstract class IEntity {
  int? id;
  DateTime? created = DateTime.now();
  DateTime? updated = DateTime.now();

  IEntity({
    this.id,
    this.created,
    this.updated,
  });

  List<String> getFields();

  Map<String, dynamic> toMap();

  IEntity fromMap(Map<String, dynamic> map);

  String getTableName();
}
