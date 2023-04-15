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
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 50,
            margin: const EdgeInsets.only(top: 11, left: 4, right: 5),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                image: const DecorationImage(
                    scale: 1,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.themealdb.com/images/category/lamb.png')),
                borderRadius: const BorderRadius.all(Radius.circular(16.0))),
            // child: Image.asset(
            //     'https://www.themealdb.com/images/category/lamb.png')
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Center(
                  child: Text('Beef',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary)))),
        ],
      ),
    );
  }
}
