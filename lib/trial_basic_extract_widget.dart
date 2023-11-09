import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            children: [
              ThemeTextColor(
                text: "Yellow",
                bycolor: Colors.yellow,
              ),
              ThemeTextColor(
                text: "Purple",
                bycolor: Colors.deepPurpleAccent,
              ),
              Container(
                color: Colors.blueAccent,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.deepOrangeAccent,
              ),
            ],
          )),
    );
  }
}

// Extraxt Widget  -> Reusable widget
class ThemeTextColor extends StatelessWidget {
  const ThemeTextColor({
    Key? key,
    required this.text,
    required this.bycolor,
  }) : super(key: key);

  final String text;
  final Color bycolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: bycolor,
      child: Center(child: Text(text)),
    );
  }
}
