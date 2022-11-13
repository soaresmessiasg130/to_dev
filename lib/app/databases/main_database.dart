import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/databases/main_database_ddl.dart';

class MainDatabase {
  MainDatabase._privateConstructor();

  static final MainDatabase instance = MainDatabase._privateConstructor();

  final String mainDatabaseName = 'main_database.db';

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();

    final path = join(databasesPath, mainDatabaseName);

    final database = await openDatabase(
      path,
      version: 2,
      onCreate: _onCreateDatabase,
      onUpgrade: _onUpgradeDatabase,
    );

    _database = database;

    return database;
  }

  Future<void> _onCreateDatabase(Database db, int version) async {
    try {
      for (var ddl in mainDatabaseDdlCreate) {
        await db.execute(ddl);
      }
    } catch (e) {
      return;
    }
  }

  FutureOr<void> _onUpgradeDatabase(
      Database db, int oldVersion, int newVersion) async {
    try {
      for (var ddl in mainDatabaseDdlUpdate) {
        await db.execute(ddl);
      }
    } catch (e) {
      return;
    }
  }
}
