import 'package:ehsan/Features/WeeklySchedule/presention/views/widgets/WeeklyScheduleBody.dart';
import 'package:ehsan/Features/absences/data/repos/absencesRepoImp.dart';
import 'package:ehsan/Features/weeklySchedule/domain/useCases/viewWeeklyScheduleUseCase.dart';
import 'package:ehsan/Features/weeklySchedule/data/repos/weeklyScheduleRepoImp.dart';
import 'package:ehsan/Features/weeklySchedule/presention/manger/viewWeeklyScheduleCubit.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
            )..viewWeeklySchedule({"Authorization":"Bearer $token"}, {});
          },
          child: const WeeklyScheduleBody(),
        );
  }
}
