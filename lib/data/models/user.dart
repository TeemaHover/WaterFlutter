class User {
  String? sId;
  String? firstName;
  String? lastName;
  String? shopName;
  String? registerNumber;
  String? companyRegisterNumber;
  String? phone;
  String? type;
  String? status;
  Location? location;
  CarrierDetail? carrierDetail;
  List<User>? carriers;
  String? createdAt;
  String? updatedAt;
  String? jobStatus;

  User({
    this.sId,
    this.firstName,
    this.lastName,
    this.phone,
    this.shopName,
    this.type,
    this.location,
    this.status,
    this.registerNumber,
    this.companyRegisterNumber,
    this.createdAt,
    this.updatedAt,
    this.carrierDetail,
    this.carriers,
    this.jobStatus,
  });

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    phone = json['phone'];
    lastName = json['lastName'];
    shopName = json['shopName'];
    type = json['type'];
    json['location'] != null ? Location.fromJson(json['location']) : null;
    json['carrierDetail'] != null
        ? CarrierDetail.fromJson(json['carrierDetail'])
        : null;
    status = json['status'];
    registerNumber = json['registerNumber'];
    companyRegisterNumber = json['companyRegisterNumber'];
    jobStatus = json['jobStatus'];
    if (json['carriers'] != null) {
      carriers = <User>[];
      json['carriers'].forEach((v) {
        carriers!.add(User.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['phone'] = phone;
    data['shopName'] = shopName;
    data['type'] = type;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (carrierDetail != null) {
      data['carrierDetail'] = carrierDetail!.toJson();
    }
    data['status'] = status;
    data['registerNumber'] = registerNumber;
    data['companyRegisterNumber'] = companyRegisterNumber;
    data['jobStatus'] = jobStatus;
    if (carriers != null) {
      data['carriers'] = carriers!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Location {
  String? lat;
  String? lng;

  Location({
    this.lat,
    this.lng,
  });

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class CarrierDetail {
  String? product;
  double? unit;
  List<String>? returnedProduct;

  CarrierDetail({
    this.product,
    this.unit,
    this.returnedProduct,
  });

  CarrierDetail.fromJson(Map<String, dynamic> json) {
    product = json['lat'];
    unit = json['lng'];
    returnedProduct = json['returnedProduct'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = product;
    data['lng'] = unit;
    if (returnedProduct != null) {
      data['returnedProduct'] = returnedProduct;
    }
    return data;
  }
}
