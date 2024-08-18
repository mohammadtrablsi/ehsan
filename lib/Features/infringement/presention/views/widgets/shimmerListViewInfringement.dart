import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/Features/Infringement/presention/views/widgets/InfringementItem.dart';
import 'package:ehsan/Features/Infringement/presention/views/widgets/shimmerInfringementItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerListViewInfringement extends StatelessWidget {
  const ShimmerListViewInfringement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.only(top: 3.h),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
            child: ShimmerInfringementItem(
              isLatOrFirstItem: index == 0
                  ? true
                  : index == 20
                      ? true
                      : false,
            ),
          );
        },
      ),
    );
  }
}
