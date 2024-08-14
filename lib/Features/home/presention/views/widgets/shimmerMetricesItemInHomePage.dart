import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerMetricesItemInHomePage extends StatefulWidget {
  const ShimmerMetricesItemInHomePage({
    super.key,
  });

  @override
  State<ShimmerMetricesItemInHomePage> createState() =>
      _MetricesItemInHomePageState();
}

class _MetricesItemInHomePageState
    extends State<ShimmerMetricesItemInHomePage> {
  bool isLoading = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200)).then((_) {
      setState(() {
        isLoading = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 1000),
      opacity: isLoading ? 1 : 0,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 1000),
        scale: 1,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[200]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            height: 25.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(width: 0.2.h, color: kPrimaryColor),
              borderRadius: BorderRadius.circular(10.sp),
            ),
          ),
        ),
      ),
    );
  }
}
