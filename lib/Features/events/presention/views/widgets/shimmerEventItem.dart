import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerEventItem extends StatelessWidget {
  const ShimmerEventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
         baseColor: kShimmerColor1!,
      highlightColor:kShimmerColor2! ,
      child: Container(
        height: 18.h,
        width: double.infinity,
        padding: EdgeInsets.all(2.5.w),
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(width: 0.08.h, color: Colors.grey),
            borderRadius: BorderRadius.circular(15.sp)),
      ),
    );
  }
}
