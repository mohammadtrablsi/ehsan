import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class ItemInGrid extends StatelessWidget {
  const ItemInGrid({super.key, required this.image, required this.text});
  final String image;
  final String text;

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
    return Container(
      height: 4.h,
      width: 8.w,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.fitHeight)),
    );
  }

  Widget _text() {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
    );
  }
}
