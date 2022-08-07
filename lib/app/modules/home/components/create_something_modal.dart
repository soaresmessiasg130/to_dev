import 'package:flutter/material.dart';

class CreateSomethingModal extends StatefulWidget {
  const CreateSomethingModal({Key? key}) : super(key: key);

  @override
  State<CreateSomethingModal> createState() => _CreateSomethingModalState();
}

class _CreateSomethingModalState extends State<CreateSomethingModal> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        const Text('Create something'),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create To-do',
              ),
            ),
            const Text('Anything that you need done'),
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create Reminder',
              ),
            ),
            const Text('An notification will appears to you'),
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create Project',
              ),
            ),
            const Text('Where you can manage projects easily'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Cancel',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Continue',
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
