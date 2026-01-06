import 'package:flutter/material.dart';
import 'package:flutter2026/data/notifiers.dart';
import 'package:flutter2026/views/pages/welcome_page.dart';
import 'package:flutter2026/views/widget_tree.dart';
import 'package:flutter2026/views/widgets/nav_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode? Brightness.dark:Brightness.light,
            ),
          ),
          home: WelcomePage()
        );
      }
    );
  }
}
