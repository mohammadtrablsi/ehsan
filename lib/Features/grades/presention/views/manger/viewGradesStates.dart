part of 'viewGradesCubit.dart';

abstract class ViewGradesState {}

class ViewGradesInitial extends ViewGradesState {}

class ViewGradesLoading extends ViewGradesState {}

class ViewGradesFailure extends ViewGradesState {
  final String errMessage;

  ViewGradesFailure(this.errMessage);
}

// class ShowPassword extends ViewGradesState {
// }

class ViewGradesSuccess extends ViewGradesState {
  final GradesEntity entity;
  ViewGradesSuccess(this.entity);
}
