import 'package:ehsan/Features/absences/data/repos/absencesRepoImp.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/absences/presention/manger/viewAbsencesCubit.dart';
import 'package:ehsan/Features/absences/presention/views/widgets/absencesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
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
            )..viewAbsences({"Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"}, {});
          },
          child: AbsencesBody(),
        );
  }
}
