import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardInProfile extends StatelessWidget {
  const CardInProfile({super.key, required this.data});
  final ProfileEntity data;

  @override
  Widget build(BuildContext context) {
    TextStyle? style1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp);
    TextStyle? style2 = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 13.sp);
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
            data.name ?? "",
            style: style1,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Text(
            "الصف ${data.className}  |  الشعبة ${data.classSection}",
            style: style2,
          ),
        ],
      ),
    );
  }
}
