import 'package:ehsan/Features/home/data/models/homeModel.dart';
import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';





abstract class HomeRemoteDataSource {
  Future<HomeEntity> viewHome({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<HomeEntity> viewHome(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'https://ehsanschool.onrender.com/api/homePage');
    HomeEntity entity;
    entity = HomeModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

}
