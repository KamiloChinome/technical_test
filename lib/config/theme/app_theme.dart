import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_test/config/constants/colors.dart';

class AppTheme {
  static lightTheme() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: colorBackground,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      );
}
