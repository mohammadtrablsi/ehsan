
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';




import '../../../../core/errors/failure.dart';



class ViewAbsencseUseCase {
  final AbsencseRepo absencseRepo;

  ViewAbsencseUseCase(this.absencseRepo);

  Future<Either<Failure, AbsencseEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await absencseRepo.viewAbsences(header:header,body: body);
  }
}
