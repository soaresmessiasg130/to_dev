import 'package:flutter/material.dart';

class DialogDefault {
  Future<void> activateDialog(BuildContext context, Widget children,
      {String? title, String? cancelLabel}) async {
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title ?? ''),
                    TextButton(
                      onPressed: () => hideDialog(context),
                      child: Text(cancelLabel ?? 'Cancel'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                children,
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> hideDialog(BuildContext context) async {
    Navigator.of(context).pop();
  }
}
