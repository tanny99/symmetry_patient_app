import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_side/Views/Profile/profile.dart';
import 'package:patient_side/Views/Schedule/schedule.dart';
import 'package:patient_side/Views/Service/service.dart';
import 'package:patient_side/Views/Support/support.dart';

import '../Utilities/Components/landing_screen_components.dart';
import '../Utilities/constants.dart';
import '../controller.dart';
import 'Home/home.dart';

class LandingScreen extends StatelessWidget {
  final Controller c = Get.put(Controller());
//   LandingScreen({Key? key}) : super(key: key);

//   @override
//   State<LandingScreen> createState() => _LandingScreenState();
// }

// class _LandingScreenState extends State<LandingScreen> {
  final screens = [
    const HomeScreen(),
    const ScheduleScreen(),
    const ServiceScreen(),
    const SupportScreen(),
  ];

  LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(

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
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Symmetry.care',
                style: TextStyle(color: grey1, fontSize: 20),
              ),
              const Spacer(),
              c.isPersonClicked.value
                  ? InkWell(
                      onTap: () {
                        c.makeFalse();
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
                        c.makeTrue();
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

        body: c.isPersonClicked.value
            ? const ProfileScreen()
            : screens[c.currentIndex.value],
        bottomNavigationBar: c.isPersonClicked.value
            ? null
            : NavigationBarTheme(
          data: NavigationBarThemeData (

            indicatorColor: Color(0xff2AA9C2)) ,
              child: BottomAppBar(


                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Card(
                        color: blue1,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NavigationBar(
                            labelBehavior:
                                NavigationDestinationLabelBehavior.alwaysHide,
                            height: 49,
                            backgroundColor: blue1,
                            elevation: 0,
                            selectedIndex: c.currentIndex.value,
                            onDestinationSelected: (index) {
                              c.setIndex(index);
                            },
                            destinations: [
                              customBottomNavigationBarItem(
                                  label: 'Home',
                                  icondata:
                                      const AssetImage("assets/images/home.png"),
                                  currentIndex: c.currentIndex.value,
                                  index: 0),
                              customBottomNavigationBarItem(
                                  label: 'Schedule',
                                  icondata: const AssetImage(
                                      "assets/images/schedule.png"),
                                  currentIndex: c.currentIndex.value,
                                  index: 1),
                              customBottomNavigationBarItem(
                                  label: 'Service',
                                  icondata:
                                      const AssetImage("assets/images/service.png"),
                                  currentIndex: c.currentIndex.value,
                                  index: 2),
                              customBottomNavigationBarItem(
                                label: 'Support',
                                icondata:
                                    const AssetImage("assets/images/support.png"),
                                currentIndex: c.currentIndex.value,
                                index: 3,
                              ),
                            ],
                          ),
                        ))),
              ),
            )));
  }
}
