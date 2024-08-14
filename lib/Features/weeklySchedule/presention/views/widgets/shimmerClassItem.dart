import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerClassItem extends StatelessWidget {
  const ShimmerClassItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        height: 15.h,
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(width: 0.05.h, color: Colors.grey),
            borderRadius: BorderRadius.circular(10.sp)),
      ),
    );
  }
}
