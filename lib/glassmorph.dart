import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorph extends StatelessWidget {
  const Glassmorph({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 80,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withOpacity(0.23),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.55),
                  Colors.white.withOpacity(0.35),
                ],
              ),
            ),
          ),
          Center(child: child),
        ],
      ),
    );
  }
}
