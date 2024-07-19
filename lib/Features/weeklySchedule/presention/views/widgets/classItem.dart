import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClassItem extends StatelessWidget {
  const ClassItem({super.key, required this.numberOfPeriod});
  final int numberOfPeriod;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            border: Border.all(width: 0.05.h, color: Colors.grey),
            borderRadius: BorderRadius.circular(10.sp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _nameAndTimeOfClass(),
            SizedBox(
              height: 2.h,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.6,
              height: 0,
            ),
            SizedBox(
              height: 1.h,
            ),
            _teacherAndPeriondOfClass(numberOfPeriod),
            SizedBox(
              height: 0.5.h,
            ),
          ],
        ));
  }

  Widget _nameAndTimeOfClass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "علوم الحاسب",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          "08:15Am - 9:00Am",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 9.5.sp,
              color: Colors.grey),
        ),
      ],
    );
  }

  Widget _teacherAndPeriondOfClass(int numberOfPeriod) {
    return Row(
      children: [
        Text(
          'الفترة $numberOfPeriod',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
        ),
        const Spacer(),
        Text(
          'فراس ستوت',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.grey),
        ),
      ],
    );
  }
}
