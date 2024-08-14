import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/dataInProfileItem.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/shimmerDataInProfileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerDataInProfilePart extends StatelessWidget {
  const ShimmerDataInProfilePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _horizontalItemsPart(),
        _verticalItemsPart(),
      ],
    );
  }

  Widget _pair() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          2,
          (index) => Expanded(
                  child: Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 3.w)
                    : EdgeInsetsDirectional.only(start: 3.w),
                child: const ShimmerDataInProfileItem(),
              ))),
    );
  }

  Widget _horizontalItemsPart() {
    return Column(
      children: List.generate(
          2,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 4.h),
                child: _pair(),
              )),
    );
  }

  Widget _verticalItemsPart() {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 4.h),
                child: const ShimmerDataInProfileItem(),
              )),
    );
  }
}
