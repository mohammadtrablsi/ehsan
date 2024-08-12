

import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/useCases/viewEventsUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'viewEventsStates.dart';

class ViewEventsCubit extends Cubit<ViewEventsState> {
  ViewEventsCubit(this.viewEventsUseCase) : super(ViewEventsInitial());
  bool isPassword = true;

  final ViewEventsUseCase viewEventsUseCase;

  Future<void> viewEvents(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewEventsLoading());
    var result = await viewEventsUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewEventsFailure(failure.message));
    }, (events) {
      emit(ViewEventsSuccess(events));
    });
  }
}
