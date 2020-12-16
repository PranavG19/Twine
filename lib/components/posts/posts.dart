import 'package:Twine/components/posts/post/post.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(
          "River Hill FBLA",
          "assets/fbla.png",
          "assets/hiring.jpg",
          250,
          80,
          "We are looking for 3 graphic designers for a new project! More information on our website",
        ),
        SizedBox(height: 30),
        Post(
          "Arron Hernendez  ",
          "assets/profile7.png",
          "assets/post2.jpg",
          25,
          25,
          "We are looking for 3 graphic designers for a new project! More information on our website",
        ),
      ],
    );
  }
}
