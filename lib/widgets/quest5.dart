import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Membuat Lingkarang background gambar dan bordernya seperti profil IG
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 256,
                      height: 256,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(color: Colors.white, width: 5),
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://picsum.photos/200/300/"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text("Hello World")
            ],
          ),
        ),
      ),
    );
  }
}
