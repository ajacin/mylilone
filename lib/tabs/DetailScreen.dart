import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.fastfood,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('NUTRITION',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.library_books,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('LEARNING',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[300],
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.local_hospital,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('IMMUNITY',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.teal,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.directions_bike,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('ACTIVITIES',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.link,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('LINKS',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.lime,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.alarm,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('REMINDERS',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            // color: Theme.of(context).primaryColor,
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.exposure_plus_1,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                Text('POINTS',
                    style: TextStyle(color: Theme.of(context).accentColor)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
