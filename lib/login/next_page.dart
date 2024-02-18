import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NEXTPAGE extends StatefulWidget {
  final String value;
  const NEXTPAGE({super.key, required this.value});
  @override
  State<NEXTPAGE> createState() => _NEXTPAGEState();
}

class _NEXTPAGEState extends State<NEXTPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("forgot password "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.value,
              style: const TextStyle(fontSize: 34.0, color: Colors.white),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "enter new password",
              icon: const Icon(FontAwesomeIcons.lock),
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
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Confirm passwoed",
              icon: const Icon(FontAwesomeIcons.lock),
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
    );
  }
}
