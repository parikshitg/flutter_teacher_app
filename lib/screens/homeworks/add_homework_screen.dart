import 'package:flutter/material.dart';

class AddHomework extends StatefulWidget {
  static final id = 'addhomework_screen';

  @override
  _AddHomeworkState createState() => _AddHomeworkState();
}

class _AddHomeworkState extends State<AddHomework> {
  final _formKey = GlobalKey<FormState>();

  String _description;

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

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      print(_description);
      print(_section);
      print(_homeworkClass);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height.toInt();
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
              _submit();
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
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: _classes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String classSelected) {
                              setState(() {
                                _homeworkClass = classSelected;
                                //print(_homeworkClass);
                              });
                            },
                            value: _homeworkClass,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Section',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          child: DropdownButtonHideUnderline(
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
                                  //print(_section);
                                });
                              },
                              value: _section,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        child: TextFormField(
                          maxLines: _height,
                          decoration: InputDecoration.collapsed(
                              hintText: "Enter description here..."),
                          onSaved: (value) {
                            _description = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
