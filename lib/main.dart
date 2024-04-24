import 'package:flutter/material.dart';
import 'package:ui/helpers/theme/dark_theme.dart';
import 'package:ui/helpers/theme/light_theme.dart';
import 'package:ui/views/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const DashboardView(),
    );
  }
}
