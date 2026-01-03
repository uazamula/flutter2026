import 'package:flutter/material.dart';
import 'package:flutter2026/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.teal,
        appBar: AppBar(title: Text('Flutter Mapp')),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                //  DrawerHeader(child: Text('Drawer')),
                ListTile(title: Text('data1')),
                ListTile(title: Text('data2')),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: .min,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            SizedBox(height: 10),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (value) {},
          selectedIndex: 1,
        ),
        bottomSheet: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Підтвердити'),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (_, i) => ListTile(title: Text('Item $i')),
        ),
      ),
    );
  }
}
