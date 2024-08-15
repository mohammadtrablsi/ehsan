import 'package:ehsan/Features/profile/data/repos/profileRepoImp.dart';
import 'package:ehsan/Features/Profile/domain/useCases/viewProfileUseCase.dart';
import 'package:ehsan/Features/profile/presention/manger/viewProfileCubit.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/profileBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return ViewProfileCubit(
            ViewProfileUseCase(
              getIt.get<ProfileRepoImpl>(),
            ),
          )..viewProfile({"Authorization":"Bearer $token"}, {});
        },
        child: const ProfileBody());
  }
}
