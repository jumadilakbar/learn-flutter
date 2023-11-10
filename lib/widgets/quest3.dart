import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//   membuaat tulisan di dalam container di mulai dari kiri bawah dan membuat condisi warna yang berbeda berdsarkan ganjil genap
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 150,
                    color: Colors.lightBlueAccent,
                    child: Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 150,
                    color: Colors.greenAccent,
                    child: Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
