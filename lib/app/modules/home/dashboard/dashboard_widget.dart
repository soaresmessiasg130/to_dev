import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/services/todo_service.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Consumer<TodoService>(
            builder: (context, todoService, child) {
              return Text('Todo\'s count: ${todoService.count}');
            },
          ),
          OutlinedButton(
            onPressed: () {
              Provider.of<TodoService>(context, listen: false).removeAll();
            },
            child: const Text('Remove All'),
          ),
        ],
      ),
    );
  }
}
