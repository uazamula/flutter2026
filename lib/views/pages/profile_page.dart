import 'package:flutter/material.dart';
import 'package:flutter2026/data/notifiers.dart';
import 'package:flutter2026/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('LogOut'),
      onTap: () {
        selectedPageNotifier.value=0;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WelcomePage();
            },
          ),
        );
      },
    );
  }
}
