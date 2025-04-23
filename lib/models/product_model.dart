class ProductData {
  int? id;
  String? name;
  List<SubCategory>? subCategory;

  ProductData({this.id, this.name, this.subCategory});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['subCategory'] != null) {
      subCategory = <SubCategory>[];
      json['subCategory'].forEach((v) {
        subCategory!.add(SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'subCategory': subCategory?.map((v) => v.toJson()).toList(),
      };
}

class SubCategory {
  int? id;
  String? name;
  String? image;
  List<Products>? products;

  SubCategory({this.id, this.name, this.image, this.products});

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'products': products?.map((v) => v.toJson()).toList(),
      };
}

class Products {
  int? id;
  String? name;
  String? image;
  int? price;
  int? quantity;
  double? discountPercentage;
  bool? status;

  Products({
    this.id,
    this.name,
    this.image,
    this.price,
    this.quantity,
    this.discountPercentage,
    this.status,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    quantity = json['quantity'];
    discountPercentage = json['discountPercentage']?.toDouble();
    status = json['status'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'price': price,
        'quantity': quantity,
        'discountPercentage': discountPercentage,
        'status': status,
      };
}
class Category {
  final String name;
  final String image;

  Category({required this.name, required this.image});
}class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}
