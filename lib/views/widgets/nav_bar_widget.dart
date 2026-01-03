import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key, required this.onChangedBNItem});
  final Function(int) onChangedBNItem;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int bnIndex=0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      selectedIndex: bnIndex,
      onDestinationSelected: (int value){
        setState(() {
          bnIndex=value;
        });
        widget.onChangedBNItem(bnIndex);
      },
    );
  }
}
