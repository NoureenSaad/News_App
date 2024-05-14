import 'package:dio/dio.dart';

import '../constants.dart';

class ApiManager {
  static late Dio dio;

  static void init() {
    dio = Dio(BaseOptions(
        baseUrl: Constants.baseURL,
        queryParameters: {"apiKey": Constants.apiKey}));
  }

  ApiManager() {
    init();
  }

  Future<Response> getRequest(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(endpoint, queryParameters: queryParameters);
      return response;
    } catch (e) {
      throw (
        requestOptions:
            RequestOptions(path: endpoint, queryParameters: queryParameters),
        error: e
      );
    }
  }

  Future<Response> postRequest(
      {required String endpoint, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.post(endpoint, data: body);
      return response;
    } catch (e) {
      throw (
        requestOptions: RequestOptions(path: endpoint),
        error: e,
      );
    }
  }
}
