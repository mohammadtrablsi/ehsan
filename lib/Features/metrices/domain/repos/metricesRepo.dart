import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class MetricesRepo {
  Future<Either<Failure, MetricesEntity>> viewMetrices(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
