import 'package:flutter/material.dart';
import 'package:project_uas/pages/splash_page.dart';
import 'package:project_uas/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: SplashPage(),
      );
  }
}