

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/domain/repos/downloadFilesRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/downloadFilesRemoteDataSource.dart';

class DownloadFilesRepoImpl extends DownloadFilesRepo {
  final DownloadFilesRemoteDataSource downloadFilesRemoteDataSource;

  DownloadFilesRepoImpl({required this.downloadFilesRemoteDataSource});
  @override
  Future<Either<Failure, DownloadFilesEntity>> viewDownloadFiles(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    DownloadFilesEntity entity;
    try {
      entity = await downloadFilesRemoteDataSource.viewDownloadFiles(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
