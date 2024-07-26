part of 'viewEventsCubit.dart';

abstract class ViewEventsState {}

class ViewEventsInitial extends ViewEventsState {}

class ViewEventsLoading extends ViewEventsState {}

class ViewEventsFailure extends ViewEventsState {
  final String errMessage;

  ViewEventsFailure(this.errMessage);
}

// class ShowPassword extends ViewEventsState {
// }

class ViewEventsSuccess extends ViewEventsState {}
