import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

import 'package:to_dev/app/components/bottom_bar.dart';
import 'package:to_dev/app/components/floating_button.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => HomeWidget(), children: [
      ChildRoute('/test1', child: (context, args) => HomeWidget1())
    ]),
  ];
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, this.title = 'To Dev'}) : super(key: key);

  final String title;

  @override
  HomeWidgetState createState() => HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(
        onTap: () {},
        tooltip: 'Create an to-do',
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class HomeWidget1 extends StatefulWidget {
  const HomeWidget1({Key? key, this.title = 'To Dev'}) : super(key: key);

  final String title;

  @override
  HomeWidget1State createState() => HomeWidget1State();
}

class HomeWidget1State extends State<HomeWidget1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello, World!!!'),
      ),
    );
  }
}
