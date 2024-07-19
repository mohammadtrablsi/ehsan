import 'package:ehsan/Features/metrices/presention/views/widgets/subjectsInMetrices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedSubjectsInMetrices extends StatefulWidget {
  const AnimatedSubjectsInMetrices({super.key});

  @override
  State<AnimatedSubjectsInMetrices> createState() =>
      _AnimatedSubjectsInMetricesState();
}

class _AnimatedSubjectsInMetricesState
    extends State<AnimatedSubjectsInMetrices> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5.h),
            child: const Icon(Icons.arrow_right),
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isPressed ? 1 : 0,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isPressed
                ? SizedBox(width: 85.w, child: const SubjectsInMetrices())
                : Container(),
          ),
        ),
      ],
    );
  }
}
