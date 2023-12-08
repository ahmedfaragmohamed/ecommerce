import 'package:dio/dio.dart';

import 'models_category.dart';

class CategoryRepository {
  final _dio = Dio();
  Future<CategoryGeneralResponse> getCategory() async {
    Response res = await _dio.get("https://student.valuxapps.com/api/categories");
    final data = CategoryGeneralResponse.fromJson(res.data);
    return data;
  }
}

void main() {
  CategoryRepository().getCategory();
}
