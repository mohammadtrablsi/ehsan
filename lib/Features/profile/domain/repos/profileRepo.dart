

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/core/errors/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ProfileEntity>> viewProfile(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
