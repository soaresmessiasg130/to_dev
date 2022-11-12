import 'package:flutter/material.dart';
import 'dart:ui';

import 'services/todo_service.dart';
import 'entities/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  
  testTodoService();
  testEntities();
}
