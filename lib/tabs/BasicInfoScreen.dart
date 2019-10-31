import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BasicInfoScreen extends StatelessWidget {
  _printToast(String message){
    Fluttertoast.showToast(
        msg: "$message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 10.0
    );
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
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/tVRP409qAIh9vsuq213HESrrHIyAA5Zb5WkX_5WxqA8wgix7oknjSsu6jYiYxO0yDJo7sVvIhW0Pg4Zsr1OWIpSaLlbgeqVZqqFWBGV9WtRfO52rAlUx07x2s-DxWfTMDDKLBtzInRQ=w1454-h969-no'),
                radius: 100,
                backgroundColor: Colors.white,
              ),
              ),
              Card(
                color: Theme.of(context).accentColor,
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
      ),
    );
  }
}
