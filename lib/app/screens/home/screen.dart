import 'package:flutter/material.dart';
import 'package:to_dev/app/screens/home/components/floating_button.dart';

import 'components/bottom_bar.dart';

import 'contents/create_todo/content.dart';
import 'contents/dashboard/content.dart';
import 'contents/todo/content.dart';
import 'contents/user/content.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _content = DashboardContent();
  String _contentTitle = 'Dashboard';

  static const Map<String, dynamic> _contents = {
    '/dashboard': {
      'title': 'Dashboard',
      'content': DashboardContent(),
    },
    '/todo': {
      'title': 'My to-do\'s',
      'content': TodoContent(),
    },
    '/create-todo': {
      'title': 'Create to-do',
      'content': CreateTodoContent(),
    },
    '/user': {
      'title': 'User preferences',
      'content': UserContent(),
    },
  };

  void _navigate(value) {
    setState(() {
      _contentTitle = _contents[value]['title'];
      _content = _contents[value]['content'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _contentTitle,
        ),
      ),
      body: Center(
        child: _content,
      ),
      floatingActionButton: FloatingButtonComponent(_navigate),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomBarComponent(_navigate),
    );
  }
}
