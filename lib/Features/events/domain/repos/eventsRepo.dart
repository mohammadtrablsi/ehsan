

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/core/errors/failure.dart';

abstract class EventsRepo {
  Future<Either<Failure, List<EventsEntity>>> viewEvents(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
