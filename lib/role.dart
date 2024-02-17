import 'package:flutter/material.dart';
//import 'package:legal_matrix/lawyer/lawyer.dart';
//import 'package:legal_matrix/prisoner/prisoner.dart';

class MyRole extends StatefulWidget {
  const MyRole({super.key});

  @override
  State<MyRole> createState() => _MyRoleState();
}

class _MyRoleState extends State<MyRole> {
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.height * 0.03;
    double imageSize = MediaQuery.of(context).size.width * 0.2;

    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Legal Matrix",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSize * 2,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Empowering Justice:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSize,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Your Bridge to Legal Aid, Resources, and Rehabilitation",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: fontSize,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.05),
                      alignment: Alignment.centerRight,
                      child: Container(
                        child: Image.asset('assets/images/illustration.png'),
                        width: imageSize * 0.8,
                        height: imageSize * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Choose Your Role",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset('assets/images/balancer.png'),
                          width: imageSize * 0.8,
                          height: imageSize * 0.8,
                        ),
                        Container(
                          child: Image.asset('assets/images/pisinor.png'),
                          width: imageSize * 0.8,
                          height: imageSize * 0.8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
