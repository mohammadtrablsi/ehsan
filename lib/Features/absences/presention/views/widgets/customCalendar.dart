import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  final List<DateTime> absences;
  final List<DateTime> delays;
  final Color absencesColor;
  final Color delayColor;

  CustomCalendar({
    required this.absences,
    required this.delays,
    required this.absencesColor,
    required this.delayColor,
  });

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  bool isAnimated = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      setState(() {
        isAnimated = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _focusedDay = focusedDay;
          });
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        calendarBuilders: CalendarBuilders(
          todayBuilder: (context, day, focusedDay) {
            return Center(
              child: Text(
                '${day.day}',
                style: const TextStyle(color: Colors.black),
              ),
            );
          },
          markerBuilder: (context, day, events) {
            if (widget.absences.contains(day)) {
              return _buildAnimatedMarker(day, widget.absencesColor);
            } else if (widget.delays.contains(day)) {
              return _buildAnimatedMarker(day, widget.delayColor);
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }

  Widget _buildAnimatedMarker(DateTime day, Color color) {
    return Center(
      child: AnimatedOpacity(
        opacity: isAnimated ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 600),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: color,
          ),
          width: 10.w,
          height: 10.w,
          child: Center(
            child: Text(
              '${day.day}',
              style:
                  TextStyle(color: isAnimated ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMarker(DateTime day, Color color) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: color,
        ),
        width: 10.w,
        height: 10.w,
        child: Center(
          child: Text(
            '${day.day}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
