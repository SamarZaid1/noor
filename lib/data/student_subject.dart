class StudentSubject {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentSubject({this.success, this.responseCode, this.message, this.data});

  StudentSubject.fromJson(Map<String, dynamic> json) {
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
  String? code;
  int? maximumMarks;
  int? minimumMarks;
  String? weightage;
  String? isPractical;
  SchoolId? schoolId;
  SchoolId? divisionId;

  Data(
      {this.id,
        this.displayName,
        this.code,
        this.maximumMarks,
        this.minimumMarks,
        this.weightage,
        this.isPractical,
        this.schoolId,
        this.divisionId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    code = json['code'];
    maximumMarks = json['maximum_marks'];
    minimumMarks = json['minimum_marks'];
    weightage = json['weightage'];
    isPractical = json['is_practical'];
    schoolId = json['school_id'] != null
        ? new SchoolId.fromJson(json['school_id'])
        : null;
    divisionId = json['division_id'] != null
        ? new SchoolId.fromJson(json['division_id'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['code'] = this.code;
    data['maximum_marks'] = this.maximumMarks;
    data['minimum_marks'] = this.minimumMarks;
    data['weightage'] = this.weightage;
    data['is_practical'] = this.isPractical;
    if (this.schoolId != null) {
      data['school_id'] = this.schoolId!.toJson();
    }
    if (this.divisionId != null) {
      data['division_id'] = this.divisionId!.toJson();
    }
    return data;
  }
}

class SchoolId {
  int? id;
  String? name;

  SchoolId({this.id, this.name});

  SchoolId.fromJson(Map<String, dynamic> json) {
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