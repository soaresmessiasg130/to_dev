import 'package:flutter/material.dart';
import 'package:to_dev/app/interfaces/imodel.dart';
import 'package:to_dev/app/models/user.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  void onPressButton() async {
    IModel model = User(
      id: 1,
      email: 'soaresmessiasg130@gmail.com',
      fullName: 'Messias Soares',
    );

    print(model.toString());
    print(model.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Profile'),
          ElevatedButton(
            onPressed: onPressButton,
            child: Text('Delete my Account'),
          ),
        ],
      ),
    );
  }
}
