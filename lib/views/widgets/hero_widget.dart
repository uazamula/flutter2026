import 'package:flutter/material.dart';
import 'package:flutter2026/data/constants.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(
              'assets/images/karpat.jpg',
              color: Colors.yellow,
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        FittedBox(child: Text(title, style: myTextStyle.hugeTextStyle,)),
      ],
    );
  }
}
