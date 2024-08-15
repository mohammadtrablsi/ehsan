import 'package:ehsan/Features/grades/data/repos/gradesRepoImp.dart';
import 'package:ehsan/Features/Grades/domain/useCases/viewGradesUseCase.dart';
import 'package:ehsan/Features/grades/presention/views/manger/viewGradesCubit.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/gradesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Grades extends StatelessWidget {
  const Grades({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return ViewGradesCubit(
              ViewGradesUseCase(
                getIt.get<GradesRepoImpl>(),
              ),
            )..viewGrades({"Authorization":"Bearer $token"}, {});
          },
          child: const GradesBody(),
        );
  }
}