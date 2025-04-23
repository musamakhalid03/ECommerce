import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();

 
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

class Category {
  final String name;
  final String image;

  Category({required this.name, required this.image});
}

class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}
