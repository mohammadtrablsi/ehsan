import 'package:ehsan/Features/WeeklySchedule/presention/views/widgets/WeeklyScheduleBody.dart';
import 'package:ehsan/Features/absences/data/repos/absencesRepoImp.dart';
import 'package:ehsan/Features/weeklySchedule/domain/useCases/viewWeeklyScheduleUseCase.dart';
import 'package:ehsan/Features/weeklySchedule/data/repos/weeklyScheduleRepoImp.dart';
import 'package:ehsan/Features/weeklySchedule/presention/manger/viewWeeklyScheduleCubit.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeeklySchedule extends StatelessWidget {
  const WeeklySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return ViewWeeklyScheduleCubit(
              ViewWeeklyScheduleUseCase(
                getIt.get<WeeklyScheduleRepoImpl>(),
              ),
            )..viewWeeklySchedule({"Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"}, {});
          },
          child: const WeeklyScheduleBody(),
        );
  }
}
