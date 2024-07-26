

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';
import 'package:ehsan/Features/weeklySchedule/domain/repos/weeklyScheduleRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/weeklyScheduleRemoteDataSource.dart';

class WeeklyScheduleRepoImpl extends WeeklyScheduleRepo {
  final WeeklyScheduleRemoteDataSource weeklyScheduleRemoteDataSource;

  WeeklyScheduleRepoImpl({required this.weeklyScheduleRemoteDataSource});
  @override
  Future<Either<Failure, WeeklyScheduleEntity>> viewWeeklySchedule(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    WeeklyScheduleEntity entity;
    try {
      entity = await weeklyScheduleRemoteDataSource.viewWeeklySchedule(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
