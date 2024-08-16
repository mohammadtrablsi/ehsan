import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';


import '../../../../core/errors/failure.dart';

abstract class MetricesRepo {
  Future<Either<Failure, MetricesEntity>> viewMetrices(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
       Future<Either<Failure, MetricesForSubjectEntity>> viewMetricesForSubject(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body,required String id});
       Future<Either<Failure, SubjectsEntity>> viewSubjects(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
