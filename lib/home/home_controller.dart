import 'package:get/get.dart';
import 'package:musamakhalid/api/product_api.dart';
import 'package:musamakhalid/models/product_model.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
late Future<List<ProductData>> futureCategories;
  @override
  void onInit() {
    super.onInit();
    futureCategories = ProductApi.fetchCategoryData();
  }
 
  final List<Category> categories = [
    Category(name: "Bags", image: "assets/images/png/Ellipse 8.png"),
    Category(name: "Shoes", image: "assets/images/png/Ellipse 8.png"),
    Category(name: "Watches", image: "assets/images/png/Ellipse 8.png"),
    Category(name: "Hats", image: "assets/images/png/Ellipse 8.png"),
  ];

  
  final List<Product> products = [
    Product(name: "Hoodie", price: 49.99, image: "assets/images/png/pic.png"),
    Product(name: "Jeans", price: 39.99, image: "assets/images/png/pic.png"),
    Product(name: "Sneakers", price: 59.99, image: "assets/images/png/pic.png"),
    Product(name: "Watch", price: 99.99, image: "assets/images/png/pic.png"),
  ];
}



