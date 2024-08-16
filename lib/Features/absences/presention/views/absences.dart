import 'package:ehsan/Features/absences/data/repos/absencesRepoImp.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/absences/presention/manger/viewAbsencesCubit.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/absencesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class Absences extends StatelessWidget {
  Absences({super.key});

  final List<DateTime> absences = [
    DateTime.utc(2024, 7, 12),
    DateTime.utc(2024, 7, 10),
    DateTime.utc(2024, 7, 14),
  ];

  final List<DateTime> delays = [
    DateTime.utc(2024, 7, 11),
    DateTime.utc(2024, 7, 16),
    DateTime.utc(2024, 7, 15),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return viewAbsencseCubit(
              ViewAbsencseUseCase(
                getIt.get<AbsencseRepoImpl>(),
              ),
            )..viewAbsences({"Authorization":"Bearer ${prefs!.getString('token')}"}, {});
          },
          child: AbsencesBody(),
        );
  }
}
