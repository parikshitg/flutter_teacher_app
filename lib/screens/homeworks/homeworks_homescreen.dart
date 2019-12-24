import 'package:flutter/material.dart';

class HomeworksHomescreen extends StatefulWidget {
  static final String id = 'homework_homescreen';

  @override
  _HomeworksHomescreenState createState() => _HomeworksHomescreenState();
}

class _HomeworksHomescreenState extends State<HomeworksHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homework',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {
              print('Add button clicked');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Card(
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Class 5 - C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.black,
                          onPressed: () {
                            print('delete button clicked');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut ero labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco poriti laboris nisi ut aliquip ex ea commodo consequat.'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Friday, 29 May 2015 05:50:06', style: TextStyle(color: Colors.black54),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
