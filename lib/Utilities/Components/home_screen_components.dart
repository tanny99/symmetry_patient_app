import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';
import 'general_componets.dart';

Future<void> showSurveyBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          height: Config(context).height * 0.25,
          width: Config(context).width * 0.89,
          padding: const EdgeInsets.fromLTRB(55, 15, 50, 30),
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Material(
            color: white1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.support_agent,
                  color: blue1,
                  size: 33,
                ),
                const SizedBox(height: 15),
                Text(
                  'How did we do ?',
                  style: TextStyle(
                    fontSize: 18,
                    color: grey5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 7),
                Text(
                  'Kindly take a survey and let us know',
                  style: TextStyle(
                    fontSize: 12,
                    color: grey5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                CustomTextButton(
                  onTap: () {
                    Navigator.pop(context);
                    showIndividualSurveyBox(context);
                  },
                  color: blue1,
                  borderRadius: 7,
                  child: Text(
                    'Proceed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: white1,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
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

Future<void> showIndividualSurveyBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          height: Config(context).height * 0.48,
          width: Config(context).width * 0.89,
          padding: const EdgeInsets.fromLTRB(35, 15, 35, 30),
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Material(
            color: white1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.support_agent,
                  color: blue1,
                  size: 33,
                ),
                const SizedBox(height: 15),
                Text(
                  'How did Christina Williams perform?',
                  style: TextStyle(
                    fontSize: 18,
                    color: grey5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  child: RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.zero,
                    itemSize: 24,
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
                const SizedBox(height: 20),
                Text(
                  'Please let us know how we can improve',
                  style: TextStyle(
                    fontSize: 14,
                    color: grey5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide(
                        color: grey10,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide(
                        color: grey10,
                      ),
                    ),
                    filled: true,
                    hintText: 'Write here',
                    hintStyle: TextStyle(
                        color: grey4,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                    fillColor: white1,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 20),
                  ),
                  maxLines: 4,
                  minLines: 3,
                ),
                const SizedBox(height: 20),
                CustomTextButton(
                  onTap: () {
                    Navigator.of(context)
                        .popUntil(ModalRoute.withName('landing'));
                  },
                  color: blue1,
                  borderRadius: 7,
                  child: Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: white1,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
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

class VisitCard extends StatelessWidget {
  const VisitCard({
    super.key,
    required this.name,
    required this.image,
    required this.occupation,
    required this.status,
    required this.occupationColor,
  });

  final String name;
  final String image;
  final String occupation;
  final String status;
  final Color occupationColor;

  communicationItem({required String label, required String imageText}) {
    return Container(
      width: 78,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: blue1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$imageText.png",
            width: 11,
            height: 11,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: blue1,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
        child: Stack(
          // alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              // alignment: Alignment.topCenter,
              height: 130,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [blue1, occupationColor],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              // top: 0,
              left: 5,
              // bottom: 0,
              child: Container(
                // alignment: Alignment.topCenter,
                width: Config(context).width - 85,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  // border: Border.all(color: white1),
                  color: white1,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 25, 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                height: 78,
                                width: 79,
                                decoration: BoxDecoration(
                                  color: blue1,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Container(
                                height: 74,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: white1,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(
                                    "assets/images/$image.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 11,
                            height: 78,
                          ),
                          SizedBox(
                            height: 78,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: black1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Critical Care',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: grey7,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '9:00 AM - 11:00 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: black1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  status,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: status.toLowerCase() == 'completed'
                                        ? green2
                                        : status.toLowerCase() == 'on their way'
                                            ? yellow1
                                            : blue6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Row(
                        children: [
                          communicationItem(label: 'Call', imageText: 'call1'),
                          const Spacer(),
                          communicationItem(
                              label: 'Video', imageText: 'video_call'),
                          const Spacer(),
                          communicationItem(
                              label: 'Message', imageText: 'message'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              child: SizedBox(
                height: 130,
                child: Center(
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      occupation,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: white1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double max;
  final double current;
  final double barHeight;
  final double borderRadius;
  final bool showDigits;

  const ProgressBar({
    Key? key,
    required this.max,
    required this.current,
    required this.barHeight,
    required this.borderRadius,
    this.showDigits = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              width: x,
              height: barHeight,
              decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: barHeight,
                width: x - percent,
                child: showDigits
                    ? Center(
                        child: Text(
                          '32',
                          style: TextStyle(
                              fontSize: 12,
                              color: grey6,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    : null,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: barHeight,
              decoration: BoxDecoration(
                color: blue1,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: showDigits
                  ? Center(
                      child: Text(
                        '18',
                        style: TextStyle(
                            fontSize: 12,
                            color: white1,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  : null,
            ),
          ],
        );
      },
    );
  }
}

visitProgressBarStats(
    {required Color circleColor,
    required String occupation,
    required String current,
    required String max}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 18.0),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: circleColor),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              occupation,
              style: TextStyle(
                fontSize: 12,
                color: grey6,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Text(
              '$current/$max',
              style: TextStyle(
                fontSize: 12,
                color: grey6,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ProgressBar(
          max: double.parse(max),
          current: double.parse(current),
          barHeight: 9,
          borderRadius: 49,
          showDigits: false,
        ),
      ],
    ),
  );
}
