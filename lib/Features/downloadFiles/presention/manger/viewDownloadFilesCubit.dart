import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/domain/useCases/viewDownloadFilesUseCase.dart';

part 'viewDownlaodFilesStates.dart';

class ViewDownlaodFilesCubit extends Cubit<ViewDownlaodFilesState> {
  ViewDownlaodFilesCubit(this.viewDownlaodFilesUseCase)
      : super(ViewDownlaodFilesInitial());
  bool isPassword = true;

  final ViewDownloadFilesUseCase viewDownlaodFilesUseCase;

  Future<void> viewDownlaodFiles(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewDownlaodFilesLoading());
    var result = await viewDownlaodFilesUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewDownlaodFilesFailure(failure.message));
    }, (entity) {
      emit(ViewDownlaodFilesSuccess(entity));
      // print("hhhhhhhhhhhhhhhhhhhhh$entity");
    });
  }
}
