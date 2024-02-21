import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login.dart';

class SignupPrisoner extends StatefulWidget {
  const SignupPrisoner({Key? key}) : super(key: key);

  @override
  State<SignupPrisoner> createState() => _SignupPrisonerState();
}

class _SignupPrisonerState extends State<SignupPrisoner> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailaddress = TextEditingController();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();

  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.height * 0.03;
    // double imageSize = MediaQuery.of(context).size.width * 0.4;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Stack(children: [
                Image.asset(
                  width: width * 0.6,
                  height: height * 0.7,
                  'assets/images/lawyer-keywords.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: width * 0.4,
                  height: height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.01),
                        child: Text(
                          "Legal Matrix",
                          style: TextStyle(
                            color: Colors.white,
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
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.01),
                        child: Text(
                          "Empowering Justice:",
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.grey[500],
                            fontSize: fontSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize * 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.01),
                  child: Text(
                    "Register your account",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: fontSize * 0.7,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: firstname,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              onFieldSubmitted: (value) {
                                //Validator
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your name';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: lastname,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter last name';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-mail Address",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailaddress,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              onFieldSubmitted: (value) {
                                //Validator
                              },
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phonenumber,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length > 10) {
                                  return 'Please enter phone number';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: password,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter user password';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confirm Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: fontSize * 0.7,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: password,
                              decoration: InputDecoration(
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter user password';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: width * 0.2,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        maximumSize: MaterialStateProperty.all(
                            Size(width * 0.4, height * 0.06)),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPrisoner()));
                          const SnackBar(
                            content: Text(
                              'going to login page',
                            ),
                          );
                        } else {
                          const SnackBar(content: Text('invalid'));
                        }
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPrisoner()));
                    },
                    child: const Text("Already have an account? Log in"))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
