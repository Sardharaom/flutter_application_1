import 'package:flutter/material.dart';
import 'package:telegram/homepage.dart';
import 'package:telegram/pages/radiopage.dart';
import 'package:telegram/pages/webview.dart';

import 'drawerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      //home: const drawerpage(),
      //home : Homepage(),
     // home :RadiuoPage(),
      home :  MyWidget(),
    );
  }
}
