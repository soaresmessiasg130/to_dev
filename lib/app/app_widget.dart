import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:to_dev/app/services/todo_service.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/dashboard');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TodoService(),
        )
      ],
      child: MaterialApp.router(
        title: 'To Dev',
        theme: ThemeData(
          primaryColor: Colors.teal,
          primarySwatch: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        restorationScopeId: 'app',
      ),
    );
  }
}
