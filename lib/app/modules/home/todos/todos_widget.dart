import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/services/todo_service.dart';

class TodosWidget extends StatefulWidget {
  const TodosWidget({Key? key}) : super(key: key);

  @override
  State<TodosWidget> createState() => _TodosWidgetState();
}

class _TodosWidgetState extends State<TodosWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoService>(
      builder: (context, value, child) {
        final todos = value.items.toList();

        todos.sort((a, b) {
          if (a.created!.isBefore(b.created!)) {
            return 1;
          }

          if (a.created!.isAfter(b.created!)) {
            return -1;
          }

          return 0;
        });

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: value.count,
          itemBuilder: (_, i) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    todos[i].title,
                  ),
                  Text(
                    todos[i].end.toString(),
                  ),
                  TextButton(
                    child: Text(
                      'Remove',
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                      ),
                    ),
                    onPressed: () async {
                      await value.remove(todos[i]);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
