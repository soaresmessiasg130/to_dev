import 'package:flutter/material.dart';

class BottomBarComponent extends StatelessWidget {
  final Function navigate;

  const BottomBarComponent(this.navigate);

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => navigate('/dashboard'),
              color: Colors.white,
              padding: EdgeInsets.all(16),
              icon: Icon(
                Icons.dashboard,
              ),
            ),
            IconButton(
              onPressed: () => navigate('/todo'),
              color: Colors.white,
              padding: EdgeInsets.all(16),
              icon: Icon(
                Icons.format_list_bulleted,
              ),
            ),
            IconButton(
              onPressed: () => navigate('/user'),
              color: Colors.white,
              padding: EdgeInsets.all(16),
              icon: Icon(
                Icons.person,
              ),
            )
          ],
        ),
      ),
    );
  }
}
