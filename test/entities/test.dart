import 'package:flutter_test/flutter_test.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/interfaces/ientity.dart';
import 'package:to_dev/app/utils/uuid.dart';

void testEntities() {
  test('Test todo', () {
    final todo = Todo(id: getUuid(), title: '');

    testMethodsEntities(todo);
  });
}

void testMethodsEntities(IEntity entity) {
  final map = entity.toMap();

  entity.fromMap(map);

  entity.getFields();

  entity.getTableName();
}
