class ProductModel {
  String? productImage;
  String? productName;
  String? productPrice;
  bool? isFavorite = false;
  int? quantity = 0;

  ProductModel({
    this.productImage,
    this.productName,
    this.productPrice,
    this.isFavorite,
    this.quantity
  });
}
