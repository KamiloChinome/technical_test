import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_test/config/router/app_router.dart';
import 'package:technical_test/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        title: 'Technical Test',
        routerConfig: appRouter,
        theme: AppTheme.lightTheme(),
      ),
    );
  }
}
