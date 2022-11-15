import 'package:flutter/material.dart';

dynamic defaultDialog(
        {required BuildContext context,
        required String title,
        required Widget content}) async =>
    await showDialog(
      context: context,
      useSafeArea: true,
      builder: (_) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  'scacsja nkcanjckjanskc nsakn ck s ajn kca s csac sa sca',
                  softWrap: true,
                  maxLines: 3,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
          content: Container(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width * 0.7 - 16,
            ),
            child: SingleChildScrollView(
              child: ListBody(
                children: [
                  content,
                ],
              ),
            ),
          ),
          scrollable: true,
          insetPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          iconPadding: EdgeInsets.zero,
          titlePadding: const EdgeInsets.all(16),
          contentPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          actionsPadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        );
      },
    );
