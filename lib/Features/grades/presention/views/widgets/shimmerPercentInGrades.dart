import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/functions/getJustFirstNumberAfterCama.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerPercentInGrades extends StatelessWidget {
  const ShimmerPercentInGrades({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
          baseColor: kShimmerColor1!,
      highlightColor:kShimmerColor2 !,
      child: Container(
        width: 34.w,
        height: 17.h,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff537cb2), width: 2.w),
            shape: BoxShape.circle,
            color: const Color(0xffababac)),
      ),
    );
  }
}
