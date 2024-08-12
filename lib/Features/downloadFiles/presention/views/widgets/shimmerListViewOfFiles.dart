import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/fileItem.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/shimmerFileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerListViewOfFiles extends StatelessWidget {
  const ShimmerListViewOfFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
          child: const ShimmerFileItem(),
        );
      },
    ));
  }
}
