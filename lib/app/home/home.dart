import 'package:flutter/material.dart';
import 'todo-list.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Dev'),
      ),
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new dev todo...',
        child: Icon(Icons.add),
      ),
    );
  }
}
