

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/repos/metricesRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/metricesRemoteDataSource.dart';

class MetricesRepoImpl extends MetricesRepo {
  final MetricesRemoteDataSource metricesRemoteDataSource;

  MetricesRepoImpl({required this.metricesRemoteDataSource});
  @override
  Future<Either<Failure, MetricesEntity>> viewMetrices(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    MetricesEntity entity;
    try {
      entity = await metricesRemoteDataSource.viewMetrices(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
