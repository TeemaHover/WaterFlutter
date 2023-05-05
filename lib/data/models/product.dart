class Product {
  String? sId;
  String? business;
  String? categoryId;
  String? productName;
  List<String>? images;
  int? barcode;
  int? unit;
  int? price;
  int? minUnit;
  String? createdAt;
  String? updatedAt;

  Product(
      {this.sId,
      this.business,
      this.categoryId,
      this.productName,
      this.images,
      this.barcode,
      this.unit,
      this.price,
      this.minUnit,
      this.createdAt,
      this.updatedAt});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    business = json['business'];
    categoryId = json['categoryId'];
    productName = json['productName'];
    images = json['images'].cast<String>();
    barcode = json['barcode'];
    unit = json['unit'];
    price = json['price'];
    minUnit = json['minUnit'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['business'] = business;
    data['categoryId'] = categoryId;
    data['productName'] = productName;
    data['images'] = images;
    data['barcode'] = barcode;
    data['unit'] = unit;
    data['price'] = price;
    data['minUnit'] = minUnit;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
