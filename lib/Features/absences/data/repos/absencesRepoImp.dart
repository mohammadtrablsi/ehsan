

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/absencesRemoteDataSource.dart';

class AbsencseRepoImpl extends AbsencseRepo {
  final AbsencseRemoteDataSource absencseRemoteDataSource;

  AbsencseRepoImpl({required this.absencseRemoteDataSource});
  @override
  Future<Either<Failure, AbsencseEntity>> viewAbsences(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    AbsencseEntity entity;
    try {
      entity = await absencseRemoteDataSource.viewAbsencse(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
