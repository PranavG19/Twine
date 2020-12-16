import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  final String username;
  final String profilePicture;
  final String postPicture;
  final int likes;
  final int comments;
  final String description;

  Post(this.username, this.profilePicture, this.postPicture, this.likes,
      this.comments, this.description);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          // Thing Above Picture
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(this.profilePicture),
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    this.username,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(height: 10),
          // Post Picture
          Container(
            height: 300,
            width: size.width - 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(this.postPicture),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: -15,
                  blurRadius: 9,
                  offset: Offset(0, 30),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          // Likes and stuff
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Theme.of(context).splashColor,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      this.likes.toString(),
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(width: 30),
                    Icon(
                      FontAwesomeIcons.comments,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      this.comments.toString(),
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark, size: 20),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Text Below Comments
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: this.username + ": ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: this.description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
