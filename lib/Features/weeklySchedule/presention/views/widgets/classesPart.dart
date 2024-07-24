import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/classItem.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/lunchTimeItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClassesPart extends StatelessWidget {
  const ClassesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(bottom: 1.7.h),
            child: index == 2
                ? const LunchTimeItem()
                : ClassItem(numberOfPeriod: index),
          );
        },
      ),
    );
  }
}
