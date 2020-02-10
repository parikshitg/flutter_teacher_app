import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/student_model.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';

class AddStudent extends StatefulWidget {
  final Student student;

  AddStudent({this.student});

  static final id = 'add_student';

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _dobController = TextEditingController();
  var _dobFormat = DateFormat('dd-MM-yyyy');

  String _name = '';
  String _rollNo;
  String _bloodGroup = '';
  String _fathersName = '';
  String _mothersName = '';
  String _fathersPhoneNo = '';
  String _mothersPhoneNo = '';
  String _gender = '';
  DateTime _dob;
  String _address = '';

  int _genderGroup = -1;

  File _profileImage;

  _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog;
  }

  Future<Null> _andriodDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2021));

    if (picked != null && picked != _dob) {
      setState(() {
        _dob = picked;
        print(_dob);
        _dobController.text = _dobFormat.format(picked);
      });
    }
  }

  _iosBottomSheet() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('Add Photo'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text("Take Photo"),
              onPressed: () => _handleImageFromGallery(ImageSource.camera),
            ),
            CupertinoActionSheetAction(
              child: Text("Choose from Gallery"),
              onPressed: () => _handleImageFromGallery(ImageSource.gallery),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }

  _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Add Photo'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("Take Photo"),
              onPressed: () => _handleImageFromGallery(ImageSource.camera),
            ),
            SimpleDialogOption(
              child: Text("Choose from Gallery"),
              onPressed: () => _handleImageFromGallery(ImageSource.gallery),
            ),
            SimpleDialogOption(
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  //image picker
  _handleImageFromGallery(ImageSource source) async {
    File imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {
      setState(() {
        _profileImage = imageFile;
      });
    }
  }


  void _genderFunction(int value) {
    setState(() {
      _genderGroup = value;

      switch (_genderGroup) {
        case 1:
          _gender = "Male";
          print('Male');
          //_answer = 'Male';
          break;
        case 2:
          _gender = 'Female';
          print('Female');
          //_answer = 'Female';
          break;
      }
    });
  }

  //_submit form function
  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      Student student = Student(
        name: _name,
        rollNo: _rollNo,
        bloodGroup: _bloodGroup,
        fathersName: _fathersName,
        fathersPhoneNo: _fathersPhoneNo,
        mothersName: _mothersName,
        mothersPhoneNo: _mothersPhoneNo,
        gender: _gender,
        address: _address,
        dob: _dob,
      );

      print('student.name: ${student.name}');
      print('student.rollNo: ${student.rollNo}');
      print('student.bloodGroup: ${student.bloodGroup}');
      print('student.fathersName: ${student.fathersName}');
      print('student.fathersPhoneNo: ${student.fathersPhoneNo}');
      print('student.mothersName: ${student.mothersName}');
      print('student.mothersPhoneNo: ${student.mothersPhoneNo}');
      print('student.gender: ${student.gender}');
      print('student.dob: ${student.dob}');
      print('student.address: ${student.address}');
    }
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
          icon: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Save'),
            onPressed: _submit,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: _showSelectImageDialog,
                      child: Container(
                        child: CircleAvatar(
                          radius: 60.0,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          backgroundColor: Colors.grey,
                          //backgroundImage: AssetImage('assets/images/avatar.jpg'),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: _name,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: 'Name',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please Enter a valid name'
                          : null,
                      onSaved: (input) => _name = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.confirmation_number,
                        ),
                        labelText: 'Roll No',
                      ),
                      onSaved: (input) => _rollNo = input.toString(),
                      //validator: (input) =>   ,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _bloodGroup,
                      decoration: InputDecoration(
                        icon: Icon(
                          Entypo.drop,
                        ),
                        labelText: 'Blood Group',
                      ),
                      onSaved: (input) => _bloodGroup = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _fathersName,
                      decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.male,
                        ),
                        labelText: 'Father\'s Name',
                      ),
                      onSaved: (input) => _fathersName = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _fathersPhoneNo,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                        ),
                        labelText: 'Father\'s Phone No',
                      ),
                      onSaved: (input) => _fathersPhoneNo = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _mothersName,
                      decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.female,
                        ),
                        labelText: 'Mother\'s Name',
                      ),
                      onSaved: (input) => _mothersName = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _mothersPhoneNo,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                        ),
                        labelText: 'Mother\'s Phone No',
                      ),
                      onSaved: (input) => _mothersPhoneNo = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.transgender,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Container(
                          width: 230,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Male'),
                                  Radio(
                                    value: 1,
                                    groupValue: _genderGroup,
                                    onChanged: _genderFunction,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('Female'),
                                  Radio(
                                    value: 2,
                                    groupValue: _genderGroup,
                                    onChanged: _genderFunction,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.cake,
                        ),
                        labelText: 'DOB',
                      ),
                      onTap: () {
                        Platform.isIOS
                            ? showCupertinoModalPopup(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 300.0,
                                    child: CupertinoDatePicker(
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (datetime) {
                                          print(datetime);
                                          _dobController.text =
                                              _dobFormat.format(datetime);
                                              _dob = datetime;
                                        }),
                                  );
                                })
                            : _andriodDatePicker(context);
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _address,
                      decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.locationArrow,
                        ),
                        labelText: 'Address',
                      ),
                      onSaved: (input) => _address = input,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
