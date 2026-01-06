import 'package:flutter/material.dart';
import 'package:flutter2026/views/widgets/nav_bar_widget.dart';
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        leading: Icon(Icons.offline_bolt),
        actions: [Text('yes'), SizedBox(width: 10), Text('no')],
      ),
      body: SizedBox(
        height: 500,

        child: Stack(
          children: [
            // Image.asset(
            //   'assets/images/karpat.jpg',
            //   height: .infinity,
            //   fit: .cover,
            // ),
            Center(
              child: Text(
                'Carpathy',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.account_box_rounded, color: Colors.black),
              trailing: Icon(Icons.add_a_photo),
              title: Wrap(
                children: [
                  Text(
                    'It\'s ListTile hmmcmcgjmgm,cgjmcgjm,cgjm,cgjmhfcm',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Text(
                    'It\'s ListTile hmmcmcgjmgm,cgjmcgjm,cgjm,cgjmhfcm',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              onTap: () {
                print('Hi');
              },
            ),
          ],
        ),
      ),
      //Image.network(
      //  'https://etnotur.ua/wp-content/uploads/2017/04/karpati_putivoditel.jpg',
      //  height: .infinity,
      //  fit: .cover,
      //),
      // Center(
      //   child: Container(
      //     //color: Colors.red,
      //     margin: EdgeInsets.all(25.0),
      //     height: 200,
      //     width: .infinity,
      //     decoration: BoxDecoration(
      //       color: Colors.redAccent,
      //       borderRadius: BorderRadius.circular(30),
      //     ),
      //
      //     child: Column(
      //       mainAxisAlignment: .center,
      //       //mainAxisSize: .min,
      //       crossAxisAlignment: .end,
      //       children: [
      //         const Text(
      //           'You have pushed the button this many times:',
      //           textAlign: .center,
      //         ),
      //         Text(
      //           '$_counter',
      //           style: Theme.of(context).textTheme.headlineMedium,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add_alert_outlined),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
