import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/classesPart.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/dayOfWeekPart.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WeeklyScheduleBody extends StatelessWidget {
  const WeeklyScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
          text: "برنامج الاسبوع",
          widget: Padding(
            padding: EdgeInsets.symmetric(horizontal: kAppPadding),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                const DayOfWeekPart(),
                SizedBox(
                  height: 2.h,
                ),
                const ClassesPart(),
              ],
            ),
          )),
    );
  }
}
