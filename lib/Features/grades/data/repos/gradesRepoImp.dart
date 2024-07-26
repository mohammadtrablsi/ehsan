

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/Features/grades/domain/repos/gradesRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/gradesRemoteDataSource.dart';

class GradesRepoImpl extends GradesRepo {
  final GradesRemoteDataSource gradesRemoteDataSource;

  GradesRepoImpl({required this.gradesRemoteDataSource});
  @override
  Future<Either<Failure, GradesEntity>> viewGrades(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    GradesEntity entity;
    try {
      entity = await gradesRemoteDataSource.viewGrades(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
