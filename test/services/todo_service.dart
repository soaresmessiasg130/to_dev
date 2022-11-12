import 'package:flutter_test/flutter_test.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/services/todo_service.dart';
import 'package:to_dev/app/utils/uuid.dart';

void testTodoService() {
  test('Testing TodoService method: add()', () async {
    final service = TodoService();

    final initialCount = service.count;

    service.addListener(() {
      expect(service.count, greaterThan(initialCount));
    });

    final newTodo = Todo(title: 'New Todo', id: getUuid());

    service.add(newTodo);
  });

  test('Testing TodoService method: remove()', () async {
    final service = TodoService();

    final newTodo = Todo(title: 'New Todo', id: getUuid());

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
      service.add(Todo(title: 'New Todo', id:  getUuid()));
    }

    service.addListener(() {
      expect(service.count, equals(0));
    });

    service.removeAll();
  });
}
