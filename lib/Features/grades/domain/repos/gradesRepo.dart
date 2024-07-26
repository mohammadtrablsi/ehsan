import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class GradesRepo {
  Future<Either<Failure, GradesEntity>> viewGrades(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
