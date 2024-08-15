import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/functions/getJustFirstNumberAfterCama.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PercentInGrades extends StatelessWidget {
  const PercentInGrades({super.key, required this.data});

  final GradesEntity data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34.w,
      height: 17.h,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff537cb2), width: 2.w),
          shape: BoxShape.circle,
          color: const Color(0xffababac)),
      child: Center(
        child: Container(
          width: 24.w,
          height: 12.h,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffc4d1ec)),
          child: Center(child: _textIn()),
        ),
      ),
    );
  }

  Widget _textIn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${getJustFirstNumberAfterCama(data.fullAverage!).toString()}%",
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w900),
        ),
        Container(
          transform: Matrix4.translationValues(0, -1.h, 0.0),
          child: Text(
            "المعدل",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}
