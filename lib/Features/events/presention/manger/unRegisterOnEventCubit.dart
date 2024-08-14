
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/Features/events/domain/useCases/registerEventUseCase%20copy.dart';
import 'package:ehsan/Features/events/domain/useCases/unRegisterEventUseCase.dart';
import 'package:ehsan/Features/events/domain/useCases/viewEventsUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';

part 'unRegisterOnEventStates.dart';

class UnRegisterOnEventCubit extends Cubit<UnRegisterOnEventState> {
  UnRegisterOnEventCubit(this.unRegisterOnEventUseCase)
      : super(UnRegisterOnEventInitial());
  bool isPassword = true;

  final UnRegisterOnEventUseCase unRegisterOnEventUseCase;

  Future<void> unRegisterOnEvent(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(UnRegisterOnEventLoading());
    var result = await unRegisterOnEventUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(UnRegisterOnEventFailure(failure.message));
    }, (events) {
      emit(UnRegisterOnEventSuccess(events));
    });
  }
}
