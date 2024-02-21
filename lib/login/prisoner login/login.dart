import 'package:flutter/material.dart';
import 'package:legal_matrix/constents/utils.dart';
import 'package:legal_matrix/login/lawyer%20login/login_page.dart';
import 'package:legal_matrix/prisoner/prisoner.dart';

class LoginPrisoner extends StatefulWidget {
  const LoginPrisoner({super.key});

  @override
  State<LoginPrisoner> createState() => _LoginPrisonerState();
}

class _LoginPrisonerState extends State<LoginPrisoner> {
  final _formKey = GlobalKey<FormState>();
  final _emailaddress = TextEditingController();
  final _password = TextEditingController();
  bool rememberMe = false;
  bool _isLoading = false;

  String email = '';
  String password = '';
  @override
  void dispose() {
    super.dispose();
    _emailaddress.dispose();
    _password.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods()
        .loginUser(email: _emailaddress.text, password: _password.text);
    if (res == 'success') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Prisoner()),
          (route) => false);

      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fontSize = MediaQuery.of(context).size.height * 0.03;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: height,
              width: width,
              child: Image.asset(
                  'assets/images/african-american-employer-holding-employment-agreement-handshaking-candidate-close-up-view 1.png')),
          Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.3,
                ),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Login your account.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 1,
                    ),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "E-mail Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize * 0.7,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailaddress,
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
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
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize * 0.7,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.emailAddress,
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
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
                  ],
                ),
                ListTile(
                  title: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage()),
                            );
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(color: Colors.white),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
