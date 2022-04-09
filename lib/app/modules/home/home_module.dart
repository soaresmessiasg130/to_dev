import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_dev/app/modules/home/dashboard/dashboard_widget.dart';
import 'package:to_dev/app/modules/home/profile/profile_widget.dart';
import 'package:to_dev/app/modules/home/search/search_widget.dart';
import 'package:to_dev/app/modules/home/todos/todos_widget.dart';
import './home_widget.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => HomeWidget(),
      children: [
        ChildRoute('/dashboard', child: (context, args) => DashboardWidget()),
        ChildRoute('/todos', child: (context, args) => TodosWidget()),
        ChildRoute('/search', child: (context, args) => SearchWidget()),
        ChildRoute('/profile', child: (context, args) => ProfileWidget()),
      ],
    ),
  ];
}
