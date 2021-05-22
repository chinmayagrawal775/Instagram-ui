import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
            iconSize: 25.0,
            color: Colors.black,
          ),
          Expanded(
            child: Text(
              "Instagram",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.north_east_outlined,
            ),
            color: Colors.black,
            iconSize: 25.0,
          ),
        ],
      ),
    );
  }
}
