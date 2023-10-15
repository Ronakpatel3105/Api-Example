import 'package:api_example/models/cart%20model/product_model.dart';

class CartModel {
  int discountedTotal;
  int id;
  List<ProductModel> products;
  int total;
  int totalProducts;
  int totalQuantity;
  int userId;

  CartModel({
    required this.discountedTotal,
    required this.id,
    required this.products,
    required this.total,
    required this.totalProducts,
    required this.totalQuantity,
    required this.userId,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    List<ProductModel> mProducts = [];

    for (Map<String, dynamic> eachProducts in json['products']) {
      mProducts.add(ProductModel.fromJson(eachProducts));
    }

    return CartModel(
      discountedTotal: json['discountedTotal'],
      id: json['id'],
      products: mProducts,
      total: json['total'],
      totalProducts: json['totalProducts'],
      totalQuantity: json['totalQuantity'],
      userId: json['userId'],
    );
  }
}
