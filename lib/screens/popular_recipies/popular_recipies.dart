import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozo_project_2/screens/home_screen/home_screen.dart';
import 'package:tevrozo_project_2/screens/recipie_screen/recipie_screen.dart';

class PopularRecipiesScreen extends StatelessWidget {
  const PopularRecipiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    meals.remove('All');
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20.0, 15, 20),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 13),
                          child: Icon(IconlyLight.search,
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        Text(
                          'Search any recipes...',
                          style: GoogleFonts.poppins(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    suffixIcon: Icon(
                      IconlyLight.filter,
                      color: Theme.of(context).colorScheme.scrim,
                    )),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (String meal in meals)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        clipBehavior: Clip.hardEdge,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            fixedSize: const MaterialStatePropertyAll(Size(95, 45)),
                            backgroundColor: MaterialStatePropertyAll(
                              meal == 'Breakfast'
                                  ? Theme.of(context).colorScheme.secondary
                                  : Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          child: Text(
                            meal,
                            style: GoogleFonts.poppins(
                              color: meal == 'Breakfast'
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.scrim,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width - 30,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/chef.jpeg'), fit: BoxFit.cover),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Recipes',
                              style: GoogleFonts.poppins(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'See All',
                              style: GoogleFonts.poppins(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                        child: SizedBox(
                          height: 360,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 0; i < 2; i++)
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 311,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary,
                                          borderRadius: BorderRadius.circular(30),
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
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            Chip(
                                                              backgroundColor: const Color.fromARGB(
                                                                  255, 155, 156, 159),
                                                              label: Text(
                                                                'Breakfast',
                                                                style: GoogleFonts.poppins(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .primary,
                                                                  fontSize: 10,
                                                                  fontWeight: FontWeight.w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                child: Text(
                                                  'Bread Toast Egg',
                                                  style: GoogleFonts.poppins(
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Chip(
                                                    backgroundColor:
                                                        Theme.of(context).colorScheme.background,
                                                    label: Row(
                                                      children: [
                                                        Icon(
                                                          IconlyBold.play,
                                                          color:
                                                              Theme.of(context).colorScheme.primary,
                                                        ),
                                                        const SizedBox(width: 5),
                                                        Text(
                                                          'Start',
                                                          style: GoogleFonts.poppins(
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .primary,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    '15 Min',
                                                    style: GoogleFonts.poppins(
                                                      color: Theme.of(context).colorScheme.surface,
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
                                            'See All',
                                            style: GoogleFonts.poppins(
                                              color: Theme.of(context).colorScheme.background,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.transparent,
        color: Theme.of(context).colorScheme.primary,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(IconlyLight.home, color: Theme.of(context).colorScheme.tertiary),
                onPressed: () {}),
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
                    color: Theme.of(context).colorScheme.secondary,
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
            IconButton(
                icon: Icon(IconlyLight.bookmark, color: Theme.of(context).colorScheme.tertiary),
                onPressed: () {}),
            IconButton(
                icon: Icon(IconlyLight.profile, color: Theme.of(context).colorScheme.tertiary),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
