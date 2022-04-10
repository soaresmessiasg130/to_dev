import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/data/auth.dart';
import 'package:to_dev/app/models/user.dart';

Future<void> insertUser(User user) async {
  final db = await getAuthDatabase();

  await db.insert(
    'users',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<User>> getUsers() async {
  final db = await getAuthDatabase();

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