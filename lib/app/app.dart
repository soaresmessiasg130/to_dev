import 'package:flutter/material.dart';

import 'home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Dev',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
