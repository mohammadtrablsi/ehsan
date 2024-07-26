

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/home/domain/repos/homeRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/homeRemoteDataSource.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, HomeEntity>> viewHome(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    HomeEntity entity;
    try {
      entity = await homeRemoteDataSource.viewHome(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
