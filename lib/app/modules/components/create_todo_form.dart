import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/modules/components/date_input.dart';
import 'package:to_dev/app/modules/components/time_input.dart';
import 'package:to_dev/app/utils/uuid.dart';

import '../../entities/todo.dart';
import '../../services/todo_service.dart';

class CreateTodoForm extends StatefulWidget {
  const CreateTodoForm({
    Key? key,
    required this.callbackSuccess,
  }) : super(key: key);

  final VoidCallback callbackSuccess;

  @override
  State<CreateTodoForm> createState() => _CreateTodoFormState();
}

class _CreateTodoFormState extends State<CreateTodoForm> {
  final _formKey = GlobalKey<FormState>();
  final descController = TextEditingController();
  late FocusNode descFocusNode;

  @override
  void initState() {
    super.initState();

    descFocusNode = FocusNode();

    descFocusNode.requestFocus();
  }

  @override
  void dispose() {
    descFocusNode.dispose();

    descController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Todo\'s description'),
          const SizedBox(height: 8),
          TextFormField(
            controller: descController,
            focusNode: descFocusNode,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Description is required';
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Todo\'s description',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Finish in'),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      DateInput(restorationId: 'date_input'),
                      TimeInput(restorationId: 'time_input'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: widget.callbackSuccess,
                child: const Text('Go back'),
              ),
              Consumer<TodoService>(
                builder: (_, service, __) {
                  return ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await service.add(
                          Todo(
                            id: getUuid(),
                            title: 'csacKJsa cJ c aca jacs',
                          ),
                        );

                        widget.callbackSuccess();
                      }
                    },
                    child: const Text('Save'),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
