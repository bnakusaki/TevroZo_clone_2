import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class RecipieScreen extends StatelessWidget {
  const RecipieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: FloatingActionButton(
            onPressed: () => Navigator.of(context).pop,
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            child: Icon(
              IconlyLight.arrow_left,
              color: Theme.of(context).colorScheme.scrim,
            ),
          ),
        ),
        actions: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            child: Icon(
              IconlyLight.bookmark,
              color: Theme.of(context).colorScheme.scrim,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).colorScheme.primary,
              elevation: 0,
              child: Icon(
                CupertinoIcons.share,
                color: Theme.of(context).colorScheme.scrim,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/toast_berries.jpeg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0.2),
                          fixedSize: MaterialStatePropertyAll(Size(170, 45))),
                      child: Text(
                        '#1 Easiest Breakfast',
                        style: GoogleFonts.poppins(color: Theme.of(context).colorScheme.scrim),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        IconlyBold.star,
                        color: Theme.of(context).colorScheme.background,
                        size: 25,
                      ),
                      Text(
                        ' 4.5',
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                'Bread Banana Toast Vegan',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Bread Banana Toast Vegan starts with slices of your favourite vegan bread. It could be whole ',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    TextSpan(
                      text: 'ReadMore...',
                      style: GoogleFonts.poppins(
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
                        children: [
                          Text(
                            'Organized by',
                            style:
                                GoogleFonts.poppins(color: Theme.of(context).colorScheme.surface),
                          ),
                          Text(
                            '@Simon Lee',
                            style: GoogleFonts.poppins(),
                          )
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.hardEdge,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: const MaterialStatePropertyAll(Size(130, 30)),
                          elevation: const MaterialStatePropertyAll(0.2),
                          backgroundColor:
                              MaterialStatePropertyAll(Theme.of(context).colorScheme.background)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.check_mark,
                            size: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          Text(
                            '  Following',
                            style:
                                GoogleFonts.poppins(color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Ingredients',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              const Ingredient(),
              const SizedBox(height: 15),
              const Ingredient(),
            ],
          ),
        ]),
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
            'Start Cooking',
            style: GoogleFonts.poppins(
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

class Ingredient extends StatelessWidget {
  const Ingredient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/butter.jpeg')),
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Text(
              '40g butter, cut into peices',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                // color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Text(
              '40g',
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.surface,
              ),
            )
          ],
        ),
      ),
    );
  }
}
