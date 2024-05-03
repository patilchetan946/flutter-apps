class ProductModel {
  String? productImage;
  String? productName;
  String? price;
  bool isFavrouite = false;
  int? quantity = 0;

  ProductModel({
    this.productImage,
    this.productName,
    this.price,
    this.isFavrouite = false,
    this.quantity = 0,
  });
}
