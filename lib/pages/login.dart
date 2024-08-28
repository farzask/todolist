import 'package:flutter/material.dart';
import 'package:uptodo/models/textmodel.dart';
import 'package:uptodo/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// final _formkey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

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
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                Center(
                  child: filledButton('Login', const HomePage()),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget filledButton(String text, Widget page) {
    return MaterialButton(
      onPressed: () {
        // if (_formkey.currentState!.validate()) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
        // }
      },
      height: 48,
      minWidth: 269,
      color: const Color(0xff8875FF),
      child: Text(
        text,
        style: TextModel.light,
      ),
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
