import 'package:flutter/material.dart';

class TodoContent extends StatefulWidget {
  const TodoContent({Key? key}) : super(key: key);

  @override
  State<TodoContent> createState() => _TodoContentState();
}

class _TodoContentState extends State<TodoContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Todo',
        ),
      ),
    );
  }
}
