import 'package:flutter/material.dart';
import 'package:to_dev/app/components/create_todo_form.dart';

class CreateSomethingModal extends StatefulWidget {
  const CreateSomethingModal({Key? key}) : super(key: key);

  @override
  State<CreateSomethingModal> createState() => _CreateSomethingModalState();
}

class _CreateSomethingModalState extends State<CreateSomethingModal> {
  @override
  Widget build(BuildContext context) {
    return 1 == 2
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('To-do'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Reminder'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Project'),
                  ),
                ],
              ),
            ],
          )
        : const CreateTodoForm();
  }
}
