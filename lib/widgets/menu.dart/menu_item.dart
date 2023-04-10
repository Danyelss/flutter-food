import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  final String imageUrl;
  final String strMeal;
  final String strCategory;

  const MyWidget(
      {super.key,
      required this.imageUrl,
      required this.strMeal,
      required this.strCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 238,
        width: 156,
        color: Colors.red,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 23),
              child: Image.network(imageUrl)),
          Text(strMeal),
          Text(strCategory)
        ]));
  }
}
