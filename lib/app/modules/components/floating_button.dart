import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final String tooltip;
  final void Function()? onPressed;

  const FloatingButton({
    Key? key,
    required this.tooltip,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0,
      child: FloatingActionButton(
        onPressed: onPressed,
        tooltip: tooltip,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
