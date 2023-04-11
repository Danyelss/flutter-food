import 'package:flutter/material.dart';
import 'package:food_app/widgets/appBar/app_bar.dart';
import 'package:food_app/widgets/appBar/title.dart';
import 'package:food_app/pages/foodPage/data.dart';
import 'package:food_app/widgets/menu.dart/menu_item.dart';

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
      body: Center(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: 100,
              addAutomaticKeepAlives: true, // only keep visible items in memory
              itemBuilder: (BuildContext context, int index) {
                return const MenuItem(
                    imageUrl:
                        "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg",
                    strMeal: "Jerk chicken with rice & peas",
                    strCategory: "Chicken");
              })),
    );
  }
}
