import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teacher App",
          style: TextStyle(color: Colors.black),
        ),
        //elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () => print("menu clicked"),
        ),
      ),
      body: Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.schedule),
                      iconSize: 50.0,
                      onPressed: () => print("Schedule home Screen"),
                    ),
                    Text("Schedule"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.event_available),
                      iconSize: 50.0,
                      onPressed: () => print("Events home Screen"),
                    ),
                    Text("Events"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.record_voice_over),
                      iconSize: 50.0,
                      onPressed: () => print('Attendance Home Screen'),
                    ),
                    Text("Attendance"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.school),
                      iconSize: 50.0,
                      onPressed: () => print('Students home Screen'),
                    ),
                    Text("Students"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.library_books),
                      iconSize: 50.0,
                      onPressed: () => print("HomeWork Home Screen"),
                    ),
                    Text("Home Work"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.note_add),
                      iconSize: 50.0,
                      onPressed: () => print("Notes Home Screen"),
                    ),
                    Text("Notes"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
