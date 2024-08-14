part of 'unRegisterOnEventCubit.dart';


abstract class UnRegisterOnEventState {}

class UnRegisterOnEventInitial extends UnRegisterOnEventState {}

class UnRegisterOnEventLoading extends UnRegisterOnEventState {}

class UnRegisterOnEventFailure extends UnRegisterOnEventState {
  final String errMessage;

  UnRegisterOnEventFailure(this.errMessage);
}

// class ShowPassword extends UnRegisterOnEventState {
// }

class UnRegisterOnEventSuccess extends UnRegisterOnEventState {
  final EventsEntity entities;

  UnRegisterOnEventSuccess(this.entities);
}
