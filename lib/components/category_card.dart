import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89,
      height: 106,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              color: Colors.black,
              width: 80,
              height: 50,
              margin: const EdgeInsets.only(top: 11, left: 4, right: 5),
              child: Image.asset('assets/images/profile.png')),
          Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Beef',
                  style: TextStyle(fontSize: 12),
                ),
              )),
        ],
      ),
    );
  }
}
