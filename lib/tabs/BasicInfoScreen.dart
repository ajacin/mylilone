import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class BasicInfoScreen extends StatefulWidget {
  @override
  _BasicInfoScreenState createState() => new _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  double _avatarWidth = 180;
  double _childNameFontSize=20;
  bool _isDetailsVisible = true;

  _printToast(String message) {
    Fluttertoast.showToast(
        msg: "$message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 10.0);
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 10), () {
      setState(() {
        _avatarWidth = 60;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: new EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    CircularProfileAvatar(
                      'https://lh3.googleusercontent.com/tVRP409qAIh9vsuq213HESrrHIyAA5Zb5WkX_5WxqA8wgix7oknjSsu6jYiYxO0yDJo7sVvIhW0Pg4Zsr1OWIpSaLlbgeqVZqqFWBGV9WtRfO52rAlUx07x2s-DxWfTMDDKLBtzInRQ=w1454-h969-no', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                      radius: _avatarWidth,
                      backgroundColor: Colors.transparent,
                      borderWidth: 4,
                      initialsText: Text(
                        "ADAM",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      borderColor: Colors.white,
                      elevation: 8.0,
                      foregroundColor: Colors.white.withOpacity(0.1),
                      cacheImage: true,
                      onTap: () {
                        setState(() {
                          _avatarWidth = (_avatarWidth == 180)
                              ? _avatarWidth = 60
                              : _avatarWidth = 180;
                          _childNameFontSize = (_childNameFontSize == 20)
                              ? _childNameFontSize = 40
                              : _childNameFontSize = 20;
                          _isDetailsVisible =!_isDetailsVisible;
                        });
                      },
                      showInitialTextAbovePicture: false,
                    ),
                    Padding(
  padding: EdgeInsets.only(top:10.0),
  child: Text(
                      "Adam Jacob",
                      style: TextStyle(
                          fontSize: _childNameFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
),
                    
                  ],
                ),
              ),
              Visibility(
                visible:_isDetailsVisible,
                child:
              Column(
                children: <Widget>[
                  Card(
                color: Theme.of(context).accentColor,
                elevation: 8,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.cake,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text('January 27, 2018'),
                      subtitle: Text('Date of birth'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.local_hospital,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text('Baby Memorial Hospital, Calicut'),
                      subtitle: Text('Place of birth'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text('Indian'),
                      subtitle: Text('Nationality'),
                    ),
                  ],
                ),
              ),
              Card(
                  color: Theme.of(context).accentColor,
                  elevation: 8.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _printToast("This feature is not yet supported!");
                        },
                        child: Container(
                          height: 50,
                          child: Icon(
                            Icons.contact_mail,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _printToast("This feature is not yet supported");
                        },
                        child: Container(
                          height: 50,
                          child: Icon(
                            Icons.school,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _printToast("This feature is not yet supported");
                        },
                        child: Container(
                          height: 50,
                          child: Icon(
                            Icons.group,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _printToast("This feature is not yet supported");
                        },
                        child: Container(
                          height: 50,
                          child: Icon(
                            Icons.gps_fixed,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
