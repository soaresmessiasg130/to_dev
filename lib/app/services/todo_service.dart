import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/interfaces/irepository.dart';
import 'package:to_dev/app/repositories/repository.dart';

class TodoService extends ChangeNotifier {
  final IRepository<Todo> _repository =
      Repository(model: Todo(id: '', title: ''));

  List<Todo> _items = [];

  UnmodifiableListView<Todo> get items => UnmodifiableListView(_items);

  int get count => _items.length;

  TodoService() {
    Future.microtask(() async {
      _items = await _repository.getAll();

      notifyListeners();
    });
  }

  Future<void> add(Todo item) async {
    await _repository.create(item);

    _items = await _repository.getAll();

    notifyListeners();
  }

  Future<void> remove(Todo item) async {
    await _repository.delete(item.id);

    _items = await _repository.getAll();

    notifyListeners();
  }

  Future<void> removeAll() async {
    await _repository.deleteAll();

    _items = await _repository.getAll();

    notifyListeners();
  }
}
