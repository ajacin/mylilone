import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:my_lil_one/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main()=> runApp(MyLilOne());

class MyLilOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:"LIL ONE",
      theme: new ThemeData(
        primaryColor: new Color(0xff23B574),
        accentColor: new Color(0xffFFFFFF),
        canvasColor: new Color(0xffFFFFFF),
        splashColor: new Color(0xff23B574),
        textTheme: new TextTheme(
          body1: new TextStyle(color:new Color(0xffFFFFFF),),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: new Home()
    );
  }
}