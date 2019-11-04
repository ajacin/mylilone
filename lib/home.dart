import 'package:flutter/material.dart';
import 'package:my_lil_one/tabs/BasicInfoScreen.dart';
import 'package:my_lil_one/tabs/DetailScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool floatingButton = true;
  String accountDropdownValue = "Adam";
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        floatingButton = true;
      } else {
        floatingButton = false;
      }

      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            DropdownButton(
              value: accountDropdownValue,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Theme.of(context).primaryColor,
              ),
              elevation: 40,
              style: TextStyle(color: Theme.of(context).primaryColor),
              onChanged: (String newValue) {
                setState(() {
                  accountDropdownValue = newValue;
                });
              },
              items: <String>['Adam', 'Eve', 'Kate']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        elevation: 7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).accentColor,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.apps)),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.assessment),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Icon(Icons.account_circle),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BasicInfoScreen(),
          DetailScreen(),
        ],
      ),
      floatingActionButton: floatingButton
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
    );
  }
}
