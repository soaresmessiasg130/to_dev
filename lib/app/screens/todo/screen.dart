import 'package:flutter/material.dart';
import 'todo-list.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Todos'),
      ),
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new dev todo...',
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
