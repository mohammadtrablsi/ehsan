import 'package:bloc/bloc.dart';

part 'whichCubitInMetricesStates.dart';

class WhichCubitInMetricesCubit extends Cubit<WhichCubitInMetricesState> {
  int x;
  WhichCubitInMetricesCubit(this.x)
      : super(WhichCubitInMetricesInitial());

  // WhichCubitInMetricesCubit();

  void setWhoIsPressed(whoIsPressed) {
    if (whoIsPressed == 0) {
      emit(CubitForMetrices());
    } else {
      emit(CubitForMetricesForSubject());
    }
  }
}
