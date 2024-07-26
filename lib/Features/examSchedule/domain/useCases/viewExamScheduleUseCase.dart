
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/Features/examSchedule/domain/repos/examScheduleRepo.dart';





import '../../../../core/errors/failure.dart';



class ViewExamScheduleUseCase {
  final ExamScheduleRepo examScheduleRepo;

  ViewExamScheduleUseCase(this.examScheduleRepo);

  Future<Either<Failure, ExamScheduleEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await examScheduleRepo.viewExamSchedule(header:header,body: body);
  }
}
