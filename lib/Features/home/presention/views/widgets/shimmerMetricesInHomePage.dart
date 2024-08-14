import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/home/presention/views/widgets/metricesItemInHomePage.dart';
import 'package:ehsan/Features/home/presention/views/widgets/shimmerMetricesItemInHomePage.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerMetricesInHomePage extends StatelessWidget {
  const ShimmerMetricesInHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 5.w)
                    : EdgeInsets.zero,
                child:  const ShimmerMetricesItemInHomePage(),
              )),
    );
  }
}
