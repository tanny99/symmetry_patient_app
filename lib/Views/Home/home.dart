import 'package:flutter/material.dart';
import 'package:patient_side/models/test_data.dart';

import '../../Utilities/Components/home_screen_components.dart';
import '../../Utilities/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Visits',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600, color: grey5),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: blue1),
                  child: Center(
                    child: Text(
                      '50',
                      style: TextStyle(
                          color: white1,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Config(context).width * 0.78,
                    child: const ProgressBar(
                      max: 50,
                      current: 18,
                      barHeight: 20,
                      borderRadius: 35,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        builder: (_) {
                          return Container(
                            height: Config(context).height * 0.4,
                            width: Config(context).width,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28.0, vertical: 14),
                            child: Column(
                              children: [
                                Container(
                                  height: 4,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: white2,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  'Total Visits',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: grey5,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '(50)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: blue1,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: visitProgressBarStatsData.length,
                                    itemBuilder: (ctx, i) {
                                      return visitProgressBarStats(
                                        circleColor:
                                            visitProgressBarStatsData[i]
                                                ['circleColor'],
                                        occupation: visitProgressBarStatsData[i]
                                            ['occupation'],
                                        current: visitProgressBarStatsData[i]
                                            ['current'],
                                        max: visitProgressBarStatsData[i]
                                            ['max'],
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.menu,
                      color: blue1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Today\'s Visits',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600, color: blue1),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: visitData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: InkWell(
                      onTap: () {
                        showSurveyBox(context);
                      },
                      child: VisitCard(
                        name: visitData[index]['name'],
                        image: visitData[index]['image'],
                        occupation: visitData[index]['occupation'],
                        status: visitData[index]['status'],
                        occupationColor: visitData[index]['occupationColor'],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
