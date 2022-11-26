import 'package:flutter/material.dart';
import 'package:to_dev/app/modules/components/create_todo_form.dart';

class CreateSomething extends StatefulWidget {
  const CreateSomething({Key? key}) : super(key: key);

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
        callbackSuccess: () => Navigator.of(context).pop(),
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
