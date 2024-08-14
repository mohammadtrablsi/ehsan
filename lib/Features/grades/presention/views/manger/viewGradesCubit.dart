import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/Grades/domain/useCases/viewGradesUseCase.dart';
import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';

part 'viewGradesStates.dart';

class ViewGradesCubit extends Cubit<ViewGradesState> {
  ViewGradesCubit(this.viewGradesUseCase) : super(ViewGradesInitial());
  bool isPassword = true;

  final ViewGradesUseCase viewGradesUseCase;

  Future<void> viewGrades(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewGradesLoading());
    var result = await viewGradesUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewGradesFailure(failure.message));
    }, (_) {
      emit(ViewGradesSuccess(_));
    });
  }
}
