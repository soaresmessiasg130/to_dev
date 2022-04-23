import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final String tooltip;
  final void Function(BuildContext context) onPressed;

  const FloatingButton({
    Key? key,
    required this.tooltip,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => onPressed(context),
      tooltip: tooltip,
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
