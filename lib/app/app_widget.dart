import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/dashboard');

    return MaterialApp.router(
      title: 'To Dev',
      theme: ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      restorationScopeId: 'app',
    );
  }
}
