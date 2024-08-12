part of 'viewDownloadFilesCubit.dart';

abstract class ViewDownlaodFilesState {}

class ViewDownlaodFilesInitial extends ViewDownlaodFilesState {}

class ViewDownlaodFilesLoading extends ViewDownlaodFilesState {}

class ViewDownlaodFilesFailure extends ViewDownlaodFilesState {
  final String errMessage;

  ViewDownlaodFilesFailure(this.errMessage);
}

// class ShowPassword extends ViewDownlaodFilesState {
// }

class ViewDownlaodFilesSuccess extends ViewDownlaodFilesState {
  final List<DownloadFilesEntity> entities;
  ViewDownlaodFilesSuccess(this.entities);
}
