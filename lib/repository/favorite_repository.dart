import 'package:dio/dio.dart';
import 'package:ecommerce/repository/models_favorite_prudact.dart';


class FavoriteRepository {
  final _dio = Dio();
  Future<FavoriteProductResponse> getFavoriteProduct(int id ) async {
    Response res = await _dio.get("https://student.valuxapps.com/api/categories/$id");
    final data = FavoriteProductResponse.fromJson(res.data);
    return data;
  }



}



