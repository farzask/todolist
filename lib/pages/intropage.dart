import 'package:flutter/material.dart';
import 'package:uptodo/models/textmodel.dart';
import 'package:uptodo/pages/login.dart';
import 'package:uptodo/pages/sign_in_page.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 35,
              ),
              Text(
                'Welcome to UpTodo',
                style: TextModel.mainheading,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  'Please login to your account or create new account to continue',
                  softWrap: true,
                  style: TextModel.body,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 365,
              ),
              //login button
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                height: 48,
                minWidth: 269,
                color: const Color(0xff8875FF),
                child: Text(
                  'LOGIN',
                  style: TextModel.light,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //sign up button
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      color: Color(0xff8687E7),
                      width: 2.0), // Border color and thickness
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 15), // Padding for the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3), // Rounded corners
                  ),
                ),
                child: Text(
                  'CREATE A NEW ACCOUNT',
                  style: TextModel.light,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
