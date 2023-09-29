import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozo_project_2/screens/popular_recipies/popular_recipies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Good Morning\n',
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
              TextSpan(
                text: 'What would you like to\ncook for today?',
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0, right: 10),
            child: FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              child: const Text(
                '🐱',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
        toolbarHeight: 100,
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 13),
                        child:
                            Icon(IconlyLight.search, color: Theme.of(context).colorScheme.surface),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
              child: SizedBox(
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
                                meal == 'All'
                                    ? Theme.of(context).colorScheme.secondary
                                    : Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            child: Text(
                              meal,
                              style: GoogleFonts.poppins(
                                color: meal == 'All'
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 2; i++)
                      SizedBox(
                        width: 250,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(imagePaths[i]),
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
                                        color: Colors.black26,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          IconlyLight.heart,
                                          color: Theme.of(context).colorScheme.primary,
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
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Chip(
                                        backgroundColor: const Color.fromARGB(70, 111, 75, 51),
                                        label: Text(
                                          'Breakfast',
                                          style: GoogleFonts.poppins(
                                            color: Theme.of(context).colorScheme.primary,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Bread Toast Egg',
                                        style: GoogleFonts.poppins(
                                          color: Theme.of(context).colorScheme.primary,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '4 Ingredients | 15 Min',
                                        style: GoogleFonts.poppins(
                                          color: Theme.of(context).colorScheme.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: SizedBox(
                height: 134,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Chip(
                                    backgroundColor: const Color.fromARGB(125, 228, 228, 227),
                                    label: Text(
                                      'Breakfast',
                                      style: GoogleFonts.poppins(
                                        color: Theme.of(context).colorScheme.secondary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'We have 12 Recipies\nrecommendation',
                                    style: GoogleFonts.poppins(
                                      color: Theme.of(context).colorScheme.scrim,
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
                            borderRadius: BorderRadius.circular(20),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  fixedSize: const MaterialStatePropertyAll(Size(100, 50)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.secondary)),
                              child: Text(
                                'Explore',
                                style: GoogleFonts.poppins(
                                    color: Theme.of(context).colorScheme.primary),
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
          ],
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
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
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 30,
                    height: 0.1,
                  ),
                ),
              ],
            ),
            IconButton(
                icon: Icon(CupertinoIcons.compass, color: Theme.of(context).colorScheme.tertiary),
                onPressed: () {}),
            FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => const PopularRecipiesScreen()));
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

List<String> meals = [
  'All',
  'Breakfast',
  'Launch',
  'Dinner',
  'Sweetner',
];

List<String> imagePaths = [
  'assets/images/bread_toast.jpeg',
  'assets/images/toast_berries.jpeg',
];
