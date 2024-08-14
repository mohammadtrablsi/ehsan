import 'package:ehsan/Features/Infringement/data/repos/InfringementRepoImp.dart';
import 'package:ehsan/Features/Infringement/domain/useCases/viewInfringementUseCase.dart';
import 'package:ehsan/Features/Infringement/presention/manger/viewInfringementCubit.dart';
import 'package:ehsan/Features/infringement/presention/views/widgets/infringementBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Infringement extends StatelessWidget {
  const Infringement({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ViewInfringementCubit()
          ..viewInfringement({
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWE4ODY2MmQzNmJmNWU5YzMxMDkxNSIsImlhdCI6MTcyMjYwMTgwOH0.yMjAxyzIYivBqOMiicqL2-oN4T8qaizS3xtf7gCuSog"
          }, {});
      },
      child: const InfringementBody(),
    );
  }
}
