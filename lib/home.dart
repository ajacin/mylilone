import 'package:flutter/material.dart';
import 'package:my_lil_one/tabs/BasicInfoScreen.dart';
import 'package:my_lil_one/tabs/VaccinationScreen.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

TabController _tabController;
bool floatingButton = true;

@override

void initState() {
    super.initState();
    _tabController = TabController(vsync:this,initialIndex: 1,length:2 );
    _tabController.addListener((){
    if(_tabController.index ==1){
        floatingButton = true;
      } else {
        floatingButton =false;
      }

      setState(() {
        
      });
    }
      
    );
  }

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("My Lil One"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "BASIC"),Tab(text: "VACCINE"),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Icon(Icons.home)
          
        ],
    ),
    body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BasicInfoScreen(),
          VaccinationScreen(),
        ],
      ),
      floatingActionButton: floatingButton
          ? FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
  );
}
}
