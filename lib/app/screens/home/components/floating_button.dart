import 'package:flutter/material.dart';

class FloatingButtonComponent extends StatelessWidget {
  final Function navigate;

  const FloatingButtonComponent(this.navigate);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => navigate('/create-todo'),
      tooltip: 'Create to-do',
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
