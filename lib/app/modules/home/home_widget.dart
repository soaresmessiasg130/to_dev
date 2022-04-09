import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_dev/app/components/bottom_bar.dart';
import 'package:to_dev/app/components/floating_button.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Dev'),
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
