
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/domain/repos/downloadFilesRepo.dart';




import '../../../../core/errors/failure.dart';



class ViewDownloadFilesUseCase {
  final DownloadFilesRepo downloadFilesRepo;

  ViewDownloadFilesUseCase(this.downloadFilesRepo);

  Future<Either<Failure, List<DownloadFilesEntity>>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await downloadFilesRepo.viewDownloadFiles(header:header,body: body);
  }
}
