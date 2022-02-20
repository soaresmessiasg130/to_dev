import 'package:flutter/material.dart';

import 'components/home_bottom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navIndex = 0;

  static const List<Widget> _list = [
    Text('Index 0: Home'),
    Text('Index 1: Todos'),
    Text('Index 2: Profile'),
  ];

  void _navigate() {
    setState(() {
      _navIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Dev'),
      ),
      body: Center(
        child: _list.elementAt(_navIndex),
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
