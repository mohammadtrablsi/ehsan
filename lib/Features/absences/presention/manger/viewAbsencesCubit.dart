import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';

part 'viewAbsencesStates.dart';

class viewAbsencseCubit extends Cubit<ViewAbsencseState> {
  viewAbsencseCubit(this.viewAbsencseUseCase) : super(ViewAbsencseInitial());
  bool isPassword = true;

  final ViewAbsencseUseCase viewAbsencseUseCase;

  Future<void> viewAbsences(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewAbsencseLoading());
    var result = await viewAbsencseUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewAbsencseFailure(failure.message));
    }, (_) {
      emit(ViewAbsencseSuccess(_));
    });
  }
}
