import 'package:flutter/material.dart';
import 'package:to_dev/app/modules/components/create_todo_form.dart';

class CreateSomethingModal extends StatefulWidget {
  const CreateSomethingModal({Key? key}) : super(key: key);

  @override
  State<CreateSomethingModal> createState() => _CreateSomethingModalState();
}

class _CreateSomethingModalState extends State<CreateSomethingModal> {
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
        onGoBack: () => setState(() {
          creationMode = 0;
        }),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
