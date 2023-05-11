class Payment {
  String? voluntary;
  List<PaymentItem>? items;
  List<PaymentItem>? userItem;
  String? panelist;
  int? price;
  int? date;

  Payment(
      {this.voluntary,
      this.items,
      this.userItem,
      this.panelist,
      this.price,
      this.date});

  Payment.fromJson(Map<String, dynamic> json) {
    voluntary = json['voluntary'];
    if (json['items'] != null) {
      items = <PaymentItem>[];
      json['items'].forEach((v) {
        items!.add(PaymentItem.fromJson(v));
      });
    }
    if (json['userItem'] != null) {
      userItem = <PaymentItem>[];
      json['userItem'].forEach((v) {
        userItem!.add(PaymentItem.fromJson(v));
      });
    }
    panelist = json['panelist'];
    price = json['price'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['voluntary'] = voluntary;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (userItem != null) {
      data['userItem'] = userItem!.map((v) => v.toJson()).toList();
    }
    data['panelist'] = panelist;
    data['price'] = price;
    data['date'] = date;
    return data;
  }
}

class PaymentItem {
  String? title;
  int? unitPrice;
  int? quantity;
  String? symbol;

  PaymentItem({this.title, this.unitPrice, this.symbol, this.quantity});

  PaymentItem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    unitPrice = json['unitPrice'];
    symbol = json['symbol'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['unitPrice'] = unitPrice;
    data['symbol'] = symbol;
    data['quantity'] = quantity;
    return data;
  }
}
