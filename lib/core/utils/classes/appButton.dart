import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.onTap,
      required this.paddingVertical,
      required this.text,
      this.isGradient = false, this.isLoading=false});
  final void Function()? onTap;
  final double paddingVertical;
  final String text;
  final bool isGradient;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.sp),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        decoration: BoxDecoration(
            gradient: isGradient
                ? LinearGradient(
                    colors: [kPrimaryColor, kPrimaryColor.withOpacity(0.75)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : const LinearGradient(
                    colors: [kPrimaryColor, kPrimaryColor],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
            borderRadius: BorderRadius.circular(10.sp),
            color: kPrimaryColor),
        child: Center(
          child: isLoading
              ? SizedBox(
                height: 3.h,width: 6.w,
                child: const CircularProgressIndicator(
                    color: kContentColor1,
                  ),
              )
              : Text(
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
