import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';

import '../../../../core/errors/failure.dart';

abstract class AbsencseRepo {
  Future<Either<Failure, AbsencseEntity>> viewAbsences(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
