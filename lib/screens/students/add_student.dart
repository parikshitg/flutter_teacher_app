import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  static final id = 'add_student';

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {

  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _rollNo = '';
  String _bloodGroup = '';
  String _fathersName = '';
  String _mothersName = '';
  String _fathersPhoneNo = '';
  String _mothersPhoneNo = '';
  bool _gender;
  String _dob = '';
  String _address = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Student",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    initialValue: _rollNo,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.confirmation_number,),
                      labelText: 'Roll No',
                    ),
                  ),
                  TextFormField(
                    initialValue: _bloodGroup,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Blood Group',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Fathers Name',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Fathers Phone No',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Mothers Name',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Mothers Phone No',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Gender',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'DOB',
                    ),
                  ),
                  TextFormField(
                    initialValue: _name,
                    /*style: TextStyle(
                      fontSize: 18.0
                    ),*/
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,),
                      labelText: 'Address',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          onPressed: () {},
          color: Colors.black,
          textColor: Colors.white,
          child: Text('Save'),
        ),
      ),
    );
  }
}
