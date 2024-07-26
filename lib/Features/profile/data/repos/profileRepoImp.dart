

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/Features/profile/domain/repos/profileRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/profileRemoteDataSource.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoImpl({required this.profileRemoteDataSource});
  @override
  Future<Either<Failure, ProfileEntity>> viewProfile(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    ProfileEntity entity;
    try {
      entity = await profileRemoteDataSource.viewProfile(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
