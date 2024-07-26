
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/Events/domain/entites/EventsEntity.dart';
import 'package:ehsan/Features/events/domain/repos/eventsRepo.dart';




import '../../../../core/errors/failure.dart';



class ViewEventsUseCase {
  final EventsRepo eventsRepo;

  ViewEventsUseCase(this.eventsRepo);

  Future<Either<Failure, EventsEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await eventsRepo.viewEvents(header:header,body: body);
  }
}
