import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MainDatabase {
  MainDatabase._privateConstructor();

  static final MainDatabase instance = MainDatabase._privateConstructor();

  final String mainDatabaseName = 'main_database.db';

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();

    final path = join(databasesPath, mainDatabaseName);

    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreateDatabase,
      onUpgrade: _onUpgradeDatabase,
    );
  }

  Future<void> _onCreateDatabase(Database db, int version) async {
    List<String> ddls = [
      '''
        CREATE TABLE todos (
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          title TEXT NOT NULL,
          desc TEXT,
          status TEXT,
          start INTEGER,
          end INTEGER,
          created INTEGER,
          updated INTEGER
        );
      '''
    ];

    try {
      for (var ddl in ddls) {
        await db.execute(ddl);
      }
    } catch (e) {
      return;
    }
  }

  FutureOr<void> _onUpgradeDatabase(Database db, int oldVersion, int newVersion) async {
    List<String> ddls = [
      '''DROP TABLE users;''',
      '''DROP TABLE todos;''',
      '''
        CREATE TABLE todos (
          id TEXT PRIMARY KEY, 
          title TEXT NOT NULL,
          desc TEXT,
          status TEXT,
          start INTEGER,
          end INTEGER,
          created INTEGER,
          updated INTEGER
        );
      '''
    ];

    try {
      for (var ddl in ddls) {
        await db.execute(ddl);
      }
    } catch (e) {
      return;
    }
  }
}
