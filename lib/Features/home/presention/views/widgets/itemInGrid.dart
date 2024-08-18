import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class ItemInGrid extends StatelessWidget {
  const ItemInGrid(
      {super.key,
      required this.image,
      required this.text,
      required this.index});
  final image;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: const Color(0xFFF5F6FC)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _image(),
          SizedBox(
            height: 3.h,
          ),
          _text(),
        ],
      ),
    );
  }

  Widget _image() {
    return index != 5 && index != 8 && index != 6 && index != 9
        ? Container(
            height: 4.h,
            width: 8.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fitHeight)),
          )
        : FaIcon(
            image,
            size: 26.sp,
            color: kPrimaryColor,
          );
  }

  Widget _text() {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
    );
  }
}
