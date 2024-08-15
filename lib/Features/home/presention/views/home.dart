import 'package:ehsan/Features/home/data/repos/homeRepoImp.dart';
import 'package:ehsan/Features/home/domain/useCases/viewHomeUseCase.dart';
import 'package:ehsan/Features/home/presention/manger/viewHomeCubit.dart';
import 'package:ehsan/Features/home/presention/views/widgets/homeBody.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return ViewHomeCubit(
              ViewHomeUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            )..viewData({"Authorization":"Bearer $token"}, {});
          },
          child: const HomeBody(),
        );
  }
}
