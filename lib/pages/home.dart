import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:uptodo/models/textmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: appbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                noTasks(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff8687E7),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff363636),
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBar('assets/icons/home.svg', 'Home', 0),
            buildNavBar('assets/icons/calendar.svg', 'Calendar', 1),
            const SizedBox(
              width: 30,
            ),
            buildNavBar('assets/icons/clock.svg', 'Focus', 2),
            buildNavBar('assets/icons/user.svg', 'Profile', 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavBar(String iconPath, String name, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
              _selectedIndex == index ? Colors.white : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          Text(
            name,
            style: _selectedIndex == index
                ? TextModel.selectedLabel
                : TextModel.unselectedLabel,
          ),
        ],
      ),
    );
  }

  SizedBox noTasks() {
    return SizedBox(
      width: 500,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/Checklist-rafiki 1.svg'),
          Text(
            'What do you want to do today?',
            style: TextModel.heading,
          ),
          Text(
            'Tap + to add your tasks',
            style: TextModel.body,
          ),
        ],
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: const Color(0xff121212),
      title: Text(
        'My Tasks',
        style: TextModel.mainheading,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/icons/profile-pic (2).png'),
              radius: 20,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
