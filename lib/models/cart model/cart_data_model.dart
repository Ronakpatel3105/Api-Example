import 'cart_model.dart';

class CartDataModel {
  List<CartModel> carts;
  int limit;
  int skip;
  int total;

  CartDataModel({
    required this.carts,
    required this.limit,
    required this.skip,
    required this.total,
  });

  factory CartDataModel.fromJson(Map<String, dynamic> json) {
    List<CartModel> mCarts = [];

    for (Map<String, dynamic> eachCart in json['carts']) {
      mCarts.add(CartModel.fromJson(eachCart));
    }

    return CartDataModel(
        carts: mCarts,
        limit: json['limit'],
        skip: json['skip'],
        total: json['total']);
  }
}
