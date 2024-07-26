import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/Events/domain/useCases/viewEventsUseCase.dart';

part 'viewEventsStates.dart';

class ViewEventsCubit extends Cubit<ViewEventsState> {
  ViewEventsCubit(this.viewEventsUseCase) : super(ViewEventsInitial());
  bool isPassword = true;

  final ViewEventsUseCase viewEventsUseCase;

  Future<void> viewAbsences(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewEventsLoading());
    var result = await viewEventsUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewEventsFailure(failure.message));
    }, (_) {
      emit(ViewEventsSuccess());
    });
  }
}
