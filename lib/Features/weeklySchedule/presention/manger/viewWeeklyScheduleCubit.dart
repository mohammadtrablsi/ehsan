import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/WeeklySchedule/domain/useCases/viewWeeklyScheduleUseCase.dart';

part 'viewWeeklyScheduleStates.dart';

class ViewWeeklyScheduleCubit extends Cubit<ViewWeeklyScheduleState> {
  ViewWeeklyScheduleCubit(this.viewWeeklyScheduleUseCase) : super(ViewWeeklyScheduleInitial());
  bool isPassword = true;

  final ViewWeeklyScheduleUseCase viewWeeklyScheduleUseCase;

  Future<void> viewAbsences(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewWeeklyScheduleLoading());
    var result = await viewWeeklyScheduleUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewWeeklyScheduleFailure(failure.message));
    }, (_) {
      emit(ViewWeeklyScheduleSuccess());
    });
  }
}
