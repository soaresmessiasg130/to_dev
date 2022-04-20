import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/interfaces/ientity.dart';
import 'package:to_dev/app/interfaces/irepository.dart';

class Repository<T extends IEntity> implements IRepository<T> {
  final Database db;

  final String tableName;

  final T model;

  Repository({
    required this.db,
    required this.tableName,
    required this.model,
  });

  @override
  Future<void> create(T obj) async {
    await db.insert(
      tableName,
      obj.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<T?> getOne(int id) async {
    final res = await db.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (res.isNotEmpty) {
      return model.fromMap(res.first) as T;
    }

    return null;
  }

  @override
  Future<List<T>> getAll() async {
    final maps = await db.query(tableName);

    return List.generate(
        maps.length, (index) => model.fromMap(maps[index]) as T);
  }

  @override
  Future<void> update(T obj) async {
    await db.update(
      tableName,
      obj.toMap(),
      where: 'id = ?',
      whereArgs: [obj.id],
    );
  }

  @override
  Future<void> delete(int id) async {
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> deleteAll() async {
    await db.delete(tableName);
  }
}
