import 'package:ehsan/Features/profile/data/repos/profileRepoImp.dart';
import 'package:ehsan/Features/Profile/domain/useCases/viewProfileUseCase.dart';
import 'package:ehsan/Features/profile/presention/manger/viewProfileCubit.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/profileBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
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
          )..viewProfile({
              "Authorization":
                  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"
            }, {});
        },
        child: const ProfileBody());
  }
}
