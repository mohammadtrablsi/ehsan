import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class ExamScheduleRepo {
  Future<Either<Failure, List<ExamScheduleEntity>>> viewExamSchedule(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
