import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

class AvatarDoc extends StatelessWidget {
  final int id;

  AvatarDoc({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Hero(
          tag: doctors[id].id,
          child: Padding(
            padding: EdgeInsets.all(19),
            child: CircleAvatar(
              backgroundImage: AssetImage(doctors[id].image),
              radius: 57,
            ),
          ))
    ;
  }
}