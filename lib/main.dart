import 'package:flutter/material.dart';
import 'package:technical_test/config/router/app_router.dart';
import 'package:technical_test/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Technical Test',
      routerConfig: appRouter,
      theme: AppTheme.lightTheme(),
    );
  }
}
