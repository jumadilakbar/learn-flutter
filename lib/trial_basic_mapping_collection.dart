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
              "my APP",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.amber,
          ),
          body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1 / 2),
            children: data
                .map(
                  (e) => ThemeTextColor(text: e["text"], bycolor: e["bycolor"]),
                )
                .toList(),
            // children: allitems,
          )),
    );
  }
}
