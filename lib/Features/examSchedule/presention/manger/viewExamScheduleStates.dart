part of 'viewExamScheduleCubit.dart';

abstract class ViewExamScheduleState {}

class ViewExamScheduleInitial extends ViewExamScheduleState {}

class ViewExamScheduleLoading extends ViewExamScheduleState {}

class ViewExamScheduleFailure extends ViewExamScheduleState {
  final String errMessage;

  ViewExamScheduleFailure(this.errMessage);
}

// class ShowPassword extends ViewExamScheduleState {
// }

class ViewExamScheduleSuccess extends ViewExamScheduleState {
  final List<ExamScheduleEntity> entity;
  ViewExamScheduleSuccess(this.entity);
}
