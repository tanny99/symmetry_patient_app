import 'package:flutter/material.dart';
import 'package:patient_side/models/test_data.dart';

import '../../Utilities/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 102,
                      width: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/woman3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Center(
                      child: Text(
                        'Lera Joseph',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: blue1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: blue1,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                size: 20,
                                color: blue1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'F, 27',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: blue9),
                ),
                const SizedBox(
                  height: 19,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: blue1),
                ),
                Text(
                  '(408) 638-0374',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: black3),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: blue1),
                ),
                Text(
                  '8502 Preston Rd. Inglewood, Los Angeles, California- 873268',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: black3),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Treatment',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: blue1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(treatments.length, (index) {
                    return Text(
                      '  \u2022  ${treatments[index]}',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: black3),
                    );
                  }),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: white4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blue1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: blue1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: blue1,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                size: 20,
                                color: blue1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(notes.length, (index) {
                    return Text(
                      '  \u2022  ${notes[index]}',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: black3),
                    );
                  }),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: white4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Insurance',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: blue1),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Primary',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: blue1),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Medicare- ',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: black3),
                                ),
                                TextSpan(
                                  text: 'JOC1865',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: black3),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Secondary',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: blue1),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Blue Cross- ',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: black3),
                                ),
                                TextSpan(
                                  text: 'DC7617345P',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: black3),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: white4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: white1),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/man1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Primary Care Physician',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blue1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: blue1),
                            ),
                            Text(
                              'Clarke Allen',
                              style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: black3),
                            ),
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: blue1),
                          child: Icon(
                            Icons.call_outlined,
                            size: 20,
                            color: white1,
                          ),
                        ),
                      ],
                    ),
                    tilePadding: EdgeInsets.zero,
                    iconColor: blue1,
                    collapsedIconColor: blue1,
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    childrenPadding: EdgeInsets.zero,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Text(
                        '(408) 638-0374',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black3),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Text(
                        '8502 Preston Rd. Inglewood, Los Angeles, California- 873268',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black3),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Orders',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: blue1),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: blue1),
                                color: white1,
                              ),
                              child: Center(
                                child: Text(
                                  'View',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: blue1,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(orders.length, (index) {
                          return Text(
                            '  \u2022  ${orders[index]}',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black3),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: white4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Emergency Contact',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blue1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: blue1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: blue1,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                size: 20,
                                color: blue1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blue1),
                        ),
                        Text(
                          'Michael Clarke',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: black3),
                        ),
                      ],
                    ),
                    tilePadding: EdgeInsets.zero,
                    iconColor: blue1,
                    collapsedIconColor: blue1,
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    childrenPadding: EdgeInsets.zero,
                    children: [
                      Text(
                        'Relation',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Text(
                        'Brother',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black3),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Text(
                        '(408) 638-0374',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black3),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Text(
                        '8502 Preston Rd. Inglewood, Los Angeles, California- 873268',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black3),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Contact Notes',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blue1),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(orders.length, (index) {
                          return Text(
                            '  \u2022  ${orders[index]}',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black3),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
