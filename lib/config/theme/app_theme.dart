import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_test/config/constants/colors.dart';

class AppTheme {
  static lightTheme() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: colorBackground,
        colorScheme: const ColorScheme.light(
          background: colorBackground,
          onSurfaceVariant: colorIcon,
          primary: colorPrimary,
          primaryContainer: colorPrimaryContainer,
          secondary: colorSecondary,
          secondaryContainer: colorSecondaryContainer,
          tertiary: colorTertiary,
          tertiaryContainer: colorTertiaryContainer,
          surface: colorSurface,
          surfaceVariant: colorSurfaceVariant,
          onBackground: colorIcon,
          shadow: colorShadow,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: colorBackground,
          surfaceTintColor: colorBackground,
          titleTextStyle:
              TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', color: Colors.black),
        ),
        iconTheme: IconThemeData(color: colorIcon, size: 8.w),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconSize: MaterialStatePropertyAll(7.5.w),
            iconColor: const MaterialStatePropertyAll(colorIcon),
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      );
}
