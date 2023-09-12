import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:siteweb/shared/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Ajout de cette ligne
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _dateTime = DateTime(_dateTime.year, _dateTime.month - 1);
                  });
                },
                icon: Icon(Icons.chevron_left, color: Appcolors.black),
              ),
              Text(
                "${DateFormat("MMM yyy").format(_dateTime)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _dateTime = DateTime(_dateTime.year, _dateTime.month + 1);
                  });
                },
                icon: Icon(Icons.chevron_right, color: Appcolors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TableCalendar(
            focusedDay: _dateTime,
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            headerVisible: false,
            onFormatChanged: (result) {},
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, locale) {
                return DateFormat("EEE").format(date).toUpperCase();
              },
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                  color: Appcolors.maincolor, shape: BoxShape.circle),
              markerDecoration: BoxDecoration(
                  color: Appcolors.maincolor, shape: BoxShape.circle),
            ),
            onPageChanged: (theDate) {
              _dateTime = theDate;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
