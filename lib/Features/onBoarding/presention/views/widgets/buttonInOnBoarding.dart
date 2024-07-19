import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonInOnBoarding extends StatelessWidget {
  const ButtonInOnBoarding(
      {super.key,
      required this.onPressed,
      required this.isChildText,
      required this.text,
      required this.paddingVertical,
      required this.paddingHorizontal,
      this.widthOfButton,
      this.icon,
      required this.isButtonBig});
  final void Function()? onPressed;
  final bool isChildText;
  final bool isButtonBig;
  final String text;
  final double paddingVertical;
  final double paddingHorizontal;
  final double? widthOfButton;
  final icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5.0,
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical, horizontal: paddingHorizontal),
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: onPressed,
      child: isChildText
          ? isButtonBig
              ? SizedBox(
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    text,
                    style: TextStyle(fontSize: 13.sp, color: kContentColor1),
                  )))
              : Text(
                  text,
                  style: TextStyle(fontSize: 13.sp, color: kContentColor1),
                )
          : Row(
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 13.sp, color: kContentColor1),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Icon(
                  icon,
                  color: kContentColor1,
                )
              ],
            ),
    );
  }
}
