
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/Features/grades/domain/repos/gradesRepo.dart';






import '../../../../core/errors/failure.dart';



class ViewGradesUseCase {
  final GradesRepo gradesRepo;

  ViewGradesUseCase(this.gradesRepo);

  Future<Either<Failure, GradesEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await gradesRepo.viewGrades(header:header,body: body);
  }
}
