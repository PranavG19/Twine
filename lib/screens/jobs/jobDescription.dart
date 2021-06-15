import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/apple.png"),
                  radius: 45,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Text("Apple",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        )),
                    Text("Junior UI/UX Designer",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "This team conceptualizes, designs, and creates the user experience for all Apple products, services, and accessories. They consider each human interaction — including every visual, audible, and haptic experience — to create products that are not only beautiful, but also intuitive and useful.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Requirements",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).splashColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "- UI design portfolio",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Excellent interpersonal and communication skills",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Bachelor’s degree in relevant field",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Ability to discuss and explain design options",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Knowledge of relavent Adobe Products",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Critical thinker",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "- Problem solver and customer-centered",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
