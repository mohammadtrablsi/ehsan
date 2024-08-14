part of 'registerOnEventCubit.dart';

abstract class RegisterOnEventState {}

class RegisterOnEventInitial extends RegisterOnEventState {}

class RegisterOnEventLoading extends RegisterOnEventState {}

class RegisterOnEventFailure extends RegisterOnEventState {
  final String errMessage;

  RegisterOnEventFailure(this.errMessage);
}

// class ShowPassword extends RegisterOnEventState {
// }

class RegisterOnEventSuccess extends RegisterOnEventState {
  final EventsEntity entities;
  RegisterOnEventSuccess(this.entities);
}
