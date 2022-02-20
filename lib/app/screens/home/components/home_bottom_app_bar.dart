import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatelessWidget {
  final VoidCallback navigate;

  const HomeBottomAppBar(this.navigate);

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
            TextButton(
              onPressed: () {},
              child: IconButton(
                onPressed: navigate,
                color: Colors.white,
                padding: EdgeInsets.all(16),
                icon: Icon(
                  Icons.home,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: IconButton(
                onPressed: navigate,
                color: Colors.white,
                padding: EdgeInsets.all(16),
                icon: Icon(
                  Icons.list,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: IconButton(
                onPressed: navigate,
                color: Colors.white,
                padding: EdgeInsets.all(16),
                icon: Icon(
                  Icons.person,
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   onTap: (index) {
      //     setState(() {
      //       _navIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list),
      //       label: 'Todos',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
