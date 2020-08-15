import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class Local extends StatelessWidget {
  final int id;

  Local({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, top: 20),
      child: Column(
        children: <Widget>[
          Text("Locale",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.cyan[800])),
          Text(doctors[id].locale,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.cyan[800],
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }}