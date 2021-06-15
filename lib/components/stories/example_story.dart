import 'package:flutter/material.dart';

class ExampleStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/story.png"), fit: BoxFit.contain),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).accentColor
                          ]),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/profile5.jpg"),
                        radius: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
