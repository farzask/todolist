import 'package:flutter/material.dart';
import 'package:uptodo/models/textmodel.dart';
import 'package:uptodo/pages/home.dart';
import 'package:uptodo/models/buttonmodel.dart';
import 'package:uptodo/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextModel.mainheading,
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Email',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Enter your Email', _emailController, false),
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Password',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Password', _passwordController, true),
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Confirm Password',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox(
                      'Re-enter your Password', _passwordController, true),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child:
                        FilledButtonModel(text: 'Sign Up', page: HomePage())),
                const SizedBox(height: 20),
                orDivider(),
                const SizedBox(height: 20),
                const Center(
                  child: UnFilledButtonSVGModel(
                    iconPath: 'assets/icons/google.svg',
                    text: 'Login with Google',
                    // page: '',
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: UnFilledButtonSVGModel(
                    iconPath: 'assets/icons/apple.svg',
                    text: 'Login with Apple',
                    // page: '',
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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

Widget textBox(
    String text, TextEditingController controller, bool obscureText) {
  return SizedBox(
    height: 48,
    width: 345,
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: TextModel.body,
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
