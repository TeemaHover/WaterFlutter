import 'package:app/data/data.dart';

class Event {
  String? sId;
  String? name;
  String? description;
  Business? business;
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
      this.description,
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
    description = json['description'];
    business =
        json['business'] != null ? Business.fromJson(json['business']) : null;
    members = json['members'];
    registerMembers = json['registerMembers'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    exec = json['exec'];
    if (json['execEvent'] != null) {
      execEvent = <ExecEvent>[];
      json['execEvent'].forEach((v) {
        execEvent!.add(ExecEvent.fromJson(v));
      });
    }
    users = json['users'].cast<String>();
    if (json['sale'] != null) {
      sale = <Sale>[];
      json['sale'].forEach((v) {
        sale!.add(Sale.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    if (business != null) {
      data['business'] = business!.toJson();
    }
    data['description'] = description;
    data['members'] = members;
    data['registerMembers'] = registerMembers;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    data['exec'] = exec;
    if (execEvent != null) {
      data['execEvent'] = execEvent!.map((v) => v.toJson()).toList();
    }
    data['users'] = users;
    if (sale != null) {
      data['sale'] = sale!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
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
        detail!.add(Detail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['type'] = type;
    if (detail != null) {
      data['detail'] = detail!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['name'] = name;
    data['unit'] = unit;
    return data;
  }
}
