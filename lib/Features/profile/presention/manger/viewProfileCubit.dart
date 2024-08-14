import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/Profile/domain/useCases/viewProfileUseCase.dart';
import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';

part 'viewProfileStates.dart';

class ViewProfileCubit extends Cubit<ViewProfileState> {
  ViewProfileCubit(this.viewProfileUseCase) : super(ViewProfileInitial());
  bool isPassword = true;

  final ViewProfileUseCase viewProfileUseCase;

  Future<void> viewProfile(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewProfileLoading());
    var result = await viewProfileUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewProfileFailure(failure.message));
    }, (_) {
      emit(ViewProfileSuccess(_));
    });
  }
}
