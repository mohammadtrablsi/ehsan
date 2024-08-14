import 'package:ehsan/Features/weeklySchedule/presention/manger/viewWeeklyScheduleCubit.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class DayOfWeekPart extends StatefulWidget {
  const DayOfWeekPart({super.key});

  @override
  State<DayOfWeekPart> createState() => _DayOfWeekPartState();
}

class _DayOfWeekPartState extends State<DayOfWeekPart> {
  @override
  Widget build(BuildContext context) {
    final ViewWeeklyScheduleCubit viewWeeklyScheduleCubit =
        context.read<ViewWeeklyScheduleCubit>();
    List<String> days = ['الخميس', 'الاربعاء', 'الثلاثاء', 'الاثنين', 'الاحد'];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.05.h, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: _dayOfWeekCard(days, viewWeeklyScheduleCubit),
    );
  }

  Widget _dayOfWeekCard(
      List<String> days, ViewWeeklyScheduleCubit viewWeeklyScheduleCubit) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          days.length,
          (index) =>
              BlocBuilder<ViewWeeklyScheduleCubit, ViewWeeklyScheduleState>(
                  builder: (context, state) {
                if (state is ViewWeeklyScheduleSuccess) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(10.sp),
                    onTap: () {
                      viewWeeklyScheduleCubit.setHowIsPressed(
                          index, state.entity);
                    },
                    child:
                        _dayItem(days[index], index, viewWeeklyScheduleCubit),
                  );
                } else {
                  return const SizedBox();
                }
              })),
    );
  }

  Widget _dayItem(
      String text, int index, ViewWeeklyScheduleCubit viewWeeklyScheduleCubit) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.25.w, horizontal: 4.7.w),
      decoration: BoxDecoration(
          color: index != viewWeeklyScheduleCubit.howIsPressed
              ? Colors.white
              : kPrimaryColor,
          borderRadius: BorderRadius.circular(10.sp)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
            color: index != viewWeeklyScheduleCubit.howIsPressed
                ? Colors.black87
                : kContentColor1),
      ),
    );
  }
}
