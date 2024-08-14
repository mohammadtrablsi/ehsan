import 'package:ehsan/Features/weeklySchedule/presention/manger/viewWeeklyScheduleCubit.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/classesPart.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/dayOfWeekPart.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/shimmerDayOfWeekPart.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class WeeklyScheduleBody extends StatelessWidget {
  const WeeklyScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
          text: "برنامج الاسبوع",
          widget: Padding(
            padding: EdgeInsets.symmetric(horizontal: kAppPadding),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                BlocBuilder<ViewWeeklyScheduleCubit, ViewWeeklyScheduleState>(
                  builder: (context, state) {
                    if (state is ViewWeeklyScheduleSuccess) {
                      return const DayOfWeekPart();
                    }else{
                      return const ShimmerDayOfWeekPart();
                    }
                  },
                ),
                SizedBox(
                  height: 2.h,
                ),
                const ClassesPart(),
              ],
            ),
          )),
    );
  }
}
