import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ehsan/Features/Auth/data/dataSources/loginRemoteDataSource.dart';
import 'package:ehsan/Features/Auth/data/models/loginModel.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/Features/Auth/domain/repos/loginRepo.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/errors/failure.dart';
import 'package:hive/hive.dart';

class LoginRepoImpl extends LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepoImpl({required this.loginRemoteDataSource});
  @override
  Future<Either<Failure, LoginEntity>> makeLogin(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    // var box = await Hive.openBox<Data>(kLoginBox);
    LoginEntity entity;
    try {
      entity =
          await loginRemoteDataSource.makeLogin(header: header, body: body);
      // if (entity.personalDetail != null) {
      //   box.add(entity.personalDetail!);
      // }
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
