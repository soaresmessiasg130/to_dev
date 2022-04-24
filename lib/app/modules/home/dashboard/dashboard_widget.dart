import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/entities/todo.dart';
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
            onPressed: () async {
              var service = Provider.of<TodoService>(
                context,
                listen: false,
              );

              await service.removeAll();
            },
            child: const Text('Remove All'),
          ),
          OutlinedButton(
            onPressed: () async {
              var service = Provider.of<TodoService>(
                context,
                listen: false,
              );

              service.add(Todo());
            },
            child: const Text('Add One'),
          ),
        ],
      ),
    );
  }
}
