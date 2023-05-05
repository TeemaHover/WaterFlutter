class Voluntary {
  String? sId;
  String? name;
  String? createdAt;
  String? updatedAt;

  Voluntary({this.sId, this.name, this.createdAt, this.updatedAt});

  Voluntary.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
