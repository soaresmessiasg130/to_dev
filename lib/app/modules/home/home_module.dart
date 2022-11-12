import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_dev/app/modules/home/dashboard/dashboard_widget.dart';
import 'package:to_dev/app/modules/home/home_widget.dart';
import 'package:to_dev/app/modules/home/profile/profile_widget.dart';
import 'package:to_dev/app/modules/home/search/search_widget.dart';
import 'package:to_dev/app/modules/home/todos/todos_widget.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const HomeWidget(),
      children: [
        ChildRoute('/dashboard', child: (context, args) => const DashboardWidget()),
        ChildRoute('/todos', child: (context, args) => const TodosWidget()),
        ChildRoute('/search', child: (context, args) => const SearchWidget()),
        ChildRoute('/profile', child: (context, args) => const ProfileWidget()),
      ],
    ),
  ];
}
