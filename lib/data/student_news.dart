class StudentNews {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentNews({this.success, this.responseCode, this.message, this.data});

  StudentNews.fromJson(Map<String, dynamic> json) {
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
  String? subject;
  String? description;
  String? date;
  String? image;
  String? color;

  Data(
      {this.id,
      this.displayName,
      this.subject,
      this.description,
      this.image,
      this.date,
      this.color});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    subject = json['subject'];
    description = json['description'];
    image = json['image'];
    date = json['date'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['subject'] = this.subject;
    data['description'] = this.description;
    data['image'] = this.image;
    data['date'] = this.date;
    data['color'] = this.color;
    return data;
  }
}
