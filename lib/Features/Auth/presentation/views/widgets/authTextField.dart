import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.preIcon,
      this.vaildator,
      required this.obscureText,
      required this.suffixIcon,
      required this.suffixIconOnPressed,
      this.maxLines = 1,
      this.minLines = 1});
  final TextEditingController? controller;
  final String label;
  final preIcon;
  final String? Function(String?)? vaildator;
  final bool obscureText;
  final suffixIcon;
  final void Function()? suffixIconOnPressed;
  final int maxLines;
  final int minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      maxLines: maxLines,
      minLines: minLines,
      controller: controller,
      obscureText: obscureText == null ? false : obscureText!,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400),
        ),
        // hintText: label,
        // prefixIcon: Icon(preIcon), // Replace with your desired icon

        suffixIcon: IconButton(
          icon: Icon(
            suffixIcon,
            color: Colors.grey,
          ),
          onPressed: suffixIconOnPressed,
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide:
        //       const BorderSide(color: kPrimaryColor), // Cursor color
        // ),
      ),
      validator: vaildator,
      cursorColor: kPrimaryColor, // Cursor color
    );
  }
}
