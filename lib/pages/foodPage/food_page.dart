import 'package:flutter/material.dart';
import 'package:food_app/components/category_display/category_display.dart';
import 'package:food_app/components/food_list_display/food_list_display.dart';
import 'package:food_app/widgets/appBar/app_bar.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key, required this.title});
  final String title;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  late AppBar1 appBar = const AppBar1();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: const [
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
              child: CategoryComponent()),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodList(),
            ),
          ),
        ],
      ),
    );
  }
}
