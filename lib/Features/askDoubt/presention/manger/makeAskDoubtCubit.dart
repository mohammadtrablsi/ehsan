import 'package:bloc/bloc.dart';
import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';
import 'package:ehsan/Features/askDoubt/domain/useCases/makeAskDoubtUseCase.dart';
import 'package:ehsan/Features/askDoubt/presention/views/askDoubt.dart';
import 'package:flutter/material.dart';

part 'makeAskDoubtStates.dart';

class MakeAskDoubtCubit extends Cubit<MakeAskDoubtState> {
  MakeAskDoubtCubit(this.makeAskDoubtUseCase) : super(MakeAskDoubtInitial());
  bool isPassword = true;
  TextEditingController description = TextEditingController();
  TextEditingController  title= TextEditingController();

  final MakeAskDoubtUseCase makeAskDoubtUseCase;

  Future<void> makeAskDoubt(
      Map<String, dynamic> header, Map<String, dynamic> body) async {
    emit(MakeAskDoubtLoading());
    var result = await makeAskDoubtUseCase.call(header, body);
    result.fold((failure) {
      emit(MakeAskDoubtFailure(failure.message));
    }, (_) {
      emit(MakeAskDoubtSuccess(_));
    });
  }
}
