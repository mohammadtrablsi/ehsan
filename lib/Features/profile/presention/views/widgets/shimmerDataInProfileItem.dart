import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerDataInProfileItem extends StatelessWidget {
  const ShimmerDataInProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
          baseColor: kShimmerColor1!,
      highlightColor:kShimmerColor2! ,
      child: Container(
        width: double.infinity,
        height: 7.h,
        color: Colors.grey,
      ),
    );
  }
}
