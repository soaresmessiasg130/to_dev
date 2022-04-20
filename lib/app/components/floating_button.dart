import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key, required this.tooltip, required this.onTap})
      : super(key: key);

  final String tooltip;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {},
      tooltip: 'Create to-do',
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
