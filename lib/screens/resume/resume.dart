import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                "Resume Builder",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    "General Information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Address Line 1',
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'State',
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'Zip Code',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Career Objective (optional)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "An objective statement quickly explains your career goals and is a good choice for those with limited professional experience, such as recent college or high school graduates.",
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Career Objective (optional)',
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Take a moment to consider which skills make you a great fit for the job. Review the job description and highlight keywords that you have had proven success with in the past. Consider both hard (technical) and soft (interpersonal) skills, as well as transferable skills you can use when changing careers or industries.",
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Slills',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
