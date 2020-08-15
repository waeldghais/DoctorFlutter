import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class Taming extends StatelessWidget {
  final int id;

  Taming({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, top: 20),
      child: Column(
        children: <Widget>[
          Text("Heure de travail",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.cyan[800])),
          Text(doctors[id].timing,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan[800],
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }}