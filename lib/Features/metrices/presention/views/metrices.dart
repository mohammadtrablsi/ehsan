import 'package:ehsan/Features/metrices/data/repos/metricesRepoImp.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewMetricesUseCase.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Metrices extends StatelessWidget {
  const Metrices({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ViewMetricesCubit(
          ViewMetricesUseCase(
            getIt.get<MetricesRepoImpl>(),
          ),
        )..viewMetrices({
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"
          }, {});
      },
      child: const MetricesBody(),
    );
  }
}
