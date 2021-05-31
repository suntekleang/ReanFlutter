import 'package:dio/dio.dart';

getUser(int page) async {
  return await Dio()
      .get("https://reqres.in/api/users", queryParameters: {"page": page});
}
