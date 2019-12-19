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
  DateTime _dob = DateTime.now();
  String _address = '';


  Future _selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate:  DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    );
  }


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
      body: GestureDetector(
        onTap: () => FocusScope.of(context)
            .unfocus(),
              child: ListView(
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
                    SizedBox(height: 10.0,),
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
                    SizedBox(height: 10.0,),
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
                    SizedBox(height: 10.0,),
                    TextFormField(
                      initialValue: _fathersName,
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'Fathers Name',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      initialValue: _fathersPhoneNo,
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'Fathers Phone No',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      initialValue: _mothersName,
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'Mothers Name',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      initialValue: _mothersPhoneNo,
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'Mothers Phone No',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'Gender',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      onTap: _selectDate,
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,),
                        labelText: 'DOB',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      initialValue: _address,
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
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          onPressed: () {print('save clicked');},
          color: Colors.black,
          textColor: Colors.white,
          child: Text('Save'),
        ),
      ),
    );
  }
}
