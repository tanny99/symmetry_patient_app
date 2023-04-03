import 'package:flutter/material.dart';
import 'package:patient_side/Views/Profile/profile.dart';
import 'package:patient_side/Views/Schedule/schedule.dart';
import 'package:patient_side/Views/Service/service.dart';
import 'package:patient_side/Views/Support/support.dart';

import '../Utilities/Components/landing_screen_components.dart';
import '../Utilities/constants.dart';
import 'Home/home.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final screens = [
    const HomeScreen(),
    const ScheduleScreen(),
    const ServiceScreen(),
    const SupportScreen(),
  ];
  int currentIndex = 0;
  bool _isPersonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const SizedBox(
              width: 22,
            ),
            Image.asset(
              "assets/images/logo_small.png",
              height: 16,
              width: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Symmetry.care',
              style: TextStyle(color: grey1, fontSize: 25),
            ),
            const Spacer(),
            _isPersonClicked
                ? InkWell(
                    onTap: () {
                      setState(() {
                        _isPersonClicked = false;
                      });
                    },
                    child: Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        color: blue1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.person_outline,
                        color: white1,
                        size: 30,
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        _isPersonClicked = true;
                      });
                    },
                    child: Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        color: white1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.person_outline,
                        color: blue1,
                        size: 30,
                      ),
                    ),
                  ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'rating');
              },
              child: Icon(
                Icons.notifications_outlined,
                size: 30,
                color: blue1,
              ),
            ),
            const SizedBox(
              width: 22,
            ),
          ],
        ),
      ),
      body: _isPersonClicked ? const ProfileScreen() : screens[currentIndex],
      bottomNavigationBar: _isPersonClicked
          ? null
          : Container(
              margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(46),
                color: blue1,
              ),
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: currentIndex,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: [
                  customBottomNavigationBarItem(
                      currentIndex: currentIndex,
                      label: 'Home',
                      image: 'home',
                      index: 0),
                  customBottomNavigationBarItem(
                      currentIndex: currentIndex,
                      label: 'Schedule',
                      image: 'schedule',
                      index: 1),
                  customBottomNavigationBarItem(
                      currentIndex: currentIndex,
                      label: 'Service',
                      image: 'service',
                      index: 2),
                  customBottomNavigationBarItem(
                      currentIndex: currentIndex,
                      label: 'Support',
                      image: 'support',
                      index: 3),
                ],
              ),
            ),
    );
  }
}
