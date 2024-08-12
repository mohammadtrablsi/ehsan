

import 'package:ehsan/Features/events/data/repos/eventsRepoImp.dart';
import 'package:ehsan/Features/events/domain/useCases/viewEventsUseCase.dart';
import 'package:ehsan/Features/events/presention/manger/viewEventsCubit.dart';
import 'package:ehsan/Features/events/presention/views/widgets/viewEventsBody.dart';
import 'package:ehsan/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewEvents extends StatelessWidget {
  const ViewEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context) {
            return ViewEventsCubit(
              ViewEventsUseCase(
                getIt.get<EventsRepoImpl>(),
              ),
            )..viewEvents({}, {});
          },
          child: const ViewEventsBody()
        );
  }
}