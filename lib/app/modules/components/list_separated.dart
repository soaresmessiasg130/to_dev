import 'package:flutter/material.dart';

class ListSeparated extends StatefulWidget {
  const ListSeparated({Key? key}) : super(key: key);

  @override
  State<ListSeparated> createState() => _ListSeparatedState();
}

class _ListSeparatedState extends State<ListSeparated> {
  final _todoList = <String>[];

  Widget _emptyList() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your Todos will appear here...',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

  ListView _buildList() {
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
      separatorBuilder: (_, i) => const Divider(),
      itemCount: _todoList.length,
      addAutomaticKeepAlives: false,
    );
  }

  Widget _buildTodos() {
    return _todoList.isEmpty ? _emptyList() : _buildList();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTodos();
  }
}
