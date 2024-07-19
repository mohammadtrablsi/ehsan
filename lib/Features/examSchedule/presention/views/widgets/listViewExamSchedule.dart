import 'package:ehsan/Features/examSchedule/presention/views/widgets/examScheduleItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewExamSchedule extends StatelessWidget {
  const ListViewExamSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsetsDirectional.only(top: 3.h),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ExamScheduleItem(
              isLatOrFirstItem: index == 0
                  ? true
                  : index == 20
                      ? true
                      : false);
        },
      ),
    );
  }
}
