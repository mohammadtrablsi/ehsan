part of 'viewInfringementCubit.dart';

abstract class ViewInfringementState {}

class ViewInfringementInitial extends ViewInfringementState {}

class ViewInfringementLoading extends ViewInfringementState {}

class ViewInfringementFailure extends ViewInfringementState {
  final String errMessage;

  ViewInfringementFailure(this.errMessage);
}

// class ShowPassword extends ViewInfringementState {
// }

class ViewInfringementSuccess extends ViewInfringementState {
  final List<InfringementEntity> entity;
  ViewInfringementSuccess(this.entity);
}
