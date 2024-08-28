import 'package:flutter/material.dart';
import 'package:uptodo/models/textmodel.dart';
import 'package:uptodo/pages/home.dart';
import 'package:uptodo/models/buttonmodel.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextModel.mainheading,
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Username',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Enter your username'),
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Password',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Password'),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                    child: FilledButtonModel(text: 'Login', page: HomePage())),
                const SizedBox(height: 40),
                orDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row orDivider() {
    return const Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.grey, // Adjust the color of the divider
            thickness: 2, // Adjust the thickness of the divider
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "OR",
            style: TextStyle(
              color: Colors.grey, // Adjust the color of the text
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey, // Adjust the color of the divider
            thickness: 1, // Adjust the thickness of the divider
          ),
        ),
      ],
    );
  }

  Widget textBox(String text) {
    return SizedBox(
      height: 48,
      width: 345,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: const Color(0xff1D1D1D),
          filled: true,
          hintText: text,
          hintStyle: TextModel.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Color(0xff535353),
            ),
          ),
        ),
      ),
    );
  }
}
