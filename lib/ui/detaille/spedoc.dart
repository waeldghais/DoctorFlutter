import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class SpeDoc extends StatelessWidget {
  final int id;

  SpeDoc({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(doctors[id].specaliter,
            style:
            TextStyle(fontSize: 16, color: Colors.cyan[800])),
      );
  }}