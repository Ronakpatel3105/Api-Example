import 'package:api_example/models/product%20model/product_model.dart';

class ProductDataModel {
  int limit;
  List<ProductModel> product;
  int skip;
  int total;

  ProductDataModel({
    required this.limit,
    required this.product,
    required this.skip,
    required this.total,
  });

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    List<ProductModel> mProduct = [];

    for (Map<String, dynamic> eachProduct in json['products']) {
      mProduct.add(ProductModel.fromJson(eachProduct));
    }
    return ProductDataModel(
        limit: json['limit'],
        product: mProduct,
        skip: json['skip'],
        total: json['total']);
  }
}
