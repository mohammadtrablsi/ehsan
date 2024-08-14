

import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/useCases/registerEventUseCase%20copy.dart';
import 'package:ehsan/Features/events/domain/useCases/viewEventsUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'registerOnEventStates.dart';

class RegisterOnEventCubit extends Cubit<RegisterOnEventState> {
  RegisterOnEventCubit(this.registerOnEventUseCase) : super(RegisterOnEventInitial());
  bool isPassword = true;

  final RegisterOnEventUseCase registerOnEventUseCase;

  Future<void> registerOnEvent(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(RegisterOnEventLoading());
    var result = await registerOnEventUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(RegisterOnEventFailure(failure.message));
    }, (events) {
      emit(RegisterOnEventSuccess(events));
    });
  }
}
