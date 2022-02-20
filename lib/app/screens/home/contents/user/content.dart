import 'package:flutter/material.dart';

class UserContent extends StatefulWidget {
  const UserContent({Key? key}) : super(key: key);

  @override
  State<UserContent> createState() => _UserContentState();
}

class _UserContentState extends State<UserContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'User',
        ),
      ),
    );
  }
}
