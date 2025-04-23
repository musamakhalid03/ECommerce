import 'package:dio/dio.dart';

class DioService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://tp-flutter-test.vercel.app/v1/",
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      validateStatus: (status) => status != null && status >= 200 && status < 300,
    ),
  );

  static Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  static dynamic _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Error: ${response.statusCode}, ${response.statusMessage}");
    }
  }

  static dynamic _handleError(dynamic error) {
    if (error is DioError) {
      return "Error: ${error.response?.statusCode}, ${error.message}";
    }
    return "Unexpected error occurred: $error";
  }
}
