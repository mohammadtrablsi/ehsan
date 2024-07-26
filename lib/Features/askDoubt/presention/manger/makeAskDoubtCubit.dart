import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/askDoubt/domain/useCases/makeAskDoubtUseCase.dart';

part 'makeAskDoubtStates.dart';

class MakeAskDoubtCubit extends Cubit<MakeAskDoubtState> {
  MakeAskDoubtCubit(this.makeAskDoubtUseCase) : super(MakeAskDoubtInitial());
  bool isPassword = true;

  final MakeAskDoubtUseCase makeAskDoubtUseCase;

  Future<void> makeAskDoubt(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(MakeAskDoubtLoading());
    var result = await makeAskDoubtUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(MakeAskDoubtFailure(failure.message));
    }, (_) {
      emit(MakeAskDoubtSuccess());
    });
  }
}
