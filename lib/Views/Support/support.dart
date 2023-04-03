import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:patient_side/Views/Support/SubScreens/feedback_screen.dart';
import 'package:patient_side/Views/Support/SubScreens/raise_complaint_screen.dart';
import 'package:patient_side/Views/Support/SubScreens/urgent_visit.dart';
import 'package:patient_side/models/test_data.dart';

import '../../Utilities/Components/support_screen_components.dart';
import '../../Utilities/constants.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Config(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                  ),
                  child: Text(
                    'Clinicians',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: blue1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: Config(context).height * 0.23,
                  child: ListView.builder(
                    itemCount: clinicians.length,
                    itemBuilder: (_, i) {
                      return ClinicianCard(
                          name: clinicians[i]['name'],
                          occupation: clinicians[i]['occupation'],
                          occupationHighlightColor: clinicians[i]
                              ['occupationHighlightColor'],
                          image: clinicians[i]['image']);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    'Primary Care Physician',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: blue1),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const PrimaryCarePhysicianCard(
                  name: 'Allen, Clarke',
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    'Other Support',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: blue1),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                OtherSupportItem(
                  icon: 'feedback',
                  label: 'Feedback',
                  trailing: Column(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemSize: 20,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: blue1,
                          size: 10,
                        ),
                        onRatingUpdate: (rating) {
                          // print(rating);
                        },
                      ),
                    ],
                  ),
                  underWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      contactOption(icon: 'call1', label: 'Call'),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const FeedbackScreen();
                              },
                            ),
                          );
                        },
                        child: contactOption(icon: 'write', label: 'Write'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 0.5,
                  color: grey8,
                ),
                const SizedBox(
                  height: 15,
                ),
                OtherSupportItem(
                  icon: 'raise_complaint',
                  label: 'Raise Complaint',
                  trailing: Row(
                    children: [
                      contactOption(icon: 'call1', label: 'Call'),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const RaiseComplaintScreen();
                              },
                            ),
                          );
                        },
                        child: contactOption(icon: 'write', label: 'Write'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 0.5,
                  color: grey8,
                ),
                const SizedBox(
                  height: 15,
                ),
                OtherSupportItem(
                  icon: 'request_urgent_visit',
                  label: 'Request Urgent Visit',
                  trailing: Row(
                    children: [
                      contactOption(icon: 'call1', label: 'Call'),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const UrgentVisitScreen();
                              },
                            ),
                          );
                        },
                        child: contactOption(icon: 'proceed', label: 'Proceed'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
