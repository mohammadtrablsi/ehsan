import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CountOfAbsencesItem extends StatelessWidget {
  const CountOfAbsencesItem(
      {super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(width: 0.3.h, color: color)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            _firstPart(color),
            SizedBox(
              width: 4.w,
            ),
            _textPart(),
            const Spacer(),
            _circlePart(color),
            SizedBox(
              width: 2.5.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget _firstPart(Color color) {
    return Container(
      width: 5.w,
      height: 7.h,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(8.sp),
              bottomStart: Radius.circular(8.sp))),
    );
  }

  Widget _textPart() {
    return Text(
      text,
      style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
    );
  }

  Widget _circlePart(Color color) {
    return Container(
      width: 9.w,
      height: 9.w,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: color.withOpacity(0.3)),
      child: Center(
          child: Text(
        "5",
        style: TextStyle(
            fontSize: 13.sp, fontWeight: FontWeight.bold, color: color),
      )),
    );
  }
}
