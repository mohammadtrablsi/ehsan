import 'package:ehsan/Features/absences/presention/views/widgets/countOfAbsencesItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CountOfAbsences extends StatelessWidget {
  const CountOfAbsences(
      {super.key, required this.absencesColor, required this.delayColor});
  final Color absencesColor;
  final Color delayColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          2,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 2.h),
                child: CountOfAbsencesItem(
                  text: index == 0 ? "غيابات" : "تأخيرات",
                  color: index == 0 ? absencesColor : delayColor,
                ),
              )),
    );
  }
}
