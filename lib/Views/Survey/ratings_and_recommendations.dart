import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:patient_side/Views/Survey/survey.dart';

import '../../Utilities/constants.dart';

class RatingRecommendationScreen extends StatefulWidget {
  const RatingRecommendationScreen({Key? key}) : super(key: key);

  @override
  State<RatingRecommendationScreen> createState() =>
      _RatingRecommendationScreenState();
}

class _RatingRecommendationScreenState
    extends State<RatingRecommendationScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 21),
              Image.asset(
                "assets/images/pro_health.png",
                width: Config(context).width * 0.45,
                height: 48,
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: white1,
                  elevation: 5,
                  child: Column(
                    children: const [
                      RatingCandidates(
                        name: 'Christina',
                        image: 'woman1',
                      ),
                      RatingCandidates(
                        name: 'Joseph',
                        image: 'woman2',
                      ),
                      RatingCandidates(
                        name: 'Albert',
                        image: 'man1',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: white1,
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          'Rate your overall experience with prohealth',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: grey5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 43.0),
                        child: RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.zero,
                          itemSize: 35,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: blue1,
                            size: 10,
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: white1,
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          'Would you recommend pro health to others?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: grey5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: blue1,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 9),
                              child: Text(
                                'Yes',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: white1,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: grey13,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 9),
                              child: Text(
                                'No',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: white1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 26),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 65),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 33),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SurveyScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 43),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: blue1),
                      color: blue1,
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: white1,
                        fontSize: 16,
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
      ),
    );
  }
}

class RatingCandidates extends StatelessWidget {
  const RatingCandidates({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(shape: BoxShape.circle, color: blue1),
              ),
              Container(
                width: 43,
                height: 43,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: white1),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/$image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How did $name Williams do overall?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: grey5,
                ),
              ),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.zero,
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
        ],
      ),
    );
  }
}
