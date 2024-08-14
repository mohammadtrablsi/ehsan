import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/absences/domain/useCases/viewAbsencesUseCase.dart';
import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/Features/Infringement/domain/useCases/viewInfringementUseCase.dart';
import 'package:ehsan/Features/infringement/domain/repos/infringementRepo.dart';

part 'viewInfringementStates.dart';

class ViewInfringementCubit extends Cubit<ViewInfringementState> {
  ViewInfringementCubit() : super(ViewInfringementInitial());
  bool isPassword = true;

  ViewInfringementUseCase viewInfringementUseCase=ViewInfringementUseCase();

  Future<void> viewInfringement(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewInfringementLoading());
    var result = await viewInfringementUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewInfringementFailure(failure.message));
    }, (_) {
      emit(ViewInfringementSuccess(_));
    });
  }
}
