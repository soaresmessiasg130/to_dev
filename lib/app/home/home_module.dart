import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_dev/app/home/home_widget.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => HomeWidget())
  ];
}
