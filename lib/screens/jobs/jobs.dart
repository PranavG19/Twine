import 'package:Twine/components/job/job_listing.dart';
import 'package:Twine/screens/jobs/jobDescription.dart';
import 'package:flutter/material.dart';

class Jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              "Search Jobs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
            SizedBox(height: 10),
            Text(
              "144 results",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 23,
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JobDescription()));
              },
              child: Column(
                children: [
                  JobListing("assets/google.webp", "Google",
                      "Junior Web Developer", "20,000", false),
                  SizedBox(height: 30),
                  JobListing("assets/apple.png", "Apple",
                      "Junior UI/UX Designer", "25,000", true),
                  SizedBox(height: 30),
                  JobListing("assets/facebook.png", "Facebook",
                      "VueJS Web Developer", "10,000", false),
                  SizedBox(height: 30),
                  JobListing("assets/amazon.png", "Amazon",
                      "Mobile App Developer", "12,000", false),
                  SizedBox(height: 30),
                  JobListing("assets/netflix.png", "Netflix",
                      "React Web Developer", "16,000", false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
