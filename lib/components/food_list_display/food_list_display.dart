import 'package:flutter/material.dart';

import 'food_item.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width ~/ 179,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.7),
        itemCount: 100,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        addAutomaticKeepAlives: true, // only keep visible items in memory
        itemBuilder: (BuildContext context, int index) {
          return const FoodMenuItem(
              imageUrl:
                  "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg",
              strMeal: "Jerk chicken with rice & peas",
              strCategory: "Chicken");
        });
  }
}
