import 'package:flutter/material.dart';

class AppBarFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
          Text(
            "Feed",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.message,
            size: 25,
          ),
        ],
      ),
    );
  }
}
