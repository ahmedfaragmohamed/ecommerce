import 'package:dio/dio.dart';
import 'package:ecommerce/repository/home_models.dart';
import 'package:ecommerce/repository/product_models.dart';

class ProductRepository {
  final _dio = Dio();
  Future<ProductResponse> getProductData() async {
    Response res = await _dio.get("https://student.valuxapps.com/api/products?category_id=40");
    final data = ProductResponse.fromJson(res.data);
    print(res.data);
    return data;
  }
}


// void main(){
//   ProductRepository().getProductData();
// }
