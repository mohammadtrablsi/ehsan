import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardInProfile extends StatelessWidget {
  const CardInProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? style1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp);
    TextStyle? style2 = TextStyle(color: Colors.grey, fontSize: 12.sp);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 3.w),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(width: 0.25.h, color: kPrimaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Akshay Syal",
            style: style1,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Text(
            "Class XI-B  |  Roll no: 04",
            style: style2,
          ),
        ],
      ),
    );
  }
}
