import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../Utilities/Components/general_componets.dart';
import '../../../Utilities/constants.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue1,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: white3,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          'Feedback',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: white1,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                'Rate us',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: blue1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
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
              const SizedBox(
                height: 42,
              ),
              Text(
                'Additional comments',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: blue1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
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
                  hintStyle: TextStyle(
                      color: grey4, fontSize: 12, fontWeight: FontWeight.w400),
                  fillColor: white1,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                ),
                maxLines: 10,
                minLines: 8,
              ),
              const Spacer(
                flex: 10,
              ),
              CustomTextButton(
                onTap: () {},
                color: blue1,
                borderRadius: 15,
                child: Text(
                  'Submit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white1, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
