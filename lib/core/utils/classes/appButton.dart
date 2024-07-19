import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onTap, required this.paddingVertical, required this.text});
  final void Function()? onTap;
  final double paddingVertical;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.sp),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp), color: kPrimaryColor),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: kContentColor1,
            ),
          ),
        ),
      ),
    );
  }
}
