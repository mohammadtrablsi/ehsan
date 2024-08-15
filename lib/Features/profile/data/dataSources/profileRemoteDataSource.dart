

import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/Features/profile/data/models/profileModel.dart';
import 'package:ehsan/core/utils/api_service.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileEntity> viewProfile(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final ApiService apiService;

  ProfileRemoteDataSourceImpl(this.apiService);

  @override
  Future<ProfileEntity> viewProfile(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header,
        data: body,
        endPoint: 'showStudentProfile');
    ProfileEntity entity;
    entity = ProfileModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }
}
