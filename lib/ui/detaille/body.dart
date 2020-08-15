import 'package:Doctor/ui/detaille/spedoc.dart';
import 'package:Doctor/ui/detaille/tming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

import '../../constants.dart';
import 'avatardoc.dart';
import 'description.dart';
import 'locle.dart';
import 'namedoc.dart';

class Body extends StatelessWidget {
  final int id;
  Body({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 700,
        color: Colors.cyan,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 40,
              bottom: 40,
              left: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
              ),
            ),
            Positioned(
              top: 20,
              bottom: 20,
              left: 25,
              right: 25,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
                child: Column(
                  children: <Widget>[
                    AvatarDoc(id: id),
                    NameDoc(id: id),
                    SpeDoc(id: id),

                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 6, top: 6),
                      child: Container(
                        width: 400,
                        height: 80,
                        color: Colors.grey[200],
                        child: Row(
                          children: <Widget>[
                            Taming(id:id),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                  height: 70,
                                  child: VerticalDivider(color: Colors.grey)),
                            ),
                           Local(id: id)
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("à propos du docteur",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.cyan[800],
                            fontWeight: FontWeight.bold)),),
                    Description(id: id),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: FlatButton(

                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(6)),

                        color: Colors.cyan,
                        onPressed: () {},
                        child: Text(
                          "      prenez rendez-vous      ".toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
