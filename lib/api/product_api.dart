// services/product_api.dart

import 'package:musamakhalid/models/product_model.dart';
import 'package:musamakhalid/services/dio_service.dart';




class ProductApi {
  static Future<List<ProductData>> fetchCategoryData() async {
    try {
      final response = await DioService.get(endpoint: 'category');
 print(response);
      if (response is List) {

        return response.map((json) => ProductData.fromJson(json)).toList();
       
      } else {
        throw Exception("Invalid response format");
      }
    } catch (e) {
      throw Exception("Failed to fetch categories: $e");
    }
  }
}
