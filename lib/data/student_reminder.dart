class StudentReminder {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentReminder({this.success, this.responseCode, this.message, this.data});

  StudentReminder.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    responseCode = json['responseCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['responseCode'] = this.responseCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? displayName;
  StuId? stuId;
  String? date;
  String? description;
  String? color;

  Data(
      {this.id,
      this.displayName,
      this.stuId,
      this.date,
      this.description,
      this.color});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    stuId = json['stu_id'] != null ? new StuId.fromJson(json['stu_id']) : null;
    date = json['date'];
    description = json['description'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.stuId != null) {
      data['stu_id'] = this.stuId!.toJson();
    }
    data['date'] = this.date;
    data['description'] = this.description;
    data['color'] = this.color;
    return data;
  }
}

class StuId {
  int? id;
  String? name;

  StuId({this.id, this.name});

  StuId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
