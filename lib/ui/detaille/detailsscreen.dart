import 'package:Doctor/model/Doctor.dart';
import 'package:flutter/material.dart';

import 'body.dart';


class DetailsScreen extends StatelessWidget {
  final Doctor doctor;

  const DetailsScreen({Key key, this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // each product have a color
      appBar: buildAppBar(context),
      body:Body(id: doctor.id),
      bottomNavigationBar: BottomNavigationBars(),
    );
  }
}



class BottomNavigationBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.call,
            color: Colors.white,
          ),
          title: new Text('Call', style: TextStyle(color: Colors.white)),

        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.insert_emoticon, color: Colors.white),
          title: new Text(
            'Doctor',
          ),
        ),

        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.feedback,
            color: Colors.white,
          ),
          title: new Text('feedback', style: TextStyle(color: Colors.white)),
        ),
      ],
      backgroundColor: Colors.cyan,
      currentIndex: 1,
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.cyan,
    elevation: 0,

    title: const Text(
      "DOCTOR DéTAILLE",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    iconTheme: new IconThemeData(color: Colors.white),
    centerTitle: true,
  );
}

Drawer buildDrawe(BuildContext context) {
  return Drawer(

    child: ListView(
      children: <Widget>[Text('test')],
    ),
  );
}
