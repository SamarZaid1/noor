class StudentExamResults {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentExamResults(
      {this.success, this.responseCode, this.message, this.data});

  StudentExamResults.fromJson(Map<String, dynamic> json) {
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
  String? state;
  AExamId? aExamId;
  int? rollNo;
  AExamId? standardId;
  String? obtainMarks;
  String? result;
  bool? active;
  List<ExamAspects>? examAspects;
  String? isFaild;

  Data(
      {this.id,
      this.displayName,
      this.state,
      this.aExamId,
      this.rollNo,
      this.standardId,
      this.obtainMarks,
      this.result,
      this.active,
      this.examAspects,
      this.isFaild});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    state = json['state'];
    aExamId = json['a_exam_id'] != null
        ? new AExamId.fromJson(json['a_exam_id'])
        : null;
    rollNo = json['roll_no'];
    standardId = json['standard_id'] != null
        ? new AExamId.fromJson(json['standard_id'])
        : null;
    obtainMarks = json['obtain_marks'].toString();
    result = json['result'];
    active = json['active'];
    if (json['exam_aspects'] != null) {
      examAspects = <ExamAspects>[];
      json['exam_aspects'].forEach((v) {
        examAspects!.add(new ExamAspects.fromJson(v));
      });
    }
    isFaild = json['is_faild'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['state'] = this.state;
    if (this.aExamId != null) {
      data['a_exam_id'] = this.aExamId!.toJson();
    }
    data['roll_no'] = this.rollNo;
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    data['obtain_marks'] = this.obtainMarks;
    data['result'] = this.result;
    data['active'] = this.active;
    if (this.examAspects != null) {
      data['exam_aspects'] = this.examAspects!.map((v) => v.toJson()).toList();
    }
    data['is_faild'] = this.isFaild;
    return data;
  }
}

class AExamId {
  int? id;
  String? name;

  AExamId({this.id, this.name});

  AExamId.fromJson(Map<String, dynamic> json) {
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

class ExamAspects {
  int? id;
  String? name;
  String? examType;
  String? examDate;
  int? maximumMarks;
  int? minimumMarks;
  bool? isStandalone;
  bool? isFailed;
  List<List>? additionInvResult;
  double? studentMark;
  String? sLastUpdate;
  String? displayName;
  List<List>? createUid;
  String? createDate;
  List<List>? writeUid;
  String? writeDate;

  ExamAspects(
      {this.id,
      this.name,
      this.examType,
      this.examDate,
      this.maximumMarks,
      this.minimumMarks,
      this.isStandalone,
      this.isFailed,
      this.additionInvResult,
      this.studentMark,
      this.sLastUpdate,
      this.displayName,
      this.createUid,
      this.createDate,
      this.writeUid,
      this.writeDate});

  ExamAspects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    examType = json['exam_type'];
    examDate = json['exam_date'];
    maximumMarks = json['maximum_marks'];
    minimumMarks = json['minimum_marks'];
    isStandalone = json['is_standalone'];
    isFailed = json['is_failed'];
    if (json['addition_inv_result'] != null) {
      additionInvResult = <List>[];
      // json['addition_inv_result'].forEach((v) { additionInvResult!.add(new List.fromJson(v)); });
    }
    studentMark = json['student_mark'];
    sLastUpdate = json['__last_update'];
    displayName = json['display_name'];
    if (json['create_uid'] != null) {
      createUid = <List>[];
      //   json['create_uid'].forEach((v) { createUid!.add(new List.fromJson(v)); });
    }
    createDate = json['create_date'];
    if (json['write_uid'] != null) {
      writeUid = <List>[];
      //  json['write_uid'].forEach((v) { writeUid!.add(new List.fromJson(v)); });
    }
    writeDate = json['write_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['exam_type'] = this.examType;
    data['exam_date'] = this.examDate;
    data['maximum_marks'] = this.maximumMarks;
    data['minimum_marks'] = this.minimumMarks;
    data['is_standalone'] = this.isStandalone;
    data['is_failed'] = this.isFailed;
    if (this.additionInvResult != null) {
      //  data['addition_inv_result'] = this.additionInvResult!.map((v) => v.toJson()).toList();
    }
    data['student_mark'] = this.studentMark;
    data['__last_update'] = this.sLastUpdate;
    data['display_name'] = this.displayName;
    if (this.createUid != null) {
      //data['create_uid'] = this.createUid!.map((v) => v.toJson()).toList();
    }
    data['create_date'] = this.createDate;
    if (this.writeUid != null) {
      // data['write_uid'] = this.writeUid!.map((v) => v.toJson()).toList();
    }
    data['write_date'] = this.writeDate;
    return data;
  }
}

class AdditionInvResult {
  AdditionInvResult();

  AdditionInvResult.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Data3 {
  int? id;
  String? displayName;
  String? state;
  AExamId? aExamId;
  int? rollNo;
  AExamId? standardId;
  int? obtainMarks;
  String? result;
  bool? active;
  List<ExamAspects>? examAspects;
  bool? isFaild;

  Data3(
      {this.id,
      this.displayName,
      this.state,
      this.aExamId,
      this.rollNo,
      this.standardId,
      this.obtainMarks,
      this.result,
      this.active,
      this.examAspects,
      this.isFaild});

  Data3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    state = json['state'];
    aExamId = json['a_exam_id'] != null
        ? new AExamId.fromJson(json['a_exam_id'])
        : null;
    rollNo = json['roll_no'];
    standardId = json['standard_id'] != null
        ? new AExamId.fromJson(json['standard_id'])
        : null;
    obtainMarks = json['obtain_marks'];
    result = json['result'];
    active = json['active'];
    if (json['exam_aspects'] != null) {
      examAspects = <ExamAspects>[];
      json['exam_aspects'].forEach((v) {
        examAspects!.add(new ExamAspects.fromJson(v));
      });
    }
    isFaild = json['is_faild'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['state'] = this.state;
    if (this.aExamId != null) {
      data['a_exam_id'] = this.aExamId!.toJson();
    }
    data['roll_no'] = this.rollNo;
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    data['obtain_marks'] = this.obtainMarks;
    data['result'] = this.result;
    data['active'] = this.active;
    if (this.examAspects != null) {
      data['exam_aspects'] = this.examAspects!.map((v) => v.toJson()).toList();
    }
    data['is_faild'] = this.isFaild;
    return data;
  }
}
