import 'package:flutter/material.dart';
import 'header.dart';
import 'story.dart';
import 'footer.dart';
import 'post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(),
          SingleChildScrollView(
            child: Story(),
            scrollDirection: Axis.horizontal,
          ),
          Post(
            "king_kholi",
            'asset/pic1.jpg',
            userDp: AssetImage('asset/pic4.jpg'),
            userLocation: 'tere dil mai',
          ),
          Post(
            "affable.abhishek",
            'asset/pic2.jpg',
            userDp: AssetImage('asset/pic6.jpg'),
            userLocation: 'kya karoge jaankar',
          ),
          Post(
            "r.a.j.a.",
            'asset/pic3.jpg',
            userDp: AssetImage('asset/pic2.jpg'),
            userLocation: 'at my palace',
          ),
          Post(
            "kamlaesh_yadav",
            'asset/pic4.jpg',
            userDp: AssetImage('asset/pic4.jpg'),
          ),
          Post(
            "yaaro_ka_yaar",
            'asset/pic5.jpg',
            userDp: AssetImage('asset/pic1.jpg'),
          ),
          Post(
            "gangster_ganesh",
            'asset/pic6.jpg',
            userDp: AssetImage('asset/pic.jpg'),
            userLocation: 'apne adde pe',
          ),
          Post(
            "sanju_sharif",
            'asset/pic.jpg',
            userDp: AssetImage('asset/pic1.jpg'),
            userLocation: 'ghar mai',
          ),
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
