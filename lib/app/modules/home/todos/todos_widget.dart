import 'package:flutter/material.dart';

class TodosWidget extends StatelessWidget {
  const TodosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text('Todos'),
        ),
      ],
    );
  }
}
