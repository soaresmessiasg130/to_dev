import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.buttons}) : super(key: key);

  final List<Widget> buttons;

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

// [
//   IconButton(
//     onPressed: () {},
//     color: Colors.white,
//     padding: EdgeInsets.all(16),
//     icon: Icon(
//       Icons.dashboard,
//     ),
//   ),
//   IconButton(
//     onPressed: () {},
//     color: Colors.white,
//     padding: EdgeInsets.all(16),
//     icon: Icon(
//       Icons.format_list_bulleted,
//     ),
//   ),
//   IconButton(
//     onPressed: () {},
//     color: Colors.white,
//     padding: EdgeInsets.all(16),
//     icon: Icon(
//       Icons.person,
//     ),
//   )
// ]