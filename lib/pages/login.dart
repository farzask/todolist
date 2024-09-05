import 'package:flutter/material.dart';
import 'package:uptodo/models/textmodel.dart';
import 'package:uptodo/pages/home.dart';
import 'package:uptodo/models/buttonmodel.dart';
import 'package:uptodo/pages/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  'Email',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Enter your email', _emailController),
                ),
                const SizedBox(height: 20),
                Text(
                  style: TextModel.light,
                  'Password',
                ),
                const SizedBox(height: 10),
                Center(
                  child: textBox('Password', _passwordController),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                    child: FilledButtonModel(text: 'Login', page: HomePage())),
                const SizedBox(height: 40),
                orDivider(),
                const SizedBox(height: 40),
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
                      'Doesn\'t have an account?',
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
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register',
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

  Widget textBox(String text, TextEditingController controller) {
    return SizedBox(
      height: 48,
      width: 345,
      child: TextFormField(
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
}
