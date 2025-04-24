// ignore_for_file: camel_case_types

import 'package:musamakhalid/services/dio_service.dart';

class ProbuctApi {
  static Future<Map<String, dynamic>> getCartData() async {
    String endpoint = 'category';
    var response = await DioService.get(endpoint: endpoint);
    return response;
  }
}