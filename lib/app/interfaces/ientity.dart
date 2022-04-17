abstract class IEntity {
  int? id;

  IEntity({int? this.id});

  List<String> getFields() => [];

  Map<String, dynamic> toMap() => {};

  IEntity fromMap(Map<String, dynamic> map);

  String toString() => 'Entity()';

  final String tableName = 'entity';

  final String ddl = '''
    CREATE TABLE entity (id INTEGER PRIMARY KEY)
  ''';
}
