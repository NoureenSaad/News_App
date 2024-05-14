import 'package:flutter/material.dart';
import 'core/DI/di.dart';
import 'my_app.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}