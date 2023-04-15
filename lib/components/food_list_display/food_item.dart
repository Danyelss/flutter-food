import 'package:flutter/material.dart';

class FoodMenuItem extends StatelessWidget {
  final String imageUrl;
  final String strMeal;
  final String strCategory;

  const FoodMenuItem(
      {super.key,
      required this.imageUrl,
      required this.strMeal,
      required this.strCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 238,
        width: 167.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Theme.of(context).colorScheme.onPrimary),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(7.52, 9, 9.25, 8),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150.34,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              scale: 1,
                              fit: BoxFit.cover,
                              image: NetworkImage(imageUrl)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0))))),
              Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 2),
                  child: Text(
                    strMeal,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 16, top: 2),
                  child: Text(
                    strCategory,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ))
            ]));
  }
}
