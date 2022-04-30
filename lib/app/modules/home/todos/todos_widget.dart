import 'package:flutter/material.dart';

class TodosWidget extends StatefulWidget {
  const TodosWidget({Key? key}) : super(key: key);

  @override
  State<TodosWidget> createState() => _TodosWidgetState();
}

class _TodosWidgetState extends State<TodosWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Todos'),
    );
  }
}
