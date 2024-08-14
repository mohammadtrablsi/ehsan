import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesItemInMetricesPage.dart';

import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MetricesInMetricesPage extends StatelessWidget {
  const MetricesInMetricesPage({super.key, required this.data});
  final MetricesEntity data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 5.w)
                    : EdgeInsets.zero,
                child:  MetricesItemInMetricesPage(data:data,index:index),
              )),
    );
  }
}
