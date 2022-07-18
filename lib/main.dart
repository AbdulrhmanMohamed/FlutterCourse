

import 'package:flutter/material.dart';
import 'package:networking/controller/catsData.dart';
import 'package:networking/networking.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  var data=CatsData().fetchData();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Networking(),
    );
  }
}