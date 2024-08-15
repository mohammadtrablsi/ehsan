import 'package:ehsan/Features/Auth/data/models/loginModel.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginRemoteDataSource {
  Future<LoginEntity> makeLogin(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final ApiService apiService;

  LoginRemoteDataSourceImpl(this.apiService);

  @override
  Future<LoginEntity> makeLogin(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.post(
      headers: header,
      data: body,
      endPoint: 'studentLogin',
    );

    LoginEntity entity;
    entity = LoginModel.fromJson(response);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', entity.token ?? "noToken");
    await prefs.setString(
        'name', entity.personalDetail?.fullName ?? "noFullNam");
    await prefs.setString(
        'grade', entity.personalDetail?.classId!.name ?? "noGrade");
    await prefs.setString(
        'section', entity.personalDetail?.classId!.section ?? "noSection");
    print("temmmmmmmmmmmmmmmmmmmmmmmmmmm${prefs.get('grade')}");
    return entity;
  }
}
