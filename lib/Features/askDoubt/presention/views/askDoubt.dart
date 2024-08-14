
import 'package:ehsan/Features/askDoubt/data/repos/askDoubtRepoImp.dart';
import 'package:ehsan/Features/askDoubt/domain/useCases/makeAskDoubtUseCase.dart';
import 'package:ehsan/Features/askDoubt/presention/manger/makeAskDoubtCubit.dart';
import 'package:ehsan/Features/askDoubt/presention/views/widgets/askDoubtBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AskDoubt extends StatelessWidget {
  const AskDoubt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return MakeAskDoubtCubit(
              MakeAskDoubtUseCase(
                getIt.get<AskDoubtRepoImpl>(),
              ),
            );
          },
          child: const AskDoubtBody(),
        );
  }
}