import 'package:flutter/material.dart';
import 'package:tevrozo_project_2/core/data/meals.dart';

class MealList extends StatelessWidget {
  const MealList({super.key, required this.highlight});

  final String highlight;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Container(
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
      ),
      clipBehavior: Clip.hardEdge,
      height: 45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: MaterialButton(
              onPressed: () {},
              color: meals[index] == highlight ? color.secondary : color.primary,
              child: Text(
                meals[index],
                style: TextStyle(
                  color: meals[index] == highlight ? color.primary : color.scrim,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(width: 10.0);
        },
        itemCount: meals.length,
      ),
    );
  }
}
