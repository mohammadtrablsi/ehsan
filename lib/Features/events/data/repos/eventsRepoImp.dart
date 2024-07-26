

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/Events/domain/entites/EventsEntity.dart';
import 'package:ehsan/Features/events/domain/repos/eventsRepo.dart';

import 'package:ehsan/core/errors/failure.dart';

import 'package:dio/dio.dart';


import '../dataSources/eventsRemoteDataSource.dart';

class EventsRepoImpl extends EventsRepo {
  final EventsRemoteDataSource eventsRemoteDataSource;

  EventsRepoImpl({required this.eventsRemoteDataSource});
  @override
  Future<Either<Failure, EventsEntity>> viewEvents(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    EventsEntity entity;
    try {
      entity = await eventsRemoteDataSource.viewEvents(header: header,body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
