class StudentTimeTable {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentTimeTable({this.success, this.responseCode, this.message, this.data});

  StudentTimeTable.fromJson(Map<String, dynamic> json) {
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
  TeacherId? teacherId;
  TeacherId? subjectId;
  TeacherId? tableId;
  double? startTime;
  double? endTime;
  String? weekDay;
  TeacherId? classRoomId;
  TeacherId? standardId;
  TeacherId? division;
  TeacherId? yearId;
  String? timetableType;
  TeacherId? userId;
  String? description;
  String? exmDate;
  String? dayOfWeek;

  Data(
      {this.id,
      this.displayName,
      this.teacherId,
      this.subjectId,
      this.tableId,
      this.startTime,
      this.endTime,
      this.weekDay,
      this.classRoomId,
      this.standardId,
      this.division,
      this.yearId,
      this.timetableType,
      this.userId,
      this.description,
      this.exmDate,
      this.dayOfWeek});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    teacherId = json['teacher_id'] != null
        ? new TeacherId.fromJson(json['teacher_id'])
        : null;
    subjectId = json['subject_id'] != null
        ? new TeacherId.fromJson(json['subject_id'])
        : null;
    tableId = json['table_id'] != null
        ? new TeacherId.fromJson(json['table_id'])
        : null;
    startTime = json['start_time'];
    endTime = json['end_time'];
    weekDay = json['week_day'];
    classRoomId = json['class_room_id'] != null
        ? new TeacherId.fromJson(json['class_room_id'])
        : null;
    standardId = json['standard_id'] != null
        ? new TeacherId.fromJson(json['standard_id'])
        : null;
    division = json['division'] != null
        ? new TeacherId.fromJson(json['division'])
        : null;
    yearId = json['year_id'] != null
        ? new TeacherId.fromJson(json['year_id'])
        : null;
    timetableType = json['timetable_type'];
    userId = json['user_id'] != null
        ? new TeacherId.fromJson(json['user_id'])
        : null;
    description = json['description'];
    exmDate = json['exm_date'];
    dayOfWeek = json['day_of_week'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.teacherId != null) {
      data['teacher_id'] = this.teacherId!.toJson();
    }
    if (this.subjectId != null) {
      data['subject_id'] = this.subjectId!.toJson();
    }
    if (this.tableId != null) {
      data['table_id'] = this.tableId!.toJson();
    }
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['week_day'] = this.weekDay;
    if (this.classRoomId != null) {
      data['class_room_id'] = this.classRoomId!.toJson();
    }
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    if (this.division != null) {
      data['division'] = this.division!.toJson();
    }
    if (this.yearId != null) {
      data['year_id'] = this.yearId!.toJson();
    }
    data['timetable_type'] = this.timetableType;
    if (this.userId != null) {
      data['user_id'] = this.userId!.toJson();
    }
    data['description'] = this.description;
    data['exm_date'] = this.exmDate;
    data['day_of_week'] = this.dayOfWeek;
    return data;
  }
}

class TeacherId {
  int? id;
  String? name;

  TeacherId({this.id, this.name});

  TeacherId.fromJson(Map<String, dynamic> json) {
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
