import 'package:ehsan/Features/absences/presention/views/widgets/countOfAbsences.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/customCalendar.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class AbsencesBody extends StatelessWidget {
  AbsencesBody({required this.absences, required this.delays});
  final List<DateTime> absences;
  final List<DateTime> delays;
  Color absencesColor = Colors.redAccent;
  Color delayColor = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AppHeader(
          text: "غيابات وتأخيرات",
          widget: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kAppPadding),
                child: Column(
                  children: [
                    CustomCalendar(
                        absences: absences,
                        delays: delays,
                        absencesColor: absencesColor,
                        delayColor: delayColor),
                    SizedBox(
                      height: 2.h,
                    ),
                    CountOfAbsences(
                        absencesColor: absencesColor, delayColor: delayColor),
                  ],
                ),
              ),
              // const Spacer(),
              // const AppBackgroundImage(),
            ],
          ),
        ),
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: const Column(
            children: [
              Spacer(),
              // SizedBox(
              //   height: 0.5.h,
              // ),
              AppBackgroundImage(),
            ],
          ),
        ),
      ],
    ));
  }
}
