import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/metrices/domain/useCases/viewMetricesUseCase.dart';

part 'viewMetricesStates.dart';

class ViewMetricesCubit extends Cubit<ViewMetricesState> {
  ViewMetricesCubit(this.viewMetricesUseCase) : super(ViewMetricesInitial());
  bool isPassword = true;

  final ViewMetricesUseCase viewMetricesUseCase;

  Future<void> viewAbsences(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(ViewMetricesLoading());
    var result = await viewMetricesUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(ViewMetricesFailure(failure.message));
    }, (_) {
      emit(ViewMetricesSuccess());
    });
  }
}
