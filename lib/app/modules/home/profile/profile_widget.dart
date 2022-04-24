import 'package:flutter/material.dart';
import 'package:to_dev/app/databases/main_database.dart';
import 'package:to_dev/app/entities/user.dart';
import 'package:to_dev/app/repositories/repository.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  User? user;

  @override
  void initState() {
    super.initState();

    getUserData();
  }

  Future<void> getUserData() async {
    var repo = Repository<User>(
      mainDatabase: MainDatabase.instance,
      model: User(),
    );

    var userFromDb = await repo.getOne(1);

    if (userFromDb == null) {
      User newUser = User(
        id: 1,
        name: 'Messias',
        email: 'soaresmessiasg130@gmail.com',
      );

      await repo.create(newUser);

      setState(() {
        user = newUser;
      });
    } else {
      setState(() {
        user = userFromDb;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            user?.name ?? '',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            user?.email ?? '',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
