import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/Features/examSchedule/domain/useCases/viewExamScheduleUseCase.dart';

part 'viewExamScheduleStates.dart';

class ViewExamScheduleCubit extends Cubit<ViewExamScheduleState> {
  ViewExamScheduleCubit(this.viewExamScheduleUseCase) : super(ViewExamScheduleInitial());
  bool isPassword = true;

  final ViewExamScheduleUseCase viewExamScheduleUseCase;

  Future<void> ViewExamSchedule(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewExamScheduleLoading());
    var result = await viewExamScheduleUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewExamScheduleFailure(failure.message));
    }, (_) {
      emit(ViewExamScheduleSuccess(_));
    });
  }
}
