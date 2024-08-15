import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesItemInMetricesPage.dart';

import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MetricesInMetricesPage extends StatelessWidget {
  const MetricesInMetricesPage({super.key, this.data, this.dataForSubject,required this.forSubject});
  final MetricesEntity? data;
  final MetricesForSubjectEntity? dataForSubject;
  final bool forSubject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 5.w)
                    : EdgeInsets.zero,
                child: MetricesItemInMetricesPage(forSubject: forSubject,dataForSubject:dataForSubject,data: data, index: index),
              )),
    );
  }
}
