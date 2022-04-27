import 'package:flutter/material.dart';

class DialogDefault {
  Future<void> activateDialog(
      BuildContext context, List<Widget> children) async {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              children: children,
            ),
          ),
        );
      },
    );
  }
}
