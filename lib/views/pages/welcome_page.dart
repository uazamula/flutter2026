import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter2026/views/pages/login_page.dart';
import 'package:flutter2026/views/widget_tree.dart';
import 'package:flutter2026/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Lottie.asset('assets/lotties/home_3d.json'),
              HeroWidget(title: 'Hero'),
              FittedBox(
                child: Text(
                  'Flutter App',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 50,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Register');
                      },
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Get Started'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Login');
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
