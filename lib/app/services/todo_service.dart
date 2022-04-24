import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/interfaces/irepository.dart';
import 'package:to_dev/app/repositories/repository.dart';

class TodoService extends ChangeNotifier {
  final IRepository<Todo> repository = Repository(model: Todo());

  List<Todo> _items = [];

  TodoService() {
    Future.microtask(() async => _items = await repository.getAll());
  }

  UnmodifiableListView<Todo> get items => UnmodifiableListView(_items);

  int get count => _items.length;

  Future<void> add(Todo item) async {
    await repository.create(item);

    _items = await repository.getAll();

    notifyListeners();
  }

  Future<void> remove(Todo item) async {
    await repository.delete(item.id ?? 0);

    _items = await repository.getAll();

    notifyListeners();
  }

  Future<void> removeAll() async {
    await repository.deleteAll();

    _items = await repository.getAll();

    notifyListeners();
  }
}
