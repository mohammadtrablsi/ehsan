

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/Features/Auth/domain/repos/loginRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class LoginUseCase {
  final LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  Future<Either<Failure, LoginEntity>> call(
      Map<String, dynamic> header,Map<String, dynamic> body) async {
    return await loginRepo.makeLogin(header:header,body:body);
  }
}
