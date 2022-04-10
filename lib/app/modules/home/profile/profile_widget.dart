import 'package:flutter/material.dart';
import 'package:to_dev/app/models/user.dart';
import 'package:to_dev/app/repositories/user_repository.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  void addUser() async {
    final user = const User(
      id: 2,
      email: 'soaresmessiasg130@gmail.com',
      fullName: 'Messias Soares',
    );

    await insertUser(user);

    print(user.toString());

    print(await getUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Profile'),
          ElevatedButton(
            onPressed: addUser,
            child: Text('Add new User'),
          ),
        ],
      ),
    );
  }
}
