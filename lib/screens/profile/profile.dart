import 'package:Twine/screens/connections/connections.dart';
import 'package:Twine/screens/jobs/jobs.dart';
import 'package:Twine/screens/company/company.dart';
import 'package:Twine/screens/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 75),
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
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpeg"),
                      radius: 75,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Pranav Krishnan",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  "Student at UMD",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  "Web Developer",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                Text(
                  '"Passion for Learning Technology"',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Connections()))
                      },
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.users,
                            color: Theme.of(context).accentColor,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Connections",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                        width: 0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Resume()));
                      },
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.userTie,
                            color: Theme.of(context).accentColor,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Resume",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                        width: 0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Company()))
                      },
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.briefcase,
                            color: Theme.of(context).accentColor,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Outlook",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                          child: Text(
                            "Personal Website",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.blue,
                          elevation: 0,
                          onPressed: () {}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SignInButton(Buttons.Facebook,
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {}),
                          SignInButton(Buttons.Twitter,
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {}),
                          SignInButton(Buttons.GitHub,
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {}),
                          SignInButton(Buttons.Email,
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Jobs()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Search for Jobs",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  color: Theme.of(context).splashColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
