import 'package:flutter/material.dart';
import 'package:to_dev/app/screens/home/screen.dart';
import 'package:to_dev/app/screens/todo/screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Dev',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/todos': (context) => TodoScreen(),
      },
    );
  }
}
