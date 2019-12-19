import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';

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

  int group = 1;

  File _profileImage;

  _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog;
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

  //date of birth picker
  Future _selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    );
    if (picked == null) {
      return;
    } else {
      _dob = picked;
      print(_dob);
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
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Save'),
            onPressed: () {print('save clicked');},
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
                      /*style: TextStyle(
                        fontSize: 18.0
                      ),*/
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: 'Name',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _rollNo,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.confirmation_number,
                        ),
                        labelText: 'Roll No',
                      ),
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
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _fathersName,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: 'Fathers Name',
                      ),
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
                        labelText: 'Fathers Phone No',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _mothersName,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: 'Mothers Name',
                      ),
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
                        labelText: 'Mothers Phone No',
                      ),
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
                              width: 10.0,
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Male'),
                                  Radio(
                                    value: 1,
                                    groupValue: group,
                                    onChanged: (T) {
                                      print(T);
                                      setState(() {
                                        group = T;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('Female'),
                                  Radio(
                                    value: 2,
                                    groupValue: group,
                                    onChanged: (T) {
                                      print(T);
                                      setState(() {
                                        group = T;
                                      });
                                    },
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
                      onTap: _selectDate,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.cake,
                        ),
                        labelText: 'DOB',
                      ),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          onPressed: () {
            print('save clicked');
          },
          color: Colors.black,
          textColor: Colors.white,
          child: Text('Save'),
        ),
      ),*/
    );
  }
}
