import 'package:ehsan/Features/metrices/data/models/metricesModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';





abstract class MetricesRemoteDataSource {
  Future<MetricesEntity> viewMetrices({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class MetricesRemoteDataSourceImpl extends MetricesRemoteDataSource {
  final ApiService apiService;

  MetricesRemoteDataSourceImpl(this.apiService);

  @override
  Future<MetricesEntity> viewMetrices(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'https://dummyjson.com/auth/Metrices');
    MetricesEntity entity;
    entity = MetricesModel.fromJson(response);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('userId', entity.id);
    print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

}
