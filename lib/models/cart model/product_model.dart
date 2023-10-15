class ProductModel {
  int discountedPrice;
  double discountPercentage;
  int id;
  int price;
  int quantity;
  String title;
  int total;

  ProductModel({
    required this.discountedPrice,
    required this.discountPercentage,
    required this.id,
    required this.price,
    required this.quantity,
    required this.title,
    required this.total,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      discountedPrice: json['discountedPrice'],
      discountPercentage: json['discountPercentage'],
      id: json['id'],
      price: json['price'],
      quantity: json['quantity'],
      title: json['title'],
      total: json['total'],
    );
  }
}
