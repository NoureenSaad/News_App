import 'package:flutter/material.dart';
import 'package:news_app/shared/style/app_theme.dart';
import 'package:news_app/ui/categories/categories_widget.dart';
import 'package:news_app/ui/home/home_screen.dart';
import 'package:news_app/ui/settings/settings_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Application',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route:(_)=>HomeScreen(),
      },
    );
  }
}
