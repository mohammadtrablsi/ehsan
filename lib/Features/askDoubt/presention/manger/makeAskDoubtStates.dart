part of 'makeAskDoubtCubit.dart';

abstract class MakeAskDoubtState {}

class MakeAskDoubtInitial extends MakeAskDoubtState {}

class MakeAskDoubtLoading extends MakeAskDoubtState {}

class MakeAskDoubtFailure extends MakeAskDoubtState {
  final String errMessage;

  MakeAskDoubtFailure(this.errMessage);
}

// class ShowPassword extends MakeAskDoubtState {
// }

class MakeAskDoubtSuccess extends MakeAskDoubtState {}
