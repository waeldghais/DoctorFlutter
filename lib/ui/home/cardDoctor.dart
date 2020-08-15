import 'package:Doctor/model/Doctor.dart';
import 'package:Doctor/ui/detaille/detailsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  final int index;

  const Doctors(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Hero(
                tag: doctors[index].id,
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: CircleAvatar(

                    backgroundImage: AssetImage(doctors[index].image),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '  Dr. ',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: doctors[index].lastName, style: TextStyle(fontSize: 14, color: Colors.black)),
                        TextSpan(text: " "),
                        TextSpan(text: doctors[index].firstName, style: TextStyle(fontSize: 14, color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 5),
                  child: Text(doctors[index].specaliter,  style: TextStyle(color: Colors.grey),),),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Heure de travail :',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9, color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(text: doctors[index].timing, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9, color: Colors.grey)),

                        ],
                      ),
                    ),)
                ],
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            thickness: 0,
            indent: 2,
            endIndent: 0,
          ),
                        ButtonBar(

                children: <Widget>[
                  FlatButton(
                    child: const Text("Appel"),
                    onPressed: (){},
                  ),
                  FlatButton(
                    child: const Text("Détaillé"),
                    onPressed: ()=>Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            doctor: doctors[index],
                          ),
                        )),
                  )
                ],
              )
        ],
      ),
    );
  }
}


