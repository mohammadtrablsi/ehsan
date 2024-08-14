import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';
import 'package:ehsan/Features/weeklySchedule/domain/useCases/viewWeeklyScheduleUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'viewWeeklyScheduleStates.dart';

class ViewWeeklyScheduleCubit extends Cubit<ViewWeeklyScheduleState> {
  ViewWeeklyScheduleCubit(this.viewWeeklyScheduleUseCase)
      : super(ViewWeeklyScheduleInitial());
  bool isPassword = true;
  int howIsPressed = 4;

  final ViewWeeklyScheduleUseCase viewWeeklyScheduleUseCase;

  Future<void> viewWeeklySchedule(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewWeeklyScheduleLoading());
    var result = await viewWeeklyScheduleUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewWeeklyScheduleFailure(failure.message));
    }, (_) {
      emit(ViewWeeklyScheduleSuccess(_));
    });
  }

  void setHowIsPressed(index,entity) {
    howIsPressed = index;
    emit(ViewWeeklyScheduleSuccess(entity));
  }

  List anyList(entity) {
    if (howIsPressed == 4) {
      // emit(ViewWeeklyScheduleSuccess(entity));
      return entity.son;
    } else if (howIsPressed == 3) {
      // emit(ViewWeeklyScheduleSuccess(entity));
      return entity.mun;
    } else if (howIsPressed == 2) {
      // emit(ViewWeeklyScheduleSuccess(entity));
      return entity.the;
    } else if (howIsPressed == 1) {
      // emit(ViewWeeklyScheduleSuccess(entity));
      return entity.wen;
    }
    // emit(ViewWeeklyScheduleSuccess(entity));
    return entity.tus;
  }
}
