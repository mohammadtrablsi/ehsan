import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonInEventsDetails extends StatelessWidget {
  const ButtonInEventsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15.sp),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(15.sp)),
        child: Text(
          "تسجيل على الفعالية",
          style: TextStyle(
              color: kContentColor1,
              fontSize: 11.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
