import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class InfringementRepo {
  Future<Either<Failure, List<InfringementEntity>>> viewInfringement(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
