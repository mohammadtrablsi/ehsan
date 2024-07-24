import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LunchTimeItem extends StatelessWidget {
  const LunchTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
          decoration: BoxDecoration(
              border: Border.all(width: 0.05.h, color: Colors.grey),
              borderRadius: BorderRadius.circular(10.sp)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _nameAndTimeOfClass(),
                  SizedBox(
                    height: 0.5.h,
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 2.5.w),
                child: _image(),
              ),
            ],
          )),
    );
  }

  Widget _nameAndTimeOfClass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "استراحة الغداء",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          "09:00Am - 9:15Am",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 9.5.sp,
              color: Colors.grey),
        ),
      ],
    );
  }

  Widget _image() {
    return Container(
      height: 38,
      width: 39,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.lunchImage), fit: BoxFit.cover)),
    );
  }
}
