import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/utils/app_colors.dart';

class AppTheme{
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.primaryText,
      )
    )

  );
}