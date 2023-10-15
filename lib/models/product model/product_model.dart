class ProductModel {
  String brand;
  String category;
  String description;
  double discountPercentage;
  int id;
  List<String> images;
  double price;
  double rating;
  int stock;
  String thumbnail;
  String title;

  ProductModel({
    required this.brand,
    required this.category,
    required this.description,
    required this.discountPercentage,
    required this.id,
    required this.images,
    required this.price,
    required this.rating,
    required this.stock,
    required this.thumbnail,
    required this.title,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      brand: json['brand'],
      category: json['category'],
      description: json['description'],
      discountPercentage: json['discountPercentage'],
      id: json['id'],
      images: json['images'],
      price: json['price'],
      rating: json['rating'],
      stock: json['stock'],
      thumbnail: json['thumbnail'],
      title: json['title'],
    );
  }
}
