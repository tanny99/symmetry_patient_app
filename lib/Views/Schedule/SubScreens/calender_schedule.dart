import 'package:flutter/material.dart';
import 'package:patient_side/Views/Schedule/SubScreens/event_view.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../Controllers/calender_controllers.dart';
import '../../../Utilities/constants.dart';
import '../../../models/calender_meeting.dart';

class CalenderScheduleScreen extends StatefulWidget {
  const CalenderScheduleScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScheduleScreen> createState() => _CalenderScheduleScreenState();
}

class _CalenderScheduleScreenState extends State<CalenderScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: blue1,
          ),
        ),
        child: SfCalendar(
          view: CalendarView.week,
          cellBorderColor: grey9,
          headerHeight: 0,
          dataSource: MeetingDataSource(getAppointments()),
          showCurrentTimeIndicator: false,
          specialRegions: getTimeRegions(),
          timeSlotViewSettings: const TimeSlotViewSettings(
            timeIntervalHeight: 55,
            startHour: 8,
            endHour: 13,
            timeInterval: Duration(minutes: 30),
            timeFormat: 'h:mm a',
            dayFormat: 'EE',
          ),
          viewHeaderStyle: ViewHeaderStyle(
            dateTextStyle: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: blue1,
            ),
            dayTextStyle: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: blue1,
            ),
          ),
          appointmentBuilder: (context, CalendarAppointmentDetails details) {
            Meeting meeting = details.appointments.first;
            return Container(
              width: details.bounds.width,
              height: details.bounds.height,
              color: meeting.background,
            );
          },
          onTap: (details) {
            if (details.appointments != null) {
              Meeting meeting = details.appointments!.first;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EventViewScreen(
                      meeting: meeting,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
