

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';

import '../../../../core/errors/failure.dart';


abstract class AskDoubtRepo {
  Future<Either<Failure, AskDoubtEntity>> makeAskDoubt(
      {required Map<String, dynamic> header,required Map<String, dynamic> body});
}
