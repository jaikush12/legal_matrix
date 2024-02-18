import 'package:flutter/material.dart';
// import 'package:legal_matrix/lawyer/lawyer.dart';
import 'package:legal_matrix/login/login_page.dart';
import 'package:legal_matrix/login/signup%20page.dart';
import 'package:legal_matrix/prisoner/prisoner.dart';
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
    // double imageSize = MediaQuery.of(context).size.width * 0.4;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: Text(
                      "Legal Matrix",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSize * 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 5,
                    indent: width * 0.01,
                    endIndent: width * 0.8,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: Text(
                      "Empowering Justice:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSize,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: Text(
                      "Your Bridge to Legal Aid, Resources, and Rehabilitation",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: fontSize,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: width * 0.05),
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 220,
                          width: 220,
                          child: Image.asset('assets/images/illustration.png'),
                        ),
                        const SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: const BorderRadius.only(
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
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SIGNUPPAGE()),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child:
                                      Image.asset('assets/images/balancer.png'),
                                ),
                              ),
                            ),
                            const Text(
                              "Lawyer",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Prisoner()),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child:
                                      Image.asset('assets/images/pisinor.png'),
                                ),
                              ),
                            ),
                            const Text(
                              "Prisoner",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
