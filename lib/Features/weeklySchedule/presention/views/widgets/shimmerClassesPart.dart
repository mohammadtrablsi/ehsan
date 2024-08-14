import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/shimmerClassItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerClassesPart extends StatelessWidget {
  const ShimmerClassesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(bottom: 1.7.h),
            child: const ShimmerClassItem(),
          );
        },
      ),
    );
  }
}
