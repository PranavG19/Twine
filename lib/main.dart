import 'package:flutter/material.dart';

import 'package:Twine/screens/signIn/login_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Twine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(108, 75, 239, 1),
        accentColor: Color.fromRGBO(54, 159, 255, 1),
        highlightColor: Color.fromRGBO(255, 190, 0, 1),
        splashColor: Color.fromRGBO(255, 105, 105, 1),
        backgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}
