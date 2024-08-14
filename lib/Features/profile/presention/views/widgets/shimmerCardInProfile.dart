import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerCardInProfile extends StatelessWidget {
  const ShimmerCardInProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 15.h,
        padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 3.w),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.sp),
            border: Border.all(width: 0.25.h, color: kPrimaryColor)),
      ),
    );
  }
}
