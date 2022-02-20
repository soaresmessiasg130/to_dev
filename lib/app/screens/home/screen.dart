import 'package:flutter/material.dart';

import 'components/home_bottom_app_bar.dart';

import 'contents/dashboard/content.dart';
import 'contents/user/content.dart';
import 'contents/todo/content.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _contentIndex = 0;

  static const List<Widget> _contents = [
    DashboardContent(),
    TodoContent(),
    UserContent(),
  ];

  static const List<String> _titles = [
    'Dashboard',
    'Todos',
    'User',
  ];

  void _navigate(value) {
    setState(() {
      _contentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles.elementAt(_contentIndex),
        ),
      ),
      body: Center(
        child: _contents.elementAt(_contentIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create',
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: HomeBottomAppBar(_navigate),
    );
  }
}
