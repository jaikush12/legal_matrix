import 'dart:async';
import 'package:flutter/material.dart';
import 'package:legal_matrix/role.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyRole())));
  }

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.height * 0.075;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          FlutterLogo(size: MediaQuery.of(context).size.height * 0.5),
          Text(
            "Legal Matrix",
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontFamily: 'Roboto',
              decoration: TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}
