class Info {
  String? name;
  String? description;
  String? image;
  int? level;
  int? date;
  String? rank;

  Info(
      {this.name,
      this.description,
      this.image,
      this.level,
      this.date,
      this.rank});

  Info.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    level = json['level'];
    date = json['date'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['image'] = image;
    data['level'] = level;
    data['date'] = date;
    data['rank'] = rank;
    return data;
  }
}
