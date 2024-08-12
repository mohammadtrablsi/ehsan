import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/classes/appButton.dart';
import 'package:ehsan/core/utils/functions/formateDate.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerFileItem extends StatelessWidget {
  const ShimmerFileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 22.h,
        padding: EdgeInsets.all(2.5.w),
        decoration: BoxDecoration(
            color: Colors.grey,
            // border: Border.all(width: 0.05.h, color: Colors.grey),
            borderRadius: BorderRadius.circular(10.sp)),
      ),
    );
  }
}
