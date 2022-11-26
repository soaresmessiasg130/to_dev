import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/modules/components/create_todo_form.dart';

import '../../../entities/todo.dart';
import '../../../services/todo_service.dart';

class CreateSomething extends StatefulWidget {
  const CreateSomething(this.todoService, {Key? key}) : super(key: key);

  final TodoService todoService;

  @override
  State<CreateSomething> createState() => _CreateSomethingState();
}

class _CreateSomethingState extends State<CreateSomething> {
  int creationMode = 0;

  void changeCreationMode(int mode) {
    setState(() {
      creationMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (creationMode == 2) {
      return CreateTodoForm(
        onGoBack: () => setState(
          () {
            creationMode = 0;
          },
        ),
        onSave: (Todo todo) async => {await widget.todoService.add(todo)},
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () => changeCreationMode(1),
              child: const Text('Reminder'),
            ),
            TextButton(
              onPressed: () => changeCreationMode(2),
              child: const Text('To-do'),
            ),
            TextButton(
              onPressed: () => changeCreationMode(3),
              child: const Text('Project'),
            ),
          ],
        ),
      ],
    );
  }
}
