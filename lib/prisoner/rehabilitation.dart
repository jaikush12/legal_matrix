import 'package:flutter/material.dart';

class Rehabilitation extends StatefulWidget {
  const Rehabilitation({super.key});

  @override
  State<Rehabilitation> createState() => _RehabilitationState();
}

class _RehabilitationState extends State<Rehabilitation> {
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.height * 0.03;
    // double imageSize = MediaQuery.of(context).size.width * 0.4;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Rehabilitation Program",
            style: TextStyle(
              fontSize: fontSize * 2,
            ),
          ),
        ],
      ),
    );
  }
}
