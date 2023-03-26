import 'package:flutter/material.dart';
import 'package:food_app/widgets/appBar/app_bar.dart';
import 'package:food_app/widgets/appBar/title.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key, required this.title});
  final String title;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  late AppBar1 appBar= const AppBar1();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: const Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
