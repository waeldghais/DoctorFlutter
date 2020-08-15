import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class NameDoc extends StatelessWidget {
  final int id;

  NameDoc({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      RichText(
        text: TextSpan(
          text: '  Dr. ',
          style: TextStyle(
              fontSize: 14,
              color: Colors.cyan[800],
              fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
                text: doctors[id].lastName,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.cyan[800],
                    fontWeight: FontWeight.bold)),
            TextSpan(text: " "),
            TextSpan(
                text: doctors[id].firstName,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.cyan[800],
                    fontWeight: FontWeight.bold)),
          ],
        ),
      )
    ;
  }}