import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uptodo/models/textmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: appbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              noTasks(),
            ],
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
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomAppBar bottomNavBar() {
    return BottomAppBar(
      color: const Color(0xff363636),
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff363636),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedLabelStyle: TextModel.selectedLabel,
        unselectedLabelStyle: TextModel.unselectedLabel,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _selectedIndex == 0 ? Colors.white : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/calendar.svg',
              color: _selectedIndex == 1 ? Colors.white : Colors.grey,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/clock.svg',
              color: _selectedIndex == 2 ? Colors.white : Colors.grey,
            ),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: _selectedIndex == 3 ? Colors.white : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  SizedBox noTasks() {
    return SizedBox(
      width: 500,
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
