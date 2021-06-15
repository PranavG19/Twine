import 'package:Twine/components/appBars/app_bar_connections.dart';
import 'package:Twine/components/connections/connectionsList.dart';
import 'package:flutter/material.dart';

class Connections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 50),
            AppBarConnections(),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                labelText: 'Search',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 180,
              child: ConnectionsList(),
            )
          ],
        ),
      ),
    );
  }
}
