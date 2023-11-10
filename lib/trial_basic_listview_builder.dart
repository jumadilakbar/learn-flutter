import 'dart:math';

import 'package:flutter/material.dart';

import 'widgets/ThemeTextColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  //Set Widget generated
  List<ThemeTextColor> allitems = List.generate(
    10,
    (index) => ThemeTextColor(
      text: "Kotak - ${index + 1}",
      bycolor: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    ),
  );

  // Mappring Collection
  List<Map<String, dynamic>> data = List.generate(
    10,
    (index) => {
      "text": "Kotak - ${index + 1}",
      "bycolor": Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Widget Builder",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 12, // tanpa ini maka list data tidak terbatas
          itemBuilder: (context, index) => ThemeTextColor(
            text: "Kotak - ${index + 1}",
            bycolor: Color.fromARGB(
              255,
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
            ),
          ),
        ),
      ),
    );
  }
}
