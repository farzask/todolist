import 'package:flutter/material.dart';
import 'package:uptodo/pages/intropage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import "package:flutter_dotenv/flutter_dotenv.dart";
// import 'package:uptodo/pages/home.dart';
// import 'package:uptodo/pages/sign_in_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
      ),
      home: const Intropage(),
    );
  }
}
