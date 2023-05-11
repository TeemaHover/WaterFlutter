class Voluntary {
  String? name;
  List<Items>? items;

  Voluntary({this.name, this.items});

  Voluntary.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? title;
  int? unitPrice;
  String? symbol;
  List<IItems>? items;

  Items({this.title, this.unitPrice, this.symbol, this.items});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    unitPrice = json['unitPrice'];
    symbol = json['symbol'];
    if (json['items'] != null) {
      items = <IItems>[];
      json['items'].forEach((v) {
        items!.add(IItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['unitPrice'] = unitPrice;
    data['symbol'] = symbol;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IItems {
  String? title;
  int? value;

  IItems({this.title, this.value});

  IItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['value'] = value;
    return data;
  }
}
