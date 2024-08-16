import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerInfringementItem extends StatelessWidget {
  const ShimmerInfringementItem({super.key, required this.isLatOrFirstItem});
  final bool isLatOrFirstItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        _cardInfringementItem(),
        SizedBox(
          width: 4.w,
        ),
        _datePart(),
      ],
    );
  }

  Widget _datePart() {
    return Shimmer.fromColors(
          baseColor: kShimmerColor1!,
      highlightColor:kShimmerColor2! ,
      child: Container(
        height: 5.h,
        width: 10.w,
        color: Colors.grey,
      ),
    );
  }

  Widget _cardInfringementItem() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        color: Colors.grey,
        width: 70.w,
        height: 8.h,
      ),
    );
  }
}
