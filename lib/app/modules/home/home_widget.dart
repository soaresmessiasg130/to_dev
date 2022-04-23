import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/components/bottom_bar.dart';
import 'package:to_dev/app/components/floating_button.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/services/todo_service.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  void onPressedFloatingButton(BuildContext context) {
    Provider.of<TodoService>(context, listen: false).add(
      Todo(id: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TodoService()),
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
          tooltip: 'Create an to-do',
          onPressed: onPressedFloatingButton,
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
