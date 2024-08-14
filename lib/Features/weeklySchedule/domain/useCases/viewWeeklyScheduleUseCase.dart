
import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';
import 'package:ehsan/Features/weeklySchedule/domain/repos/weeklyScheduleRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class ViewWeeklyScheduleUseCase {
  final WeeklyScheduleRepo weeklyScheduleRepo;

  ViewWeeklyScheduleUseCase(this.weeklyScheduleRepo);

  Future<Either<Failure, WeeklyScheduleEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await weeklyScheduleRepo.viewWeeklySchedule(header:header,body: body);
  }
}
