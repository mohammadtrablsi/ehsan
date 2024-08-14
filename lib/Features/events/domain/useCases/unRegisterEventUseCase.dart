

import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/repos/eventsRepo.dart';
import 'package:ehsan/core/errors/failure.dart';

class UnRegisterOnEventUseCase {
  final EventsRepo eventsRepo;

  UnRegisterOnEventUseCase(this.eventsRepo);

  Future<Either<Failure, EventsEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await eventsRepo.unRegisterOnEvent(header:header,body: body);
  }
}
