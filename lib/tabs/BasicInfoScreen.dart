import 'package:flutter/material.dart';

class BasicInfoScreen extends StatelessWidget {
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
                backgroundImage: NetworkImage('https://lh3.googleusercontent.com/tVRP409qAIh9vsuq213HESrrHIyAA5Zb5WkX_5WxqA8wgix7oknjSsu6jYiYxO0yDJo7sVvIhW0Pg4Zsr1OWIpSaLlbgeqVZqqFWBGV9WtRfO52rAlUx07x2s-DxWfTMDDKLBtzInRQ=w1454-h969-no'),
                radius: 100,
                backgroundColor: Colors.white,
              ),
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Card(
                    color: Theme.of(context).primaryColor,
                    child: ListTile(
                      title: Text('January 27, 2018'),
                      subtitle: Text('Date of birth'),
                    ),
                  ),
                  Card(
                    color: Theme.of(context).primaryColor,
                    child: ListTile(
                      title: Text('Baby Memorial Hospital, Calicut'),
                      subtitle: Text('Place of birth'),
                    ),
                  ),
                  Card(
                    color: Theme.of(context).primaryColor,
                    child: ListTile(
                      title: Text('Indian'),
                      subtitle: Text('Nationality'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
