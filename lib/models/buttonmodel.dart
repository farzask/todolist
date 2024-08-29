import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uptodo/models/textmodel.dart';

class FilledButtonModel extends StatelessWidget {
  final String text;
  final Widget page;

  const FilledButtonModel({
    super.key,
    required this.text,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
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
}

class UnFilledButtonModel extends StatelessWidget {
  final String text;
  final Widget page;

  const UnFilledButtonModel({
    super.key,
    required this.text,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
            color: Color(0xff8687E7), width: 2.0), // Border color and thickness
        padding: const EdgeInsets.symmetric(
            horizontal: 40, vertical: 15), // Padding for the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Rounded corners
        ),
      ),
      child: Text(
        text,
        style: TextModel.light,
      ),
    );
  }
}

class UnFilledButtonSVGModel extends StatelessWidget {
  final String text;
  // final Widget page;
  final String iconPath;

  const UnFilledButtonSVGModel(
      {super.key,
      required this.text,
      // required this.page,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Navigator.push(
        // context,
        // MaterialPageRoute(
        //   builder: (context) => page,
        // ),
        // );
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
            color: Color(0xff8687E7), width: 1.0), // Border color and thickness
        padding: const EdgeInsets.symmetric(
            horizontal: 40, vertical: 15), // Padding for the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Rounded corners
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextModel.light,
          ),
        ],
      ),
    );
  }
}
