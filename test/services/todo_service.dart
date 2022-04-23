import 'package:flutter_test/flutter_test.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/services/todo_service.dart';

void todoServiceTest() {
  test('Testing TodoService method: add()', () async {
    final service = TodoService();

    final initialCount = service.count;

    service.addListener(() {
      expect(service.count, greaterThan(initialCount));
    });

    final newTodo = Todo(id: 1);

    service.add(newTodo);
  });

  test('Testing TodoService method: remove()', () async {
    final service = TodoService();

    final newTodo = Todo(id: 1);

    service.add(newTodo);

    final countAfterAdd = service.count;

    service.addListener(() {
      expect(service.count, lessThan(countAfterAdd));
    });

    service.remove(newTodo);
  });

  test('Testing TodoService method: removeAll()', () async {
    final service = TodoService();

    for (int i = 1; i < 3; i++) {
      service.add(Todo(id: i));
    }

    service.addListener(() {
      expect(service.count, equals(0));
    });

    service.removeAll();
  });
}
