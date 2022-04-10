import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_dev/app/data/ddl.dart';

Future<Database> getAuthDatabase() async {
  final String userDDL = getUserDDL();

  final authDatabase = openDatabase(
    join(await getDatabasesPath(), 'auth_database.db'),
    onCreate: (db, version) {
      return db.execute(userDDL);
    },
    version: 1,
  );

  return authDatabase;
}
