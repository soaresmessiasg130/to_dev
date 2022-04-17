import 'package:flutter/material.dart';
import 'package:to_dev/app/databases/main_database.dart';
import 'package:to_dev/app/models/user.dart';
import 'package:to_dev/app/repositories/repository.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  Map<String, dynamic> user = {};

  void onPressButton() async {
    print('Pressed');

    final db = await MainDatabase.instance.database;

    Repository<User> repo = Repository<User>(
      db: db,
      tableName: 'users',
    );

    await repo.create(User(
      name: 'Messias Soares',
      email: 'soaresmessiasg130@gmail.com',
    ));

    final newUser = await repo.getOne(1);

    if (newUser != null) {
      setState(() {
        user = newUser;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Profile'),
          ElevatedButton(
            onPressed: onPressButton,
            child: Text('Press here ${user['name']}'),
          ),
        ],
      ),
    );
  }
}
