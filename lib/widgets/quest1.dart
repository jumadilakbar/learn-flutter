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
            "APP TITLE",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: false,
          leading: FlutterLogo(),
          actions: [
            IconButton(
              onPressed: () {
                print("Hello");
              },
              icon: Icon(Icons.more_vert),
              color: Colors.black,
            )
          ],
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  250), // mengatur radius border agar bulat samakan dengan width nya
              // borderRadius: BorderRadius.circular(20), // mengatur radius border
              color: Colors.blueAccent,
            ),
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
