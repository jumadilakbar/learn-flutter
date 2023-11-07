import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent[300],
          title: Text('My APP'),
          centerTitle: true, // set position title in center
        ),
        // backgroundColor: Colors.blueAccent[100],
        /* Create Container and text in Center position in page and box
        body: Center( 
          child: Container(
            width: 200,
            height: 50,
            color: Colors.cyan,
            child: Center(child: Text("Hai")),
          ),
        ),
        */
        // Create box but position not in center page but text in center on box container
        body: Container(
          width: 200,
          height: 50,
          color: Colors.amber,
          child: Center(child: Text('Center in box')),
        ),
      ),
    );
  }
}
