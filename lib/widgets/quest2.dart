import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//   soal 18 di real case -> membuat list fiew dengan kondisi dan menggunakan widget builder
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
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 12, // tanpa ini maka list data tidak terbatas
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        color: Colors.amber,
                      ),
                      Text("Hello ${index + 1}")
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        color: Colors.blueAccent,
                      ),
                      Text("Hello ${index + 1}")
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
