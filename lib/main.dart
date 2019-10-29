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
      title:"My Lil One",
      theme: new ThemeData(
        primaryColor: new Color(0xff6002EE),
        accentColor: new Color(0xff7fcc91)
      ),
      debugShowCheckedModeBanner: false,
      home: new Home()
    );
  }
}