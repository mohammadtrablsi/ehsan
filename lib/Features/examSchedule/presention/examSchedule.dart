import 'package:ehsan/Features/examSchedule/data/repos/examScheduleRepoImp.dart';
import 'package:ehsan/Features/examSchedule/domain/useCases/viewExamScheduleUseCase.dart';
import 'package:ehsan/Features/examSchedule/presention/manger/viewExamScheduleCubit.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/examScheduleBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamSchedule extends StatelessWidget {
  const ExamSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ViewExamScheduleCubit(
          ViewExamScheduleUseCase(
            getIt.get<ExamScheduleRepoImpl>(),
          ),
        )..ViewExamSchedule({
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"
          }, {});
      },
      child: const ExamScheduleBody(),
    );
  }
}
