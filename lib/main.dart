import 'package:flutter/material.dart';
import 'package:food_app/pages/foodPage/food_page.dart';
import 'package:food_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const FoodPage(title: 'Flutter Demo Home Page'),
    );
  }
}
