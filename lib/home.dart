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
    _tabController = TabController(vsync:this,initialIndex: 0,length:2 );
    _tabController.addListener((){
    if(_tabController.index ==0){
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
      title: Text("LIL ONE"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xff6600EB),
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(text: "VACCINE"),
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
          VaccinationScreen(),
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
