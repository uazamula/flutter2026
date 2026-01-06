import 'package:flutter/material.dart';
import 'package:flutter2026/data/constants.dart';
import 'package:flutter2026/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroWidget(title: 'Title Hero',),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Basic Layout', style: myTextStyle.titleTextStyle),
                    Text(
                      'The description of this',
                      style: myTextStyle.descriptionTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
