import 'package:ehsan/Features/metrices/data/models/metricesForSubjectModel.dart';
import 'package:ehsan/Features/metrices/data/models/metricesModel.dart';
import 'package:ehsan/Features/metrices/data/models/subjectsModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MetricesRemoteDataSource {
  Future<MetricesEntity> viewMetrices(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
  Future<MetricesForSubjectEntity> viewMetricesForSubject(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body,required String id});
  Future<SubjectsEntity> viewSubjects(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class MetricesRemoteDataSourceImpl extends MetricesRemoteDataSource {
  final ApiService apiService;

  MetricesRemoteDataSourceImpl(this.apiService);

  @override
  Future<MetricesEntity> viewMetrices(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header, data: body, endPoint: 'showStudentMarks');
    MetricesEntity entity;
    entity = MetricesModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

  @override
  Future<MetricesForSubjectEntity> viewMetricesForSubject(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body,required String id}) async {
    var response = await apiService.get(
        headers: header,
        data: body,
        endPoint: 'showStudentMarks/$id');
    MetricesForSubjectEntity entity;
    entity = MetricesForSubjectModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${response}");
    return entity;
  }

  @override
  Future<SubjectsEntity> viewSubjects(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header, data: body, endPoint: 'showSubjectForStudent');
    SubjectsEntity entity;
    entity = SubjectsModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }
}
