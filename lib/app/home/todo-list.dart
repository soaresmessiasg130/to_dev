import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final _todoList = <String>['Olá', 'Mundo'];

  Widget _emptyList() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your to-do will appear here...',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

  ListView _buildTodoItems() {
    return ListView.separated(
      itemBuilder: (_, i) {
        return ListTile(
          title: Text(
            _todoList[i],
            style: Theme.of(context).textTheme.bodyText2,
          ),
          subtitle: Text(
            _todoList[i],
            style: Theme.of(context).textTheme.caption,
          ),
        );
      },
      separatorBuilder: (_, i) => Divider(),
      itemCount: _todoList.length,
      addAutomaticKeepAlives: false,
    );
  }

  Widget _isAnyInList() {
    _todoList.addAll(['Messias', 'Soares', 'Paiva', 'Pinho']);

    return _buildTodoItems();
  }

  Widget _buildTodoList() {
    return _todoList.isEmpty ? _emptyList() : _isAnyInList();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTodoList();
  }
}
