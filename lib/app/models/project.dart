import 'package:to_dev/app/models/todo.dart';

class Project {
  final int id;
  final String name;
  final DateTime? start;
  final DateTime? end;
  final List<Todo> todos;

  Project({
    required this.id,
    required this.name,
    this.start,
    this.end,
    this.todos = const [],
  });
}
