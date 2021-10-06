import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './screens/assesment_list_screen.dart';
import './screens/participants_screen.dart';
import './screens/accessors_screen.dart';
import './screens/assesment_centre_activity_screen.dart';
import './screens/assesment_name_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "WorkSans",
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.black, fontSize: 17),
              button: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
              display1: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              subhead: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              title: TextStyle(color: Colors.black),
              caption: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 17))),
      home: AssesmentListSCreen(),
    );
  }
}
