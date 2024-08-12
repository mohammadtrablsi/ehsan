



import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/core/errors/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginEntity>> makeLogin(
      {required Map<String, dynamic> header,required Map<String, dynamic> body});
}
