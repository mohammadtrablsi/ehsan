import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/metrices/data/models/metricesForSubjectModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewMetricesForSubjectUseCase.dart';

part 'viewMetricesForSubjectStates.dart';

class ViewMetricesForSubjectCubit extends Cubit<ViewMetricesforSubjectState> {
  ViewMetricesForSubjectCubit(this.viewMetricesForSubjectUseCase)
      : super(ViewMetricesforSubjectInitial());
  bool isPassword = true;
  int whoIsPressed = 0;

  final ViewMetricesForSubjectUseCase viewMetricesForSubjectUseCase;

  Future<void> viewMetricesForSubject(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewMetricesforSubjectLoading());
    var result = await viewMetricesForSubjectUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewMetricesforSubjectFailure(failure.message));
    }, (_) {
      emit(ViewMetricesforSubjectSuccess(_));
    });
  }

  void setWhoIsPressed(int index, MetricesForSubjectEntity entity) {
    whoIsPressed = index;
    emit(ViewMetricesforSubjectSuccess(entity));
  }
}
