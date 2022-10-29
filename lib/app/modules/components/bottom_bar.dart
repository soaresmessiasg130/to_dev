import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);

  final List<Widget> buttons = [
    IconButton(
      tooltip: 'Dashboard',
      onPressed: () => Modular.to.navigate('dashboard'),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      icon: const Icon(
        Icons.dashboard,
      ),
    ),
    IconButton(
      tooltip: 'Todos',
      onPressed: () => Modular.to.navigate('todos'),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      icon: const Icon(
        Icons.format_list_bulleted,
      ),
    ),
    const SizedBox(
      width: 24,
    ),
    IconButton(
      tooltip: 'Search',
      onPressed: () => Modular.to.navigate('search'),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      icon: const Icon(
        Icons.search,
      ),
    ),
    IconButton(
      tooltip: 'Profile',
      onPressed: () => Modular.to.navigate('profile'),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      icon: const Icon(
        Icons.person,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).primaryColor,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: buttons,
        ),
      ),
    );
  }
}
