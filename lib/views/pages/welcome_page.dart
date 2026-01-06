import 'package:flutter/material.dart';
import 'package:flutter2026/views/widget_tree.dart';
import 'package:flutter2026/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        HeroWidget(),
        FilledButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WidgetTree();
                },
              ),
            );
          },
          child: Text('Login'),
        ),
      ],
    );
  }
}
