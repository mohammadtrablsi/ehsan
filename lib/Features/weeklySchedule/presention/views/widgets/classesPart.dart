import 'package:ehsan/Features/weeklySchedule/presention/manger/viewWeeklyScheduleCubit.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/classItem.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/lunchTimeItem.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/widgets/shimmerClassesPart.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ClassesPart extends StatefulWidget {
  const ClassesPart({super.key});

  @override
  State<ClassesPart> createState() => _ClassesPartState();
}

class _ClassesPartState extends State<ClassesPart> {
  @override
  Widget build(BuildContext context) {
    final viewWeeklyScheduleCubit = context.read<ViewWeeklyScheduleCubit>();
    return BlocBuilder<ViewWeeklyScheduleCubit, ViewWeeklyScheduleState>(
      builder: (context, state) {
        if (state is ViewWeeklyScheduleSuccess) {
          return Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: viewWeeklyScheduleCubit.anyList(state.entity).length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 1.7.h),
                  child: //index % 2 == 0 && index != 0
                      viewWeeklyScheduleCubit
                                  .anyList(state.entity)[index]
                                  .name ==
                              "استراحة"
                          ? LunchTimeItem(
                              data: viewWeeklyScheduleCubit
                                  .anyList(state.entity)[index],
                            )
                          : ClassItem(
                              numberOfPeriod: index,
                              data: viewWeeklyScheduleCubit
                                  .anyList(state.entity)[index],
                            ),
                );
              },
            ),
          );
        }
        if (state is ViewWeeklyScheduleFailure) {
          return Expanded(child: Image.asset(AssetsData.failedImage));
        } else {
          return const ShimmerClassesPart();
        }
      },
    );
  }
}
