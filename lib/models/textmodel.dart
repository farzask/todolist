import 'package:flutter/material.dart';

class TextModel {
  static TextStyle mainheading = const TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle heading = const TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static TextStyle body = const TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w200,
  );

  static TextStyle light = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w200,
  );

  static TextStyle hintText = const TextStyle(
    fontSize: 16,
    color: Color(0xff979797),
    fontWeight: FontWeight.w200,
  );

  static TextStyle selectedLabel = const TextStyle(
    fontSize: 12,
    color: Colors.white,
    // fontWeight: FontWeight.w200,
  );

  static TextStyle unselectedLabel = const TextStyle(
    fontSize: 12,
    color: Colors.grey,
    // fontWeight: FontWeight.w200,
  );
}
