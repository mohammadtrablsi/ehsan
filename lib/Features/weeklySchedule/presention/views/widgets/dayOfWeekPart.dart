import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DayOfWeekPart extends StatefulWidget {
  const DayOfWeekPart({super.key});

  @override
  State<DayOfWeekPart> createState() => _DayOfWeekPartState();
}

class _DayOfWeekPartState extends State<DayOfWeekPart> {
  int howIsPressed = 4;
  @override
  Widget build(BuildContext context) {
    List<String> days = ['الخميس', 'الاربعاء', 'الثلاثاء', 'الاثنين', 'الاحد'];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.05.h, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: _dayOfWeekCard(days),
    );
  }

  Widget _dayOfWeekCard(List<String> days) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          days.length,
          (index) => InkWell(
              borderRadius: BorderRadius.circular(10.sp),
              onTap: () {
                setState(() {
                  howIsPressed = index;
                });
              },
              child: _dayItem(days[index], index))),
    );
  }

  Widget _dayItem(String text, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.25.w, horizontal: 4.7.w),
      decoration: BoxDecoration(
          color: index != howIsPressed ? Colors.white : kPrimaryColor,
          borderRadius: BorderRadius.circular(10.sp)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
            color: index != howIsPressed ? Colors.black87 : kContentColor1),
      ),
    );
  }
}
