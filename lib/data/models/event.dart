class Event {
  String? sId;
  String? name;
  String? business;
  int? members;
  int? registerMembers;
  int? startDate;
  int? endDate;
  String? exec;
  List<ExecEvent>? execEvent;
  List<String>? users;
  List<Sale>? sale;

  Event(
      {this.sId,
      this.name,
      this.business,
      this.members,
      this.registerMembers,
      this.startDate,
      this.endDate,
      this.exec,
      this.execEvent,
      this.users,
      this.sale});

  Event.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    business = json['business'];
    members = json['members'];
    registerMembers = json['registerMembers'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    exec = json['exec'];
    if (json['execEvent'] != null) {
      execEvent = <ExecEvent>[];
      json['execEvent'].forEach((v) {
        execEvent!.add(new ExecEvent.fromJson(v));
      });
    }
    users = json['users'].cast<String>();
    if (json['sale'] != null) {
      sale = <Sale>[];
      json['sale'].forEach((v) {
        sale!.add(new Sale.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['business'] = this.business;
    data['members'] = this.members;
    data['registerMembers'] = this.registerMembers;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['exec'] = this.exec;
    if (this.execEvent != null) {
      data['execEvent'] = this.execEvent!.map((v) => v.toJson()).toList();
    }
    data['users'] = this.users;
    if (this.sale != null) {
      data['sale'] = this.sale!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExecEvent {
  String? name;
  String? description;

  ExecEvent({this.name, this.description});

  ExecEvent.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}

class Sale {
  String? name;
  String? description;
  String? type;
  List<Detail>? detail;

  Sale({this.name, this.description, this.type, this.detail});

  Sale.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    type = json['type'];
    if (json['detail'] != null) {
      detail = <Detail>[];
      json['detail'].forEach((v) {
        detail!.add(new Detail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['type'] = this.type;
    if (this.detail != null) {
      data['detail'] = this.detail!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Detail {
  String? value;
  String? name;
  int? unit;

  Detail({this.value, this.name, this.unit});

  Detail.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    name = json['name'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['name'] = this.name;
    data['unit'] = this.unit;
    return data;
  }
}