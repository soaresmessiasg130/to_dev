import 'package:flutter/material.dart';

class CreateTodoContent extends StatefulWidget {
  const CreateTodoContent({Key? key}) : super(key: key);

  @override
  State<CreateTodoContent> createState() => _TodoContentState();
}

class _TodoContentState extends State<CreateTodoContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Create to-do',
        ),
      ),
    );
  }
}
