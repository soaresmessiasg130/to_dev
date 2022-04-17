import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/interfaces/imodel.dart';
import 'package:to_dev/app/interfaces/irepository.dart';

class Repository<T extends IModel> implements IRepository<T> {
  final Database db;

  final String tableName;

  Repository({
    required this.db,
    required this.tableName,
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
  Future<Map<String, dynamic>?> getOne(int id) async {
    final res = await db.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (res.length > 0) {
      return res.first;
    }

    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> getAll() async {
    return await db.query(tableName);
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
