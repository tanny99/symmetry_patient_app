import 'package:flutter/material.dart';
import 'package:patient_side/Utilities/constants.dart';

customBottomNavigationBarItem({
  required int currentIndex,
  required int index,
  required String label,
  required AssetImage icondata,
}) {
  return NavigationDestination(
    label: label,
    icon: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: ImageIcon(
            icondata,
            color: white1,
            size: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(color: white1),
        )
      ],
    ),
  );
}
