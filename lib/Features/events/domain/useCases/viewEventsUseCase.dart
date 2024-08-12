

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/repos/eventsRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class ViewEventsUseCase {
  final EventsRepo eventsRepo;

  ViewEventsUseCase(this.eventsRepo);

  Future<Either<Failure, List<EventsEntity>>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await eventsRepo.viewEvents(header:header,body: body);
  }
}
