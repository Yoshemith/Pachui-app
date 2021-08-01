import 'package:flutter/material.dart';
import 'package:pachui_app/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobsito',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0XFF102B4C),
        accentColor: Color(0XFF518BAA),
        highlightColor: Color(0XFFB7B7D2),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF518BAA),
          ),
          headline2: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF102B4C), //Color(0Xff5F5FFF),
          ),
        ),
      ),
      home: Welcome(),
    );
  }
}
