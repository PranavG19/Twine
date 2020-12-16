import 'package:Twine/screens/businessCard/business_card.dart';
import 'package:Twine/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class AppBarConnections extends StatefulWidget {
  @override
  _AppBarConnectionsState createState() => _AppBarConnectionsState();
}

class _AppBarConnectionsState extends State<AppBarConnections> {
  Future<void> _scan() async {
    ScanResult _ = await BarcodeScanner.scan(
      options: ScanOptions(
        // -1 means back camera, 1 means front camera
        useCamera: -1,
      ),
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Profile()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BusinessCard()));
          },
          child: Icon(
            Icons.qr_code,
            size: 30,
          ),
        ),
        Text(
          "Connections",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            _scan();
          },
          child: Icon(
            Icons.photo_camera,
            size: 30,
          ),
        ),
      ],
    ));
  }
}
