import 'package:flutter/material.dart';
import 'package:flutter2026/views/pages/home_page.dart';
import 'package:flutter2026/views/pages/profile_page.dart';
import 'package:flutter2026/views/widgets/nav_bar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int indexPage = 0;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('App'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {setState(() {
            isDark=!isDark;

          });},
          icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
        ),
      ),
      body: pages[indexPage],

      bottomNavigationBar: NavBarWidget(
        onChangedBNItem: (int index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
    );
  }
}
