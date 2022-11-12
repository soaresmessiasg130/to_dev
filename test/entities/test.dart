import 'package:flutter_test/flutter_test.dart';
import 'package:to_dev/app/entities/cash.dart';
import 'package:to_dev/app/entities/project.dart';
import 'package:to_dev/app/entities/reminder.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/entities/user.dart';
import 'package:to_dev/app/interfaces/ientity.dart';

void testEntities() {
  test('Test user', () {
    final user = User();

    testMethodsEntities(user);
  });

  test('Test todo', () {
    final todo = Todo();

    testMethodsEntities(todo);
  });

  test('Test cash', () {
    final cash = Cash();

    testMethodsEntities(cash);
  });

  test('Test reminder', () {
    final reminder = Reminder();

    testMethodsEntities(reminder);
  });

  test('Test project', () {
    final project = Project(title: 'New Project');

    testMethodsEntities(project);
  });
}

void testMethodsEntities(IEntity entity) {
  entity.toMap();

  entity.fromMap({ 'title': 'New Project'});

  entity.getFields();

  entity.getTableName();
}
