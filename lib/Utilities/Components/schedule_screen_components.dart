import 'package:flutter/material.dart';

import '../constants.dart';

class LabelTitleWidget extends StatelessWidget {
  const LabelTitleWidget({
    super.key,
    required this.label,
    required this.title,
  });

  final String label;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: blue1,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black3,
          ),
        ),
      ],
    );
  }
}
