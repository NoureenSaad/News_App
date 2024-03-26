import 'package:flutter/material.dart';
import 'package:news_app/shared/style/app_colors.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightPrimaryColor,
        primary: AppColors.lightPrimaryColor
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: 80,
      centerTitle: true,
      backgroundColor: AppColors.lightPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
        )
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 22,
      ),
      iconTheme: IconThemeData(
        size: 25,
        color: Colors.white
      )
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: AppColors.categoryListColor
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: Colors.white
      )
    )

  );
}