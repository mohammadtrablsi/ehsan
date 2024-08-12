// import 'package:bloc/bloc.dart';
// import 'package:ehsan/Features/home/domain/useCases/viewHomeUseCase.dart';

// part 'viewHomeStates.dart';

// class ViewHomeCubit extends Cubit<ViewHomeState> {
//   ViewHomeCubit(this.viewHomeUseCase) : super(ViewHomeInitial());
//   bool isPassword = true;

//   final ViewHomeUseCase viewHomeUseCase;

//   Future<void> viewAbsences(
//       Map<String, dynamic> header, Map<String, dynamic> body) async {
//     emit(ViewHomeLoading());
//     var result = await viewHomeUseCase.call(header, body);
//     print('resulttttttttttttttttttttttttttttttttttttttttt$result');
//     result.fold((failure) {
//       emit(ViewHomeFailure(failure.message));
//     }, (_) {
//       emit(ViewHomeSuccess());
//     });
//   }
// }
