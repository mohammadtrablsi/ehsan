import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerDayOfWeekPart extends StatelessWidget {
  const ShimmerDayOfWeekPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
          baseColor: kShimmerColor1!,
      highlightColor:kShimmerColor2! ,
      child: Container(
        width: double.infinity,
        height: 4.h,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width: 0.05.h, color: Colors.grey),
          borderRadius: BorderRadius.circular(10.sp),
        ),
      ),
    );
  }
}
