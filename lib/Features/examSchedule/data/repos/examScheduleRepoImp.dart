

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/Features/examSchedule/domain/repos/examScheduleRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/examScheduleRemoteDataSource.dart';

class ExamScheduleRepoImpl extends ExamScheduleRepo {
  final ExamScheduleRemoteDataSource examScheduleRemoteDataSource;

  ExamScheduleRepoImpl({required this.examScheduleRemoteDataSource});
  @override
  Future<Either<Failure, List<ExamScheduleEntity>>> viewExamSchedule(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    List<ExamScheduleEntity> entity;
    try {
      entity = await examScheduleRemoteDataSource.viewExamSchedule(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
