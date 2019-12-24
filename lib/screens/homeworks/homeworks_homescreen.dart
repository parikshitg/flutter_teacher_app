import 'package:flutter/material.dart';

import '../../models/homework_model.dart';
import 'add_homework_screen.dart';

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
            onPressed: () => Navigator.pushNamed(context, AddHomework.id),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: homeworks.map((tx) { 
            return Padding(
               padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0), 
              //padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Card(
                elevation: 3.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Class ${tx.className} - ${tx.section}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Text(
                          '${tx.body}'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Friday, 29 May 2015 05:50:06',
                        style: TextStyle(
                            color: Colors.black54, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },).toList(),
        ),
      ),
    );
  }
}
