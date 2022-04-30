import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/services/todo_service.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<TodoService>(
            builder: (context, service, child) {
              return const Text(
                'Messias Soares',
                style: TextStyle(
                  fontSize: 18,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
