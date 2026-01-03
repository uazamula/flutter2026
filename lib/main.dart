import 'package:flutter/material.dart';
import 'package:flutter2026/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDark?Brightness.dark:Brightness.light,
        ),
      ),
      home: WidgetTree(onBrightnessMode: (value){isDark=value; setState(() {

      });},),
    );
  }
}
