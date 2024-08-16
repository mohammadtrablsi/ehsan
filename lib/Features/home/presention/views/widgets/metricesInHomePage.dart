import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/home/presention/views/widgets/metricesItemInHomePage.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MetricesInHomePage extends StatelessWidget {
  const MetricesInHomePage({super.key, required this.data});
  final HomeEntity data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 5.w)
                    : EdgeInsets.zero,
                child: MetricesItemInHomePage(
                  data: data,
                  index: index,
                  image: index == 1
                      ? AssetsData.absencesImage
                      : AssetsData.homePersonImage,
                  colorOfAroundImage: index == 1
                      ? const Color.fromARGB(255, 233, 39, 36)
                      : const Color(0xFFE9AE24),
                ),
              )),
    );
  }
}
