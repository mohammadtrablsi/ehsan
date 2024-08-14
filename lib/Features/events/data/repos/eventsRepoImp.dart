import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ehsan/Features/events/data/dataSources/eventsRemoteDataSource.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/repos/eventsRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class EventsRepoImpl extends EventsRepo {
  final EventsRemoteDataSource eventsRemoteDataSource;

  EventsRepoImpl({required this.eventsRemoteDataSource});
  @override
  Future<Either<Failure, List<EventsEntity>>> viewEvents(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    List<EventsEntity> entity;
    try {
      entity =
          await eventsRemoteDataSource.viewEvents(header: header, body: body);
      return right(entity);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, EventsEntity>> registerOnEvent(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    EventsEntity entity;
    try {
      entity = await eventsRemoteDataSource.registerOnEvent(
          header: header, body: body);
      return right(entity);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

    @override
  Future<Either<Failure, EventsEntity>> unRegisterOnEvent(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    EventsEntity entity;
    try {
      entity = await eventsRemoteDataSource.unRegisterOnEvent(
          header: header, body: body);
      return right(entity);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
