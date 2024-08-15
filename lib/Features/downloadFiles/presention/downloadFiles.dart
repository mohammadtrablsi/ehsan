import 'package:ehsan/Features/downloadFiles/data/repos/downloadFilesRepoImp.dart';
import 'package:ehsan/Features/downloadFiles/domain/useCases/viewDownloadFilesUseCase.dart';
import 'package:ehsan/Features/downloadFiles/presention/manger/viewDownloadFilesCubit.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/downloadFilesBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadFiles extends StatelessWidget {
  const DownloadFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return ViewDownlaodFilesCubit(
              ViewDownloadFilesUseCase(
                getIt.get<DownloadFilesRepoImpl>(),
              ),
            )..viewDownlaodFiles({"Authorization":"Bearer $token"}, {});
          },
          child: const DownloadFilesBody()
        );
  }
}