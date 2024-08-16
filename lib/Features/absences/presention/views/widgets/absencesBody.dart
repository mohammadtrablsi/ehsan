import 'package:ehsan/Features/absences/presention/manger/viewAbsencesCubit.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/countOfAbsences.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/customCalendar.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/shimmerForCountOfAbsences.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:ehsan/core/utils/functions/formateDateForCalender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class AbsencesBody extends StatelessWidget {
  Color absencesColor = Colors.redAccent;
  Color delayColor = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AppHeader(
          text: "غيابات وتأخيرات",
          widget: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kAppPadding),
                child: Column(
                  children: [
                    BlocBuilder<viewAbsencseCubit, ViewAbsencseState>(
                      builder: (context, state) {
                        if (state is ViewAbsencseSuccess) {
                          List<DateTime> absences = [];
                          List<DateTime> delays = [];
                          for (int i = 0;
                              i < state.entities.absences!.length;
                              i++) {
                            absences.add(formateDateForCalender(
                                state.entities.absences![i].date!));
                          }
                          for (int j = 0;
                              j < state.entities.delays!.length;
                              j++) {
                            delays.add(formateDateForCalender(
                                state.entities.delays![j].date!));
                          }
                          return CustomCalendar(
                              absences: absences,
                              delays: delays,
                              absencesColor: absencesColor,
                              delayColor: delayColor);
                        } else {
                          return CustomCalendar(
                              absences: [],
                              delays: [],
                              absencesColor: absencesColor,
                              delayColor: delayColor);
                        }
                      },
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    BlocBuilder<viewAbsencseCubit, ViewAbsencseState>(
                      builder: (context, state) {
                        if (state is ViewAbsencseSuccess) {
                          print(
                              ":::::::::::::::::::::::::::::::::${state.entities.delays!.length}");
                          return CountOfAbsences(
                            absencesColor: absencesColor,
                            delayColor: delayColor,
                            numberOfDelays: state.entities.delays!.length,
                            numberOfAbsences: state.entities.absences!.length,
                          );
                        } else {
                          return const ShimmerCountOfAbsences();
                        }
                      },
                    ),
                  ],
                ),
              ),

              // const Spacer(),
              // const AppBackgroundImage(),
            ],
          ),
        ),
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: const Column(
            children: [
              Spacer(),
              // SizedBox(
              //   height: 0.5.h,
              // ),
              AppBackgroundImage(),
            ],
          ),
        ),
      ],
    ));
  }
}
