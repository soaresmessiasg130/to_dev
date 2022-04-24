import 'package:flutter/material.dart';

class TodosWidget extends StatefulWidget {
  const TodosWidget({Key? key}) : super(key: key);

  @override
  State<TodosWidget> createState() => _TodosWidgetState();
}

class _TodosWidgetState extends State<TodosWidget> {
  final descriptionController = TextEditingController();

  late FocusNode focusNode;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    descriptionController.addListener(_printDescriptionValue);

    focusNode = FocusNode();
  }

  @override
  void dispose() {
    descriptionController.dispose();

    focusNode.dispose();

    super.dispose();
  }

  void _printDescriptionValue() {
    print(
      'Print value by descriptionController: ${descriptionController.text}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  hintText: 'Description',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }

                  return null;
                },
                onChanged: (value) {
                  print('Print value by onChanged: $value');
                },
                autofocus: true,
              ),
              ElevatedButton(
                onPressed: () {
                  focusNode.requestFocus();
                },
                child: const Text('Next'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Cash',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }

                  return null;
                },
                onChanged: (value) {
                  print('Print value by onChanged: $value');
                },
                autofocus: true,
                focusNode: focusNode,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Done'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
