import 'package:flutter/material.dart';

class AddHomework extends StatefulWidget {
  static final id = 'addhomework_screen';

  @override
  _AddHomeworkState createState() => _AddHomeworkState();
}

class _AddHomeworkState extends State<AddHomework> {
  var _homeworkClass = "1";

  var _section = 'A';

  var _classes = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12"
  ];

  var _sections = ['A', 'B', 'C', 'D', 'E'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Homework',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'save',
            ),
            textColor: Colors.black,
            onPressed: () {
              print('Save Clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 150.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Class',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        DropdownButton<String>(
                          items: _classes.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String classSelected) {
                            setState(() {
                              _homeworkClass = classSelected;
                              print(_homeworkClass);
                            });
                          },
                          value: _homeworkClass,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Section',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          color: Colors.lightBlueAccent,
                          child: DropdownButton<String>(
                            items: _sections.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String sectionSelected) {
                              setState(() {
                                _section = sectionSelected;
                                print(_section);
                              });
                            },
                            value: _section,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
