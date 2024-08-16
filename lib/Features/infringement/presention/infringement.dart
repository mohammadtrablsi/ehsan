import 'package:ehsan/Features/Infringement/data/repos/InfringementRepoImp.dart';
import 'package:ehsan/Features/Infringement/domain/useCases/viewInfringementUseCase.dart';
import 'package:ehsan/Features/Infringement/presention/manger/viewInfringementCubit.dart';
import 'package:ehsan/Features/infringement/presention/views/widgets/infringementBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
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
          ..viewInfringement({"Authorization":"Bearer ${prefs!.getString('token')}"}, {});
      },
      child: const InfringementBody(),
    );
  }
}
