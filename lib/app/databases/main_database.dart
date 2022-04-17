import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/models/user.dart';

class MainDatabase {
  MainDatabase._privateConstructor();

  static final MainDatabase instance = MainDatabase._privateConstructor();

  final String mainDatabaseName = 'main_database.db';

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), mainDatabaseName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreateDatabase,
    );
  }

  Future<void> _onCreateDatabase(Database db, int version) async {
    String userDDL = User().ddl;

    await db.execute(userDDL);
  }
}
