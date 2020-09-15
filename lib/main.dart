import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/reshumeme.jpeg"),
                ),
                Text(
                  'Reshu Anghuta',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'BHATAPARA WALI',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      leading: Icon(Icons.videogame_asset,
                          color: Colors.teal, size: 30),
                      title: Text(
                        ' Road Rash',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      leading: Icon(Icons.access_alarms,
                          color: Colors.teal, size: 30),
                      title: Text(
                        ' Qwoeporiwpoeti',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
