import 'package:flutter/material.dart';

class ConnectionsList extends StatelessWidget {
  final connectionsList = [
    ["assets/fbla.png", "River Hill FBLA"],
    ["assets/google.webp", "Google"],
    ["assets/profile1.jpg", "Varoon Alamgir"],
    ["assets/profile7.png", "Arron Hernendez"],
    ["assets/profile4.jpg", "David Mellony"],
    ["assets/profile5.jpg", "Alyssa Abara"],
    ["assets/profile6.jpg", "Sarah Whang"],
    ["assets/profile2.jpeg", "Timmothy Shamra"],
    ["assets/profile3.jpeg", "Emily Jefferson"],
    ["assets/fbla.png", "River Hill FBLA"],
    ["assets/google.webp", "Google"],
    ["assets/profile1.jpg", "Varoon Alamgir"],
    ["assets/profile2.jpeg", "Timmothy Shamra"],
    ["assets/profile3.jpeg", "Emily Jefferson"],
    ["assets/profile4.jpg", "David Mellony"],
    ["assets/profile5.jpg", "Alyssa Abara"],
    ["assets/profile6.jpg", "Sarah Whang"],
    ["assets/profile7.png", "Arron Hernendez"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: connectionsList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(connectionsList[index][0]),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      connectionsList[index][1],
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text("Remove"),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
