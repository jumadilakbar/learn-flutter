import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  Latihan membuat listview dengan widget builder dan menampilkan text pada bawah kiri container
//  Beserta menambah background pada container dengan boxfit.cover
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
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors
                        .grey, // agar seblum di load gambarnya backgroud tetap tampil warna abu2
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://picsum.photos/id/${778 + index}/200/300"),
                    ),
                  ),
                  child: Text(
                    "Hello ${index + 1}",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
