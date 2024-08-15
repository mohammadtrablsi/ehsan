part of 'viewMetricesForSubjectCubit.dart';

abstract class ViewMetricesforSubjectState {}

class ViewMetricesforSubjectInitial extends ViewMetricesforSubjectState {}

class ViewMetricesforSubjectLoading extends ViewMetricesforSubjectState {}

class ViewMetricesforSubjectFailure extends ViewMetricesforSubjectState {
  final String errMessage;

  ViewMetricesforSubjectFailure(this.errMessage);
}

// class ShowPassword extends ViewMetricesforSubjectState {
// }

class ViewMetricesforSubjectSuccess extends ViewMetricesforSubjectState {
  final MetricesForSubjectEntity entity;
  ViewMetricesforSubjectSuccess(this.entity);
}
