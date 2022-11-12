import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/databases/main_database.dart';
import 'package:to_dev/app/interfaces/ientity.dart';
import 'package:to_dev/app/interfaces/irepository.dart';

class Repository<T extends IEntity> implements IRepository<T> {
  final MainDatabase mainDatabase = MainDatabase.instance;

  final T model;

  Repository({required this.model});

  @override
  Future<void> create(T obj) async {
    final db = await mainDatabase.database;

    await db.insert(
      model.getTableName(),
      obj.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<T?> getOne(String id) async {
    final db = await mainDatabase.database;

    try {
      var res = await db.query(
        model.getTableName(),
        where: 'id = ?',
        whereArgs: [id],
      );

      if (res.isNotEmpty) {
        return model.fromMap(res.first) as T;
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<T>> getAll() async {
    final db = await mainDatabase.database;

    final maps = await db.query(model.getTableName());

    return List.generate(
        maps.length, (index) => model.fromMap(maps[index]) as T);
  }

  @override
  Future<void> update(T obj) async {
    final db = await mainDatabase.database;

    await db.update(
      model.getTableName(),
      obj.toMap(),
      where: 'id = ?',
      whereArgs: [obj.id],
    );
  }

  @override
  Future<void> delete(String id) async {
    final db = await mainDatabase.database;

    await db.delete(
      model.getTableName(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> deleteAll() async {
    final db = await mainDatabase.database;

    await db.delete(model.getTableName());
  }
}
