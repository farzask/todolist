import 'package:flutter/material.dart';
import 'package:uptodo/models/buttonmodel.dart';
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
              const FilledButtonModel(text: 'LOGIN', page: LoginPage()),

              const SizedBox(
                height: 10,
              ),

              //sign up button
              const UnFilledButtonModel(
                  text: 'CREATE A NEW ACCOUNT', page: SignUpPage())
            ],
          ),
        ),
      ),
    );
  }
}
