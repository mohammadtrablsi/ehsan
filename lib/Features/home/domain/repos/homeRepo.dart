import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, HomeEntity>> viewHome(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
