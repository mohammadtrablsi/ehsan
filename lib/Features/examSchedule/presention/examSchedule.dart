import 'package:ehsan/Features/examSchedule/data/repos/examScheduleRepoImp.dart';
import 'package:ehsan/Features/examSchedule/domain/useCases/viewExamScheduleUseCase.dart';
import 'package:ehsan/Features/examSchedule/presention/manger/viewExamScheduleCubit.dart';
import 'package:ehsan/Features/examSchedule/presention/views/widgets/examScheduleBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
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
        )..ViewExamSchedule({"Authorization":"Bearer ${prefs!.getString('token')}"}, {});
      },
      child: const ExamScheduleBody(),
    );
  }
}
