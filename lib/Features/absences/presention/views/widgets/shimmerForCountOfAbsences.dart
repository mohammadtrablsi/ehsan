import 'package:ehsan/Features/absences/presention/views/widgets/countOfAbsencesItem.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/shimmerCountOfAbsencesItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerCountOfAbsences extends StatelessWidget {
  const ShimmerCountOfAbsences(
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          2,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 2.h),
                child: const ShimmerCountOfAbsencesItem(),
              )),
    );
  }
}
