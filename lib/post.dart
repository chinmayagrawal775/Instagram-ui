import 'package:flutter/material.dart';

class Post extends StatelessWidget {

  String userName;
  String postImage;
  String userLocation = '';
  AssetImage userDp = AssetImage('asset/default_dp.jpg');

  Post(this.userName, this.postImage, {this.userLocation = '', this.userDp = const AssetImage('asset/default_dp.jpg')});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostHeader(this.userName, userLocation: this.userLocation,userDp: this.userDp,),
          PostImage(this.postImage,),
          PostFooter(this.userName,),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {

  String userName;
  String userLocation;
  AssetImage userDp = AssetImage('asset/default_dp.jpg');

  PostHeader(this.userName, {this.userLocation, this.userDp = const AssetImage('asset/default_dp.jpg')});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: userDp,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userLocation,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "...",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class PostImage extends StatelessWidget{

  String postImage = 'asset/default_dp.jpg';

  PostImage(this.postImage);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      postImage,
    );
  }
}

class PostFooter extends StatelessWidget {

  String userName;

  PostFooter(this.userName);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.north_east_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
              onPressed: () {},
              iconSize: 30.0,
            ),
          ],
        ),
        Text(
          "14 likes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        Row(
          children: [
            Text(
              userName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Instagram UI made by me...!! ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
