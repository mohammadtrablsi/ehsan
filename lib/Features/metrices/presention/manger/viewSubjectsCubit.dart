import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/metrices/data/models/subjectsModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewSubjectsUseCase.dart';

part 'viewSubjectsStates.dart';

class ViewSubjectsCubit extends Cubit<ViewSubjectsState> {
  ViewSubjectsCubit(this.viewSubjectsUseCase) : super(ViewSubjectsInitial());
  bool isPassword = true;
  List<Datas> data=[];

  final ViewSubjectsUseCase viewSubjectsUseCase;

  Future<void> viewSubjects(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewSubjectsLoading());
    var result = await viewSubjectsUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewSubjectsFailure(failure.message));
    }, (_) {
      emit(ViewSubjectsSuccess(_));
    });
  }
}
