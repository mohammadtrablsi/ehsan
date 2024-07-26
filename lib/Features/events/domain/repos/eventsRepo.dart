import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/Events/domain/entites/EventsEntity.dart';

import '../../../../core/errors/failure.dart';

abstract class EventsRepo {
  Future<Either<Failure, EventsEntity>> viewEvents(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}
