import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Utilities/Components/general_componets.dart';
import '../../../Utilities/Components/raise_complaint_screen_component.dart';
import '../../../Utilities/Components/schedule_screen_components.dart';
import '../../../Utilities/constants.dart';
import '../../../models/calender_meeting.dart';

class EventViewScreen extends StatefulWidget {
  const EventViewScreen({Key? key, required this.meeting}) : super(key: key);

  final Meeting meeting;
  @override
  State<EventViewScreen> createState() => _EventViewScreenState();
}

class _EventViewScreenState extends State<EventViewScreen> {
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
          'Schedule',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: white1,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: Config(context).height - 180,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.meeting.eventName,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: blue1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const LabelTitleWidget(
                            label: 'Clinician Name',
                            title: 'Christina Williams',
                          ),
                          Row(
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: blue1),
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
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: blue1),
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
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: blue1),
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
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: blue1,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const LabelTitleWidget(
                        label: 'Visit Type',
                        title: 'Assessment',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const LabelTitleWidget(
                        label: 'Urgency',
                        title: 'NA',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelTitleWidget(
                            label: 'Date',
                            title: DateFormat('dd/MM/yyyy')
                                .format(widget.meeting.from),
                          ),
                          DateTimeButton(
                            label: 'Change Date',
                            onTap: () async {
                              // date = await showDatePicker(
                              //   context: context,
                              //   initialDate: DateTime.now(),
                              //   firstDate: DateTime(1900),
                              //   lastDate: DateTime(2100),
                              // );
                              // setState(() {});
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelTitleWidget(
                            label: 'Time',
                            title:
                                '${TimeOfDay.fromDateTime(widget.meeting.from).format(context)} - ${TimeOfDay.fromDateTime(widget.meeting.to).format(context)}',
                          ),
                          DateTimeButton(
                            label: 'Change Time',
                            onTap: () async {
                              // time = await showTimePicker(
                              //   initialTime: TimeOfDay.now(),
                              //   context: context,
                              // );
                              // setState(() {});
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const LabelTitleWidget(
                        label: 'Diagnosis',
                        title: 'Pneumonia',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const LabelTitleWidget(
                        label: 'Treatment',
                        title: 'Immunotherapy',
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      Text(
                        'Reason of reschedule',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: blue1,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
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
                              color: grey4,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                          fillColor: white1,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 20),
                        ),
                        maxLines: 8,
                        minLines: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomTextButton(
                onTap: () {},
                color: blue1,
                borderRadius: 15,
                child: Text(
                  'Request Reschedule',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white1, fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
