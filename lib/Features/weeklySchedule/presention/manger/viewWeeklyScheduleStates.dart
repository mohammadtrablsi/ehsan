part of 'viewWeeklyScheduleCubit.dart';

abstract class ViewWeeklyScheduleState {}

class ViewWeeklyScheduleInitial extends ViewWeeklyScheduleState {}

class ViewWeeklyScheduleLoading extends ViewWeeklyScheduleState {}

class ViewWeeklyScheduleFailure extends ViewWeeklyScheduleState {
  final String errMessage;

  ViewWeeklyScheduleFailure(this.errMessage);
}

// class ShowPassword extends ViewWeeklyScheduleState {
// }

class ViewWeeklyScheduleSuccess extends ViewWeeklyScheduleState {}
