import 'package:flutter/material.dart';
import 'package:patient_side/Views/Schedule/SubScreens/calender_schedule.dart';
import 'package:patient_side/Views/Schedule/SubScreens/list_schedule.dart';

import '../../Utilities/constants.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: Config(context).width * 0.45,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(
                            color: grey11,
                          ),
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: blue1,
                          ),
                          labelColor: white1,
                          labelStyle: const TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          unselectedLabelColor: grey12,
                          unselectedLabelStyle: const TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          tabs: const [
                            Tab(
                              text: 'Calender',
                            ),
                            Tab(
                              text: 'List',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            CalenderScheduleScreen(),
                            ListScheduleScreen(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
