import 'package:flutter/material.dart';
import 'package:flutter2026/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.asset('assets/images/karpat.jpg'),
        ),
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
