
import 'package:Doctor/ui/home/body.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      drawer: buildDrawe(context),
      backgroundColor: Colors.grey[300],
      appBar: buildAppBar(context),
      body:Body(),
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
            color: Colors.grey,
          ),
          title: new Text('Call', style: TextStyle(color: Colors.grey)),

        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.insert_emoticon, color: Colors.grey),
          title: new Text(
            'Doctor',
          ),
        ),

        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.feedback,
            color: Colors.grey,
          ),
          title: new Text('feedback', style: TextStyle(color: Colors.grey)),
        ),
      ],
      backgroundColor: Colors.white,
      currentIndex: 1,
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Text(
      'DOCTOR',
      style: TextStyle(
        color: Colors.blueGrey,
      ),
    ),
    iconTheme: new IconThemeData(color: Colors.blueGrey),
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
