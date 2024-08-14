

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ehsan/Features/askDoubt/data/dataSources/askDoubtRemoteDataSource.dart';
import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';
import 'package:ehsan/Features/askDoubt/domain/repos/askDoubtRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class AskDoubtRepoImpl extends AskDoubtRepo {
  final AskDoubtRemoteDataSource askDoubtRemoteDataSource;

  AskDoubtRepoImpl({required this.askDoubtRemoteDataSource});
  @override
  Future<Either<Failure, AskDoubtEntity>> makeAskDoubt(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    AskDoubtEntity entity;
    try {
      entity = await askDoubtRemoteDataSource.makeAskDoubt(headers:header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
