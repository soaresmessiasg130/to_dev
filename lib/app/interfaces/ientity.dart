abstract class IEntity {
  int? id;
  DateTime? created;
  DateTime? updated;

  IEntity({
    int? this.id,
    DateTime? this.created,
    DateTime? this.updated,
  });

  List<String> getFields() => [];

  Map<String, dynamic> toMap() => {};

  IEntity fromMap(Map<String, dynamic> map);

  String toString() => 'Entity()';
}
