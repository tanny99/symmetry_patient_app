import 'package:flutter/material.dart';
import 'package:patient_side/Views/Support/SubScreens/complain_against_clinician.dart';

import '../../../Utilities/Components/raise_complaint_screen_component.dart';
import '../../../Utilities/constants.dart';
import 'complain_against_pro_health_screen.dart';

class RaiseComplaintScreen extends StatefulWidget {
  const RaiseComplaintScreen({Key? key}) : super(key: key);

  @override
  State<RaiseComplaintScreen> createState() => _RaiseComplaintScreenState();
}

class _RaiseComplaintScreenState extends State<RaiseComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue1,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: white3,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          'Raise Complaint',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: white1,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ComplainAgainstProHealthScreen();
                      },
                    ),
                  );
                },
                child: const RaiseComplaintItem(
                  image: 'ecg_heart',
                  label: 'Complain Against Pro Health',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ComplainAgainstClinicianScreen();
                      },
                    ),
                  );
                },
                child: const RaiseComplaintItem(
                  image: 'stethoscope',
                  label: 'Complain Against Clinician',
                ),
              ),
              InkWell(
                onTap: () {},
                child: const RaiseComplaintItem(
                  image: 'gpp_bad',
                  label: 'General Complaint',
                ),
              ),
              const Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
