import 'package:flutter/material.dart';
import 'package:patient_side/Views/Register%20and%20Login/welcome.dart';
import 'package:patient_side/Views/Survey/ratings_and_recommendations.dart';

import 'Utilities/constants.dart';
import 'Views/landing.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Encode Sans',
        scaffoldBackgroundColor: white1,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'welcome': (context) => const WelcomeScreen(),
        'landing': (context) => LandingScreen(),
        'rating': (context) => const RatingRecommendationScreen(),
      },
      initialRoute: 'welcome',
    ),
  );
}
