import 'package:flutter/material.dart';

import '../constants.dart';

contactOption({required String icon, required String label}) {
  return Container(
    width: 71,
    height: 20,
    decoration: BoxDecoration(
      color: white1,
      border: Border.all(color: blue1),
      borderRadius: BorderRadius.circular(4),
    ),
    // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/$icon.png",
          width: 14,
          height: 11,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: blue1,
          ),
        ),
      ],
    ),
  );
}

class OtherSupportItem extends StatelessWidget {
  const OtherSupportItem({
    super.key,
    required this.icon,
    required this.label,
    required this.trailing,
    this.underWidget,
  });

  final String icon;
  final String label;
  final Widget trailing;
  final Widget? underWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config(context).width,
      padding: const EdgeInsets.only(left: 22, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 41,
                    height: 39.6,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: blue1),
                  ),
                  Image.asset(
                    "assets/images/$icon.png",
                    width: 33,
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: Config(context).width * 0.35,
                child: Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: black2,
                  ),
                ),
              ),
              const Spacer(),
              trailing,
            ],
          ),
          underWidget ?? Container(),
        ],
      ),
    );
  }
}

class PrimaryCarePhysicianCard extends StatelessWidget {
  const PrimaryCarePhysicianCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config(context).width,
      // height: 65,
      decoration: BoxDecoration(
        // color: white3,
        border: Border.all(
          color: grey9,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(22, 12, 10, 12),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 41,
                height: 39.6,
                decoration: BoxDecoration(shape: BoxShape.circle, color: blue1),
              ),
              Container(
                width: 37.65,
                height: 36.36,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: white1),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/man1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: black2,
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: blue1,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/call2.png",
                  width: 14,
                  height: 11,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Call Office',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: white3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClinicianCard extends StatelessWidget {
  const ClinicianCard({
    super.key,
    required this.name,
    required this.occupation,
    required this.occupationHighlightColor,
    required this.image,
  });

  final String name;
  final String occupation;
  final Color occupationHighlightColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Config(context).width,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 41,
                    height: 39.6,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: blue1),
                  ),
                  Container(
                    width: 37.65,
                    height: 36.36,
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
                    name,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: black2,
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 15,
                    decoration: BoxDecoration(
                      color: occupationHighlightColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        occupation,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: white1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: blue1),
                    child: Icon(
                      Icons.call_outlined,
                      size: 14,
                      color: white1,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: blue1),
                    child: Icon(
                      Icons.messenger_outline_outlined,
                      size: 14,
                      color: white1,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: blue1),
                    child: Icon(
                      Icons.video_call_outlined,
                      size: 14,
                      color: white1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 0.5,
          color: grey8,
        ),
      ],
    );
  }
}
