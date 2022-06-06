import 'package:fintech_design/screens/homeScreen.dart';
import 'package:fintech_design/screens/onboarding.dart';
import 'package:fintech_design/screens/statistics.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Statistics(),  
    );
  }
}
