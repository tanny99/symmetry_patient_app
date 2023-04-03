import 'package:flutter/material.dart';

import '../constants.dart';

serviceItem({required String imageText, required String label}) {
  return Container(
    margin: const EdgeInsets.all(11),
    child: Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
      child: Container(
        // height: 155,
        // width: 148,
        decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/$imageText.png",
              width: 60,
              height: 53,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: white1),
            ),
          ],
        ),
      ),
    ),
  );
}
