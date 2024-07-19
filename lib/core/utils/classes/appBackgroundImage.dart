import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppBackgroundImage extends StatelessWidget {
  const AppBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 16.h,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.backgroundImage),
              fit: BoxFit.cover)),
    );
  }
}
