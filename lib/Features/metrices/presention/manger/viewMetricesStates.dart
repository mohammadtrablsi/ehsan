part of 'viewMetricesCubit.dart';

abstract class ViewMetricesState {}

class ViewMetricesInitial extends ViewMetricesState {}

class ViewMetricesLoading extends ViewMetricesState {}

class ViewMetricesFailure extends ViewMetricesState {
  final String errMessage;

  ViewMetricesFailure(this.errMessage);
}

// class ShowPassword extends ViewMetricesState {
// }

class ViewMetricesSuccess extends ViewMetricesState {}
