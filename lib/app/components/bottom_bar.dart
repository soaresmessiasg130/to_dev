import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);

  final List<Widget> buttons = [
    IconButton(
      onPressed: () {},
      color: Colors.white,
      padding: EdgeInsets.all(16),
      icon: Icon(
        Icons.dashboard,
      ),
    ),
    IconButton(
      onPressed: () {},
      color: Colors.white,
      padding: EdgeInsets.all(16),
      icon: Icon(
        Icons.format_list_bulleted,
      ),
    ),
    Container(
      width: 10,
      height: 10,
    ),
    IconButton(
      onPressed: () {},
      color: Colors.white,
      padding: EdgeInsets.all(16),
      icon: Icon(
        Icons.search,
      ),
    ),
    IconButton(
      onPressed: () {},
      color: Colors.white,
      padding: EdgeInsets.all(16),
      icon: Icon(
        Icons.person,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).primaryColor,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: buttons,
        ),
      ),
    );
  }
}
