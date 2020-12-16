import 'package:Twine/components/appBars/app_bar_feed.dart';
import 'package:Twine/components/posts/posts.dart';
import 'package:Twine/components/stories/stories.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // REPLACE WITH LISTVIEW
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            AppBarFeed(),
            SizedBox(height: 20),
            Stories(),
            SizedBox(height: 30),
            Posts(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
