import 'dart:ui';

import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'listViewExamSchedule.dart';

class ExamScheduleBody extends StatelessWidget {
  const ExamScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: "برنامج الفحص",
        widget: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: const Column(
                children: [
                  Spacer(),
                  // SizedBox(
                  //   height: 0.5.h,
                  // ),
                  Opacity(
                    opacity: 0.6,
                    child: AppBackgroundImage(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3.h),
              child: const ListViewExamSchedule(),
            ),
          ],
        ),
      ),
    );
  }
}
