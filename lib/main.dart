import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Learn Visible and invisible widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("myAPP"),
            centerTitle: true,
          ),
          // Call function for set widget vertical using Column
          // Call function for set widget horizontal using Row
          // Call function for set widget Menumpuk menjadi satu sumbu Z using Stack
          // SingleChildScrollView digunakan untuk mengatasi batasan batas bawah dan agar kompnen dapat terbaca dengan melakukan scrool komponen untuk widget Column
          body: SingleChildScrollView(
            // untuk scrol horizontal ketika menggunakan Row
            scrollDirection: Axis.horizontal,
            // child: Column(
            child: Row(
              //body: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Center(child: Text("Kuning")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  // Set Color in text
                  child: Center(
                      child: Text(
                    "Hitam",
                    style: TextStyle(color: Colors.amber),
                  )),
                ),
              ],
            ),
          )),
    );
  }
}
// Learn Basic Widget 
// class MyApp extends StatelessWidget {
//   // const MyApp({super.key});
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // Widget Dasar
//         appBar: AppBar(
//           backgroundColor: Colors.cyanAccent[300],
//           title: Text('My APP'),
//           centerTitle: true, // set position title in center
//         ),
//         // backgroundColor: Colors.blueAccent[100],
//         /* Create Container and text in Center position in page and box
//         body: Center( 
//           child: Container(
//             width: 200,
//             height: 50,
//             color: Colors.cyan,
//             child: Center(child: Text("Hai")),
//           ),
//         ),
//         */
//         // Create box but position not in center page but text in center on box container
//         /*
//         body: Container(
//           width: 200,
//           height: 50,
//           color: Colors.amber,
//           child: Center(child: Text('Center in box')),
//         ),
//         */
//         // Call Logo Flutter
//         /*body: Center(
//             child: FlutterLogo(
//           size: 200,
//         )),
//         */
//         body: Center(
//             // call button
//             /*
//           child: ElevatedButton(
//             onPressed: () {
//               // empty function if we not add funtion like print all other funtion
//               // Call Function
//               print("Gak Bahaya ta");
//             },
//             child: Text("Klik Me"),
//           ),
          
//           // Call Icon in center position and give color red
//           child: Icon(
//             Icons.home,
//             size: 200,
//             color: Colors.redAccent[100],
//           ),
//           */
//             // Image Provider
//             // 1. Asset Image -> gambar yang ada pada folder project
//             // 2. Network Image -> Get Gambar from url
//             // jarang digunakan
//             // 3. File Image
//             // 4. Memory Image
//             child: Image(
//           // image: AssetImage("assets/sistem.jpg")), //Call Image local
//           image: NetworkImage(
//               "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcRoT6NNDUONDQmlthWrqIi_frTjsjQT4UZtsJsuxqxLiaFGNl5s3_pBIVxS6-VsFUP_"), // Get image from internet
//         )),
//         // Widget Dasar
//       ),
//     );
//   }
// }
