import 'package:flutter/material.dart';

import '../constants.dart';

customBottomNavigationBarItem(
    {required int currentIndex,
    required String label,
    required String image,
    required int index}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      height: 38,
      width: 78,
      decoration: currentIndex == index
          ? BoxDecoration(
              color: blue5,
              border: Border.all(color: blue1),
              borderRadius: const BorderRadius.all(Radius.circular(46)),
            )
          : null,
      child: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          Image.asset(
            "assets/images/$image.png",
            height: 15,
            width: 15,
            color: white1,
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            label,
            style: TextStyle(
              color: white1,
              fontSize: 10,
            ),
          ),
        ],
      ),
    ),
  );
}
