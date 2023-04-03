import 'package:flutter/material.dart';
import 'package:patient_side/Utilities/constants.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

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
            const SizedBox(width: 22),
            Text(
              'Survey',
              style: TextStyle(
                  color: grey5, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Image.asset(
              "assets/images/pro_health.png",
              width: Config(context).width * 0.45,
              height: 48,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Image.asset(
                "assets/images/survey_vector.png",
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName('landing'));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: blue1),
                    color: blue1,
                  ),
                  child: Text(
                    'Submit Survey',
                    style: TextStyle(
                      color: white1,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
