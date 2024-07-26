part of 'viewProfileCubit.dart';

abstract class ViewProfileState {}

class ViewProfileInitial extends ViewProfileState {}

class ViewProfileLoading extends ViewProfileState {}

class ViewProfileFailure extends ViewProfileState {
  final String errMessage;

  ViewProfileFailure(this.errMessage);
}

// class ShowPassword extends ViewProfileState {
// }

class ViewProfileSuccess extends ViewProfileState {}
