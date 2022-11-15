import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/modules/components/bottom_bar.dart';
import 'package:to_dev/app/modules/components/floating_button.dart';
import 'package:to_dev/app/modules/home/components/create_something.dart';
import 'package:to_dev/app/services/todo_service.dart';

import '../components/default_dialog.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final todoService = TodoService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => todoService,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('To Dev'),
        ),
        body: Column(
          children: const [
            Expanded(
              child: RouterOutlet(),
            ),
          ],
        ),
        floatingActionButton: FloatingButton(
          tooltip: 'Create',
          onPressed: () async => defaultDialog(
            context: context,
            title: 'Create something',
            content: const CreateSomething(),
          ),
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
