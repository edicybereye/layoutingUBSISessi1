import 'package:flutter/material.dart';
import 'package:usbi_testing/rowItem.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Unversitas BSI"),
        leading: Icon(Icons.home),
        actions: [
          IconButton(
            onPressed: () {
              print("Diklik Iconnya");
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 150,
            child: Stack(
              children: [
                Image.network(
                  "https://img.freepik.com/free-photo/cool-geometric-triangular-figure-neon-laser-light-great-backgrounds-wallpapers_181624-9331.jpg?size=626&ext=jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Text(
                    "Universitas BSI",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Tegal & Yogyakarta",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Universitas BSI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Nama : Edi Kurniawan",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Semester 7",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Jl. Seruni No.76, Kalijembangan, Pakembaran, Kec. Slawi, Tegal, Jawa Tengah 52415",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(width: 1, color: Colors.grey),
              bottom: BorderSide(width: 1, color: Colors.grey),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RowItem(
                  icon: Icons.home,
                  title: "Home",
                ),
                RowItem(
                  icon: Icons.headset,
                  title: "Music",
                ),
                RowItem(
                  icon: Icons.settings,
                  title: "Settings",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
