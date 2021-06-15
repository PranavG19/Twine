import 'package:flutter/material.dart';

class JobListing extends StatelessWidget {
  final String picture;
  final String name;
  final String title;
  final String salary;
  final bool selected;

  JobListing(this.picture, this.name, this.title, this.salary, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected == true ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(15.0),
          topRight: const Radius.circular(15.0),
          bottomLeft: const Radius.circular(15.0),
          bottomRight: const Radius.circular(15.0),
        ),
        boxShadow: [
          BoxShadow(
            color: selected == true
                ? Theme.of(context).primaryColor.withOpacity(0.3)
                : Colors.black.withOpacity(0.3),
            spreadRadius: -10,
            blurRadius: 9,
            offset: Offset(0, 25),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(this.picture),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.title,
                      style: TextStyle(
                          color: selected == true ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      this.name,
                      style: TextStyle(
                          color:
                              selected == true ? Colors.white : Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$" + this.salary,
                  style: TextStyle(
                      color: selected == true ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                Text(
                  "Monthly",
                  style: TextStyle(
                      color: selected == true ? Colors.white : Colors.black,
                      fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
