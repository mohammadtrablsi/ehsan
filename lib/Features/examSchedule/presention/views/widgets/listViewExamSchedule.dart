import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/examScheduleItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewExamSchedule extends StatelessWidget {
  const ListViewExamSchedule({super.key, required this.data});
  final List<ExamScheduleEntity> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(top: 3.h),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ExamScheduleItem(
          isLatOrFirstItem: index == 0
              ? true
              : index == 20
                  ? true
                  : false,
          data: data[index],
        );
      },
    );
  }
}
