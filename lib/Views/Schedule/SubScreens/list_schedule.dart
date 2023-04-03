import 'package:flutter/material.dart';

import '../../../Utilities/Components/home_screen_components.dart';
import '../../../models/test_data.dart';

class ListScheduleScreen extends StatefulWidget {
  const ListScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ListScheduleScreen> createState() => _ListScheduleScreenState();
}

class _ListScheduleScreenState extends State<ListScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: visitData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: VisitCard(
                name: visitData[index]['name'],
                image: visitData[index]['image'],
                occupation: visitData[index]['occupation'],
                status: visitData[index]['status'],
                occupationColor: visitData[index]['occupationColor'],
              ),
            );
          },
        ),
      ),
    );
  }
}
