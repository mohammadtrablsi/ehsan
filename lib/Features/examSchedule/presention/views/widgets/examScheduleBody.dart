import 'dart:ui';

import 'package:ehsan/Features/examSchedule/presention/manger/viewExamScheduleCubit.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/shimmerListViewExamSchedule.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            BlocBuilder<ViewExamScheduleCubit, ViewExamScheduleState>(
              builder: (context, state) {
                if (state is ViewExamScheduleSuccess) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 3.h),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: kAppPadding),
                        child: ListViewExamSchedule(data: state.entity)),
                  );
                } else {
                  return const ShimmerListViewExamSchedule();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
