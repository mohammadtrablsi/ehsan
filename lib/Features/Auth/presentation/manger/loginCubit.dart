import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/Features/Auth/domain/useCases/makeRegisterUseCase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loginStates.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  bool isPassword = true;
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  final LoginUseCase loginUseCase;
  Future<void> makeLogin(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    if (checkValidationOfEnterData(formstate)) {
      mangeStateOfPostData(header, body).then((value) async {
        await Future.delayed(const Duration(seconds: 1));
        // GoRouter.of(context).go(AppRouter.kTasksView);
      });
    }
  }

  Future<void> mangeStateOfPostData(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(LoginLoading());
    var result = await loginUseCase.call(header, body);
    print('resulttttttttttttttttttttttttttttttttttttttttt$result');
    result.fold((failure) {
      emit(LoginFailure(failure.message));
    }, (loginEntity) {
      // if(result.)
      if (loginEntity.message == null) {
        emit(LoginSuccess());
      }else{
        emit(LoginFailure(loginEntity.message??""));
      }
    });
  }

  bool checkValidationOfEnterData(formstate) {
    if (formstate!.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void revPassword() {
    isPassword = !isPassword;
    emit(LoginInitial());
  }
}
