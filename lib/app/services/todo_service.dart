import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:to_dev/app/entities/todo.dart';
import 'package:to_dev/app/interfaces/irepository.dart';

class TodoService extends ChangeNotifier {
  final IRepository _repository;

  final List<Todo> _items = [];

  TodoService(IRepository repository) : _repository = repository;

  UnmodifiableListView<Todo> get items => UnmodifiableListView(_items);

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
