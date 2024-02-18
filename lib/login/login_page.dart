import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:legal_matrix/login/next_page.dart';
//import 'package:legal_matrix/resources/auth_service.dart';

class LOGINPAGE extends StatefulWidget {
  const LOGINPAGE({Key? key}) : super(key: key);

  @override
  State<LOGINPAGE> createState() => _LOGINPAGEState();
}

class _LOGINPAGEState extends State<LOGINPAGE> {
  final _formKey = GlobalKey<FormState>();
  final _emailaddress = TextEditingController();
  final _password = TextEditingController();
  bool rememberMe = false;

  String email = '';
  String password = '';
  bool login = false;
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.height * 0.03;

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize * 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login to your account.",
              ),
            )),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailaddress,
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter user pasword",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  const Text("Remember me"),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage()),
                        );
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            ListTile(
              title: SizedBox(
                height: 55,
                width: double.infinity * 0.8,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // AuthServices.signinUser(email, password, context);
                      }
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    )),
              ),
            ),
            ListTile(
              title:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Login with"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.google),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.facebook),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: const Center(
        child: Text("Forgot Password Page"),
      ),
    );
  }
}
                // ListTile(
                //   title: TextFormField(
                //     keyboardType: TextInputType.emailAddress,
                //     controller: _fullname,
                //     decoration: InputDecoration(
                //       hintText: "Enter user Name",
                //       icon: const Icon(FontAwesomeIcons.person),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: const BorderSide(),
                //       ),
                //     ),
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Please enter user name';
                //       }
                //       return null;
                //     },
                //     onSaved: (value) {
                //       setState(() {
                //         fullname = value!;
                //       });
                //     },
                //   ),
                // ),
                // ListTile(
                //   title: TextButton(
                //       onPressed: () {
                //         var route = MaterialPageRoute(
                //             builder: (context) =>
                //                 NEXTPAGE(value: _emailaddress.text));
                //         Navigator.of(context).push(route);
                //       },
                //       child: const Text(
                //         'fogot pasword?',
                //         style: TextStyle(color: Colors.black),
                //       )),
                // ),
                // ListTile(
                //   title: Container(
                //     height: 55,
                //     width: double.infinity,
                //     child: ElevatedButton(
                //         onPressed: () async {
                //           if (_formKey.currentState!.validate()) {
                //             _formKey.currentState!.save();
                //             login
                //                 ? AuthServices.signinUser(email, password, context)
                //                 : AuthServices.signupUser(
                //                     email, password, fullname, context);
                //           }
                //         },
                //         child: Text(login ? 'Login' : 'Signup')),
                //   ),
                // ),
//                 ListTile(
//                   title: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           login = !login;
//                         });
//                       },
//                       child: Text(login
//                           ? "Don't have an account? Signup"
//                           : "Already have an account? Login")),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class UserFromScreen extends StatefulWidget {
//   const UserFromScreen({Key? key}) : super(key: key);
//
//   @override
//   State<UserFromScreen> createState() => _UserFromScreenState();
// }
//
// class _UserFromScreenState extends State<UserFromScreen> {
//   final _formKey = GlobalKey<FormState>();
//
//   final TextEditingController userName = TextEditingController();
//   final TextEditingController password = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("User From"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               const Text("User Name"),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextFormField(
//                 // keyboardType: TextInputType.number,
//                 // maxLength: 10,
//                 controller: userName,
//                 decoration: InputDecoration(
//                   hintText: "Enter User Name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: const BorderSide(),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter user name';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 controller: password,
//                 decoration: InputDecoration(
//                   hintText: "Enter User Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: const BorderSide(),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter user Password';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     print("Validated");
//
//                     print(
//                         " User Name ${userName.text}, Password ${password.text}");
//
//                     Map userRequiredData = {
//                       "user_name": userName.text,
//                       "password": password.text
//                     };
//
//                     print(userRequiredData);
//                   } else {
//                     print("Not Validated");
//                   }
//                 },
//                 child: const Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
