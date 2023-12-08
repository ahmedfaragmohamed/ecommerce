import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/home");
  print(response);
}

void main() {
  getHttp();
}
