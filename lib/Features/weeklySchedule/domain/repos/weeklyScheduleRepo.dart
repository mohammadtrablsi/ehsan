import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class WeeklyScheduleRepo {
  Future<Either<Failure, WeeklyScheduleEntity>> viewWeeklySchedule(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
