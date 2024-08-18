import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/examScheduleItem.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/shimmerExamScheduleItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerListViewExamSchedule extends StatelessWidget {
  const ShimmerListViewExamSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(top: 3.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
          child: ShimmerExamScheduleItem(
            isLatOrFirstItem: index == 0
                ? true
                : index == 20
                    ? true
                    : false,
          ),
        );
      },
    );
  }
}
