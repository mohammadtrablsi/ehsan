import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/shimmerMetricesItemInMetricesPage.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShimmerMetricesInMetricesPage extends StatelessWidget {
  const ShimmerMetricesInMetricesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 5.w)
                    : EdgeInsets.zero,
                child:  const ShimmerMetricesItemInMetricesPage(),
              )),
    );
  }
}
