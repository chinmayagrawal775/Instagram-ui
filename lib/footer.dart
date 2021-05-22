import 'package:flutter/material.dart';

class Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_filled,),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined,),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined,),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined,),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_rounded,),
              iconSize: 35.0,
            ),
          ],
        ),
      );
    }
}