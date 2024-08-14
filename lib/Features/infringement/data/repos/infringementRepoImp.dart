

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/Features/infringement/domain/repos/infringementRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/infringementRemoteDataSource.dart';

class InfringementRepoImpl extends InfringementRepo {
  InfringementRemoteDataSource infringementRemoteDataSource=InfringementRemoteDataSourceImpl();

  InfringementRepoImpl();
  @override
  Future<Either<Failure, List<InfringementEntity>>> viewInfringement(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    List<InfringementEntity> entity;
    try {
      entity = await infringementRemoteDataSource.viewInfringement(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
