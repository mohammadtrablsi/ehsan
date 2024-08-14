import 'package:ehsan/Features/events/data/repos/eventsRepoImp.dart';
import 'package:ehsan/Features/events/domain/useCases/registerEventUseCase%20copy.dart';
import 'package:ehsan/Features/events/domain/useCases/unRegisterEventUseCase.dart';
import 'package:ehsan/Features/events/presention/manger/registerOnEventCubit.dart';
import 'package:ehsan/Features/events/presention/manger/unRegisterOnEventCubit.dart';
import 'package:ehsan/Features/events/presention/views/widgets/eventDetailsBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetails extends StatelessWidget {
  const EventDetails(
      {super.key, required this.indexForTag, required this.idOfEvent});
  final int indexForTag;
  final String idOfEvent;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
      create: (BuildContext context) {
        return RegisterOnEventCubit(
          RegisterOnEventUseCase(
            getIt.get<EventsRepoImpl>(),
          ),
        );
      },
    ),
    BlocProvider(
      create: (BuildContext context) {
        return UnRegisterOnEventCubit(
          UnRegisterOnEventUseCase(
            getIt.get<EventsRepoImpl>(),
          ),
        );
      },
      
    ),
    ], child: EventDetailsBody(
        indexForTag: indexForTag,
        idOfEvent: idOfEvent,
      ),);
  }
}
