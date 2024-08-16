import 'package:ehsan/Features/metrices/data/repos/metricesRepoImp.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewMetricesForSubjectUseCase.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewMetricesUseCase.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewSubjectsUseCase.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesForSubjectCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewSubjectsCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/whichCubitInMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Metrices extends StatelessWidget {
  const Metrices({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return ViewMetricesCubit(
              ViewMetricesUseCase(
                getIt.get<MetricesRepoImpl>(),
              ),
            )..viewMetrices(
                {"Authorization": "Bearer ${prefs!.getString('token')}"}, {});
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return ViewMetricesForSubjectCubit(
              ViewMetricesForSubjectUseCase(
                getIt.get<MetricesRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return WhichCubitInMetricesCubit(2);
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return ViewSubjectsCubit(
              ViewSubjectsUseCase(
                getIt.get<MetricesRepoImpl>(),
              ),
            )..viewSubjects(
                {"Authorization": "Bearer ${prefs!.getString('token')}"}, {});
          },
        )
      ],
      child: const MetricesBody(),
    );
  }
}
