abstract class IEntity {
  String id;

  IEntity({
    required this.id,
  });

  List<String> getFields();

  Map<String, dynamic> toMap();

  IEntity fromMap(Map<String, dynamic> map);

  String getTableName();
}
