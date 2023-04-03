import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../Utilities/constants.dart';
import '../models/calender_meeting.dart';

List<TimeRegion> getTimeRegions() {
  final List<TimeRegion> regions = <TimeRegion>[];
  DateTime now = DateTime.now();
  regions.add(
    TimeRegion(
      startTime: DateTime(now.year, now.month, now.day, 8),
      endTime: DateTime(now.year, now.month, now.day, 8, 30),
      enablePointerInteraction: false,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      textStyle: const TextStyle(color: Colors.black45, fontSize: 15),
      color: Colors.grey.withOpacity(0.2),
    ),
  );

  regions.add(
    TimeRegion(
      startTime: DateTime(now.year, now.month, now.day, 12),
      endTime: DateTime(now.year, now.month, now.day, 12, 30),
      enablePointerInteraction: false,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      color: Colors.grey.withOpacity(0.2),
    ),
  );

  return regions;
}

List<Meeting> getAppointments() {
  List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(
    Meeting(
      eventName: 'Speech Therapy',
      from: startTime,
      to: endTime,
      isAllDay: false,
      background: green1,
    ),
  );

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }
}
