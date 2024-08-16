part of 'viewSubjectsCubit.dart';

abstract class ViewSubjectsState {}

class ViewSubjectsInitial extends ViewSubjectsState {}

class ViewSubjectsLoading extends ViewSubjectsState {}

class ViewSubjectsFailure extends ViewSubjectsState {
  final String errMessage;

  ViewSubjectsFailure(this.errMessage);
}

// class ShowPassword extends ViewSubjectsState {
// }

class ViewSubjectsSuccess extends ViewSubjectsState {
  final SubjectsEntity entity;
  ViewSubjectsSuccess(this.entity);
}
