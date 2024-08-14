
import 'package:dio/dio.dart';
import 'package:ehsan/Features/Infringement/data/models/InfringementModel.dart';
import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class InfringementRemoteDataSource {
  Future<List<InfringementEntity>> viewInfringement(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class InfringementRemoteDataSourceImpl extends InfringementRemoteDataSource {
  // final Dio _dio=Dio();
  ApiService apiService=ApiService(Dio());

  InfringementRemoteDataSourceImpl();

  @override
  Future<List<InfringementEntity>> viewInfringement(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header,
        data: body,
        endPoint:
            'https://ehsanschool.onrender.com/api/showStudentViolation');

    // InfringementEntity entity;
    // entity = InfringementModel.fromJson(response);
     List<InfringementEntity> entity = getInfringementList(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }
      List<InfringementEntity> getInfringementList(Map<String, dynamic> data) {
    List<InfringementEntity> files = [];
    for (var fileMap in data['data']) {
      files.add(InfringementModel.fromJson(fileMap));
    }
    return files;
  }
}
