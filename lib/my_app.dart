import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/presentation/home/home_screen.dart';
import 'config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp(
          title: 'News Application',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: HomeScreen.route,
          routes: {
            HomeScreen.route:(_)=>HomeScreen(),
          },
        );
      },
    );
  }
}