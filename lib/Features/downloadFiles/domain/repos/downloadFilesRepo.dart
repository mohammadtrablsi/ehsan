import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';

import '../../../../core/errors/failure.dart';

abstract class DownloadFilesRepo {
  Future<Either<Failure, DownloadFilesEntity>> viewDownloadFiles(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
