part of 'viewHomeCubit.dart';

abstract class ViewHomeState {}

class ViewHomeInitial extends ViewHomeState {}

class ViewHomeLoading extends ViewHomeState {}

class ViewHomeFailure extends ViewHomeState {
  final String errMessage;

  ViewHomeFailure(this.errMessage);
}

// class ShowPassword extends ViewHomeState {
// }

class ViewHomeSuccess extends ViewHomeState {}
