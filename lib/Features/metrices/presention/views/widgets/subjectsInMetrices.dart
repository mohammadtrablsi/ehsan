import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SubjectsInMetrices extends StatefulWidget {
  const SubjectsInMetrices({super.key});

  @override
  State<SubjectsInMetrices> createState() => _SubjectsInMetricesState();
}

class _SubjectsInMetricesState extends State<SubjectsInMetrices> {
  int whoIsPressed = 0;
  @override
  Widget build(BuildContext context) {
    List<String> subjects = [
      'all',
      'math',
      'english',
      'arabic',
      'frensh',
      'science',
    ];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.05.h, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: _subjectCard(subjects),
    );
  }

  Widget _subjectCard(List<String> subjects) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            subjects.length,
            (index) => InkWell(
                borderRadius: BorderRadius.circular(10.sp),
                onTap: () {
                  setState(() {
                    whoIsPressed = index;
                  });
                },
                child: _subjectItem(subjects[index], index))),
      ),
    );
  }

  Widget _subjectItem(String text, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.25.w, horizontal: 4.5.w),
      decoration: BoxDecoration(
          color: index != whoIsPressed ? Colors.white : kPrimaryColor,
          borderRadius: BorderRadius.circular(10.sp)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
            color: index != whoIsPressed ? Colors.black87 : kContentColor1),
      ),
    );
  }
}
