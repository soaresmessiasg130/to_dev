import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/data/auth.dart';
import 'package:to_dev/app/interfaces/imodel.dart';
import 'package:to_dev/app/interfaces/irepository.dart';
import 'package:to_dev/app/models/user.dart';

class Repository<T extends IModel> extends ChangeNotifier
    implements IRepository<T> {
  late Database _db;

  final String tableName;

  final List<T> _items = [];

  UnmodifiableListView<T> get items => UnmodifiableListView(_items);

  int get count => _items.length;

  Repository({required this.tableName}) {
    initRepository();
  }

  Future<void> initRepository() async {
    _db = await MainDatabase.instance.database;
  }

  @override
  Future<void> create(T obj) {
    // TODO: implement create
    notifyListeners();
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    notifyListeners();
    throw UnimplementedError();
  }

  @override
  Future<T> getOne(int id) {
    // TODO: implement getOne
    notifyListeners();
    throw UnimplementedError();
  }

  @override
  Future<void> update(int id, T obj) {
    // TODO: implement update
    notifyListeners();
    throw UnimplementedError();
  }
}

Future<void> insertUser(User user) async {
  final db = await MainDatabase.instance.database;

  await db.insert(
    'users',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<User>> getUsers() async {
  final db = await MainDatabase.instance.database;

  final List<Map<String, dynamic>> maps = await db.query('users');

  return List.generate(
    maps.length,
    (index) => User(
      id: maps[index]['id'],
      email: maps[index]['email'],
      fullName: maps[index]['fullName'],
    ),
  );
}

Future<void> updateUser(User user) async {
  final db = await MainDatabase.instance.database;

  await db.update(
    'users',
    user.toMap(),
    where: 'id = ?',
    whereArgs: [user.id],
  );
}

Future<void> deleteUser(int id) async {
  final db = await MainDatabase.instance.database;

  await db.delete(
    'users',
    where: 'id = ?',
    whereArgs: [id],
  );
}
