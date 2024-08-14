import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExamScheduleItem extends StatelessWidget {
  const ExamScheduleItem(
      {super.key, required this.isLatOrFirstItem, required this.data});
  final bool isLatOrFirstItem;
  final ExamScheduleEntity data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        _cardExamScheduleItem(),
        SizedBox(
          width: 4.w,
        ),
        _datePart(),
      ],
    );
  }

  Widget _datePart() {
    return Column(
      children: [
        Text(
          "11",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 0.03.h,
        ),
        Text(
          "jan",
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _cardExamScheduleItem() {
    return Container(
      width: 70.w,
      padding: EdgeInsets.all(2.5.w),
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: isLatOrFirstItem ? 0.025.h * 2 : 0.025.h,
            ),
            bottom: BorderSide(
              color: Colors.grey,
              width: isLatOrFirstItem ? 0.025.h * 2 : 0.025.h,
            )),
      ),
      child: Row(
        children: [
          _timePart(),
          const Spacer(),
          _subjectAndDate(),
        ],
      ),
    );
  }

  Widget _subjectAndDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          data.name!,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        Text(
          "الخميس",
          style: TextStyle(
              fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _timePart() {
    return Row(
      children: [
        Text(
          data.time!,
          style: TextStyle(
              fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        SizedBox(
          width: 0.3.w,
        ),
        Icon(Icons.lock_clock, size: 15.sp, color: Colors.grey),
      ],
    );
  }
}
