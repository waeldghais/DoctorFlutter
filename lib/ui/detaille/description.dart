import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class Description extends StatelessWidget {
  final int id;

  Description({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15,top:11 ,right: 5),
      child: Text(doctors[id].description,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              )),
    );
  }}