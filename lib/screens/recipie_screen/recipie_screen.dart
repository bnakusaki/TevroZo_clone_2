import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozo_project_2/core/widgets/ingredients.dart';

class RecipieScreen extends StatelessWidget {
  const RecipieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    const double horizontalPadding = 15;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () => Navigator.of(context).pop,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        elevation: 0,
                        child: Icon(
                          IconlyLight.arrow_left,
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            elevation: 0,
                            child: Icon(
                              IconlyLight.bookmark,
                              color: Theme.of(context).colorScheme.scrim,
                            ),
                          ),
                          const SizedBox(width: 10),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            elevation: 0,
                            child: Icon(
                              CupertinoIcons.share,
                              color: Theme.of(context).colorScheme.scrim,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/toast_berries.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: color.primary,
                          child: Center(
                            child: Text(
                              l10n.hype,
                              style: TextStyle(color: Theme.of(context).colorScheme.scrim),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            IconlyBold.star,
                            color: Theme.of(context).colorScheme.background,
                            size: 20,
                          ),
                          Text(
                            ' 4.5',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    l10n.breadToastEgg,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: l10n.miniTutorial,
                          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        TextSpan(
                          text: l10n.readMore,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Badge(
                            backgroundColor: Theme.of(context).colorScheme.background,
                            label: Icon(
                              CupertinoIcons.check_mark,
                              size: 15,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            smallSize: 5,
                            padding: EdgeInsets.zero,
                            alignment: Alignment.bottomRight,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/female.jpg'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.organizedBy,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.surface, fontSize: 12),
                              ),
                              Text(
                                l10n.organizer,
                                style: const TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        clipBehavior: Clip.hardEdge,
                        child: MaterialButton(
                          color: Theme.of(context).colorScheme.background,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.check_mark,
                                size: 15,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                l10n.fanStatus,
                                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    l10n.ingredients,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  for (int i = 0; i < 2; i++) const Ingredient(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            fixedSize: MaterialStatePropertyAll(
              Size(MediaQuery.of(context).size.width - 30, 70),
            ),
            backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.secondary),
          ),
          child: Text(
            l10n.startCooking,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
