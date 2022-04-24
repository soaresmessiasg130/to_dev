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

  set items(List<Todo> newItems) => _items = newItems;

  int get count => _items.length;

  void add(Todo item) {
    _items.add(item);

    notifyListeners();
  }

  void remove(Todo item) {
    _items.removeWhere((element) => element.id == item.id);

    notifyListeners();
  }

  void removeAll() {
    _items.clear();

    notifyListeners();
  }
}
