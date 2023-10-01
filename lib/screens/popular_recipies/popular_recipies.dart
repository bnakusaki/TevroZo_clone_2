import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozo_project_2/core/data/image_paths.dart';
import 'package:tevrozo_project_2/core/data/meals.dart';
import 'package:tevrozo_project_2/core/widgets/glassmorph.dart';
import 'package:tevrozo_project_2/core/widgets/meal_list.dart';
import 'package:tevrozo_project_2/core/widgets/search_field.dart';
import 'package:tevrozo_project_2/screens/recipie_screen/recipie_screen.dart';

class PopularRecipiesScreen extends StatelessWidget {
  const PopularRecipiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    const double horizontalPadding = 15;

    meals.remove('All');
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(horizontalPadding, 20.0, horizontalPadding, 20),
              child: SearchField(
                suffixIcon: Icon(
                  IconlyLight.filter,
                  color: color.scrim,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: horizontalPadding),
              child: MealList(highlight: l10n.chipMealLable),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(horizontalPadding, 20, horizontalPadding, 20),
              child: Container(
                height: 160,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/chef.jpeg'), fit: BoxFit.cover),
                  color: color.secondary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(horizontalPadding, 0, horizontalPadding, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.popularRecipies,
                    style: TextStyle(
                      color: color.secondary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    l10n.seeAll,
                    style: TextStyle(
                      color: color.background,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
              child: Container(
                  height: 360,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, _) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 300,
                                height: 311,
                                decoration: BoxDecoration(
                                  color: color.primary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(imagePaths[0]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Glassmorph(
                                                  child: Text(
                                                    l10n.chipMealLable,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                          l10n.breadToastEgg,
                                          style: TextStyle(
                                            color: color.secondary,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Chip(
                                            backgroundColor: color.background,
                                            label: Row(
                                              children: [
                                                Icon(
                                                  IconlyBold.play,
                                                  color: color.primary,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  l10n.start,
                                                  style: TextStyle(
                                                    color: Theme.of(context).colorScheme.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            l10n.cookTime,
                                            style: TextStyle(
                                              color: color.surface,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30, left: 15),
                                  child: Text(
                                    l10n.seeAll,
                                    style: TextStyle(
                                      color: color.background,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, _) {
                        return const SizedBox(width: 10);
                      },
                      itemCount: 2)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.transparent,
        color: color.primary,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(IconlyLight.home, color: color.tertiary), onPressed: () {}),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: const Icon(
                      CupertinoIcons.compass_fill,
                      size: 20,
                    ),
                    onPressed: () {}),
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
            FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const RecipieScreen()));
                },
                child: const Icon(Icons.add)),
            IconButton(icon: Icon(IconlyLight.bookmark, color: color.tertiary), onPressed: () {}),
            IconButton(icon: Icon(IconlyLight.profile, color: color.tertiary), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
