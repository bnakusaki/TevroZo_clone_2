import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozo_project_2/core/data/image_paths.dart';
import 'package:tevrozo_project_2/core/widgets/meal_list.dart';
import 'package:tevrozo_project_2/core/widgets/search_field.dart';
import 'package:tevrozo_project_2/glassmorph.dart';
import 'package:tevrozo_project_2/screens/popular_recipies/popular_recipies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    const double horizontalPadding = 15;

    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: l10n.greetings,
                        style: TextStyle(
                          color: color.surface,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: l10n.homeScreenTitleQuestion,
                        style: TextStyle(
                          color: color.secondary,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  elevation: 0,
                  child: const Text(
                    '🐱',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(horizontalPadding, 20, horizontalPadding, 20),
            child: SearchField(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: horizontalPadding, bottom: 20.0),
            child: MealList(highlight: 'All'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: horizontalPadding),
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                ),
                clipBehavior: Clip.hardEdge,
                height: 350,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imagePaths[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: ClipRRect(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: color.surface,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      IconlyLight.heart,
                                      color: color.primary,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Glassmorph(
                                    child: Text(
                                      l10n.chipMealLable,
                                      style: TextStyle(
                                        color: color.primary,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    l10n.breadToastEgg,
                                    style: TextStyle(
                                      color: color.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    l10n.breadToastEggIngredients,
                                    style: TextStyle(
                                      color: color.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, _) {
                    return const SizedBox(width: 15.0);
                  },
                  itemCount: 2,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(horizontalPadding, 20, horizontalPadding, 0),
            child: SizedBox(
              height: 120,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(30),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text(
                                    l10n.chipMealLable,
                                    style: TextStyle(
                                      color: color.scrim,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  l10n.recipeRecommendation,
                                  style: TextStyle(
                                    color: color.scrim,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(15),
                          child: MaterialButton(
                            height: 45,
                            onPressed: () {},
                            color: color.secondary,
                            child: Text(
                              l10n.explore,
                              style: TextStyle(
                                color: color.primary,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: const Icon(IconlyBold.home), onPressed: () {}),
                  Text(
                    '.',
                    style: TextStyle(
                      color: color.secondary,
                      fontSize: 30,
                      height: 0.1,
                    ),
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(CupertinoIcons.compass, color: color.tertiary), onPressed: () {}),
              FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PopularRecipiesScreen()));
                  },
                  child: const Icon(Icons.add)),
              IconButton(icon: Icon(IconlyLight.bookmark, color: color.tertiary), onPressed: () {}),
              IconButton(icon: Icon(IconlyLight.profile, color: color.tertiary), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
