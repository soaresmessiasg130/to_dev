import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:to_dev/app/components/bottom_bar.dart';
import 'package:to_dev/app/components/floating_button.dart';
import 'package:to_dev/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'To Dev'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('HomePage'),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(
        onTap: () {},
        tooltip: 'Create',
      ),
      bottomNavigationBar: BottomBar(
        buttons: [
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
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
