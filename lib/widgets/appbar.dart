import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {

  final String appBarTitle;
  final String pageId;

  AppBarWidget(this.appBarTitle,this.pageId);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.black,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          color: Colors.black,
          onPressed: () => Navigator.pushNamed(context, pageId),
        )
      ],
    );
  }
}