
import 'package:Doctor/ui/home/cardDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Doctor/model/Doctor.dart';

import '../../constants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10),
      child:Expanded(

        child: ListView.builder(
              //physics: NeverScrollableScrollPhysics(),
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: doctors.length-1,
              itemBuilder: (ctx, index) => Doctors(index)),



    )
    );
  }

}