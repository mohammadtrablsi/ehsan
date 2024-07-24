part of 'viewAbsencesCubit.dart';

abstract class ViewAbsencseState {}

class ViewAbsencseInitial extends ViewAbsencseState {}

class ViewAbsencseLoading extends ViewAbsencseState {}

class ViewAbsencseFailure extends ViewAbsencseState {
  final String errMessage;

  ViewAbsencseFailure(this.errMessage);
}

// class ShowPassword extends ViewAbsencseState {
// }

class ViewAbsencseSuccess extends ViewAbsencseState {}
