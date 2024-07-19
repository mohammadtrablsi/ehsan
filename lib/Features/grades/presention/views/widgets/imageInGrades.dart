import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';

class ImageInGrades extends StatelessWidget {
  const ImageInGrades({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          height: 32.h,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              image: DecorationImage(
                  image: AssetImage(AssetsData.backgroundImage2),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 6.h,
          right: 2.w,
          child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_forward_ios_sharp,
                color: kContentColor1,
                size: 20.sp,
              )),
        ),
      ],
    );
  }
}
