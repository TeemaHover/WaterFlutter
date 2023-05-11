class Business {
  int? xp;
  int? point;
  String? rank;
  String? sId;
  String? companyName;
  String? lastName;
  String? phone;
  String? type;
  String? status;
  String? createdAt;
  String? updatedAt;
  // List<Null>? certificates;

  Business({
    this.xp,
    this.point,
    this.rank,
    this.sId,
    this.companyName,
    this.lastName,
    this.phone,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    // this.certificates
  });

  Business.fromJson(Map<String, dynamic> json) {
    xp = json['xp'];
    point = json['point'];
    rank = json['rank'];
    sId = json['_id'];
    companyName = json['companyName'];
    lastName = json['lastName'];
    phone = json['phone'];
    type = json['type'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    // if (json['certificates'] != null) {
    //   certificates = <Null>[];
    //   json['certificates'].forEach((v) {
    //     certificates!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['xp'] = xp;
    data['point'] = point;
    data['rank'] = rank;
    data['_id'] = sId;
    data['companyName'] = companyName;
    data['lastName'] = lastName;
    data['phone'] = phone;
    data['type'] = type;
    data['status'] = status;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    // if (certificates != null) {
    //   data['certificates'] = certificates!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
