import 'package:flutter/material.dart';

import '../constants.dart';
import 'general_componets.dart';

class DateTimeButton extends StatelessWidget {
  const DateTimeButton({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 83,
        height: 21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: blue1),
          color: white1,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: blue1,
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> showDialogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          height: Config(context).height * 0.31,
          width: Config(context).width * 0.69,
          padding: const EdgeInsets.fromLTRB(30, 25, 30, 21),
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Complaint Submitted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blue1,
                  ),
                ),
                const Spacer(),
                Text(
                  'We are sorry for the inconvenience. Your complaint has been duly noted.',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: black4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Text(
                  'We shall get back to you in 2 working days.',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: black4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                CustomTextButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: blue1,
                  borderRadius: 15,
                  child: Text(
                    'Close',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: white1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

clinicianListItem(e) {
  return Row(
    children: [
      Container(
        width: 20,
        height: 11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: e['occupationHighlightColor'],
        ),
      ),
      const SizedBox(
        width: 7,
      ),
      Text(
        e['occupation'],
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

class RaiseComplaintItem extends StatelessWidget {
  const RaiseComplaintItem({
    super.key,
    required this.image,
    required this.label,
  });

  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      // width: 148,
      margin: const EdgeInsets.symmetric(vertical: 12.5),
      decoration: BoxDecoration(
        color: blue1,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: blue1,
            offset: const Offset(-5, 0),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Image.asset(
              "assets/images/$image.png",
              width: 37,
              height: 33,
            ),
          ),
          Center(
            child: SizedBox(
              width: Config(context).width * 0.34,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: white1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
