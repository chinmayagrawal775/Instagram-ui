import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, top: 10.0,),
      child: Row(
        children: <Widget>[
          YourStory(),
          OtherStory(
            "crazy.felow",
            userDp: AssetImage('asset/pic1.jpg'),
          ),
          OtherStory(
            "simple_man",
            userDp: AssetImage('asset/pic2.jpg'),
          ),
          OtherStory(
            "curious_harihs_pal",
            userDp: AssetImage('asset/pic3.jpg'),
          ),
          OtherStory(
            "sony_computers",
            userDp: AssetImage('asset/pic4.jpg'),
          ),
          OtherStory(
            "flutter.dev",
            userDp: AssetImage('asset/pic5.jpg'),
          ),
          OtherStory(
            "geeky_nerd",
          ),
        ],
      ),
    );
  }
}

class YourStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('asset/pic6.jpg'),
                radius: 30.0,
              ),
              CircleAvatar(
                child: Icon(
                  Icons.add,
                  size: 20.0,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue,
                radius: 10.0,
              )
            ],
          ),
          Text(
            "Your Story",
          ),
        ],
      ),
    );
  }
}

class OtherStory extends StatelessWidget {
  String name;
  AssetImage userDp = AssetImage(
    'asset/default_dp.jpg',
  );

  OtherStory(this.name, {this.userDp = const AssetImage('asset/default_dp.jpg')});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: userDp,
            radius: 30.0,
            backgroundColor: Colors.transparent,
          ),
          Container(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
            ),
            width: 70.0,
          ),
        ],
      ),
    );
  }
}
