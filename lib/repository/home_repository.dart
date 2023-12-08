import 'package:dio/dio.dart';
import 'package:ecommerce/repository/home_models.dart';

class HomeRepository {
  final _dio = Dio();
  Future<HomeResponse> getHomeData() async {
    Response res = await _dio.get("https://student.valuxapps.com/api/home");
    final data = HomeResponse.fromJson(res.data);
    print(res.data);
    return data;

  }



}
// void main(){
//   HomeRepository().getHomeData();
// }