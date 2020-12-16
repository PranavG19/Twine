import 'package:Twine/screens/feed/feed.dart';
import 'package:Twine/screens/profile/profile.dart';
import 'package:Twine/screens/settings/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey _bottomNavigationKey = GlobalKey();

  final _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Feed(),
              Settings(),
              Profile(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 70,
              backgroundColor: Colors.transparent,
              color: Theme.of(context).accentColor,
              items: <Widget>[
                Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ],
              onTap: (index) {
                _pageController.animateToPage(
                  index,
                  curve: Curves.linear,
                  duration: Duration(milliseconds: 400),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
