import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class DataInProfileItem extends StatelessWidget {
  const DataInProfileItem(
      {super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    TextStyle? style1 = TextStyle(
        fontSize: 10.5.sp, color: Colors.grey, fontWeight: FontWeight.w600);
    TextStyle? style2 = TextStyle(
        fontSize: 13.5.sp,
        color: Colors.black87.withOpacity(0.7),
        fontWeight: FontWeight.w800);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: style1,
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 0.4.w),
          child: _internalData(style2),
        ),
        SizedBox(
          height: 2.3.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 0.4.w),
          child: _line(),
        ),
      ],
    );
  }

  Widget _line() {
    return Container(
      height: 0.1.h,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.7),
    );
  }

  Widget _internalData(TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            content,
            style: style,
          ),
        ),
        Icon(
          Icons.lock,
          color: Colors.grey.withOpacity(0.7),
          size: 18.sp,
        ),
      ],
    );
  }
}
