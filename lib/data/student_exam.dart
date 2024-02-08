class StudentExam {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentExam({this.success, this.responseCode, this.message, this.data});

  StudentExam.fromJson(Map<String, dynamic> json) {
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
  String? addtionalExamCode;
  StandardId? standardId;
  StandardId? dept;
  StandardId? subjectId;
  String? examDate;
  int? maximumMarks;
  int? minimumMarks;
  String? weightage;
  StandardId? academicYear;
  List<ExamAspects>? examAspects;
  String? totalMax;

  Data(
      {this.id,
      this.displayName,
      this.addtionalExamCode,
      this.standardId,
      this.dept,
      this.subjectId,
      this.examDate,
      this.maximumMarks,
      this.minimumMarks,
      this.weightage,
      this.academicYear,
      this.examAspects,
      this.totalMax});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    addtionalExamCode = json['addtional_exam_code'];
    standardId = json['standard_id'] != null
        ? new StandardId.fromJson(json['standard_id'])
        : null;
    dept = json['dept'] != null ? new StandardId.fromJson(json['dept']) : null;
    subjectId = json['subject_id'] != null
        ? new StandardId.fromJson(json['subject_id'])
        : null;
    examDate = json['exam_date'];
    maximumMarks = json['maximum_marks'];
    minimumMarks = json['minimum_marks'];
    weightage = json['weightage'];
    academicYear = json['academic_year'] != null
        ? new StandardId.fromJson(json['academic_year'])
        : null;
    if (json['exam_aspects'] != null) {
      examAspects = <ExamAspects>[];
      json['exam_aspects'].forEach((v) {
        examAspects!.add(new ExamAspects.fromJson(v));
      });
    }
    totalMax = json['total_max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['addtional_exam_code'] = this.addtionalExamCode;
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    if (this.dept != null) {
      data['dept'] = this.dept!.toJson();
    }
    if (this.subjectId != null) {
      data['subject_id'] = this.subjectId!.toJson();
    }
    data['exam_date'] = this.examDate;
    data['maximum_marks'] = this.maximumMarks;
    data['minimum_marks'] = this.minimumMarks;
    data['weightage'] = this.weightage;
    if (this.academicYear != null) {
      data['academic_year'] = this.academicYear!.toJson();
    }
    if (this.examAspects != null) {
      //  data['exam_aspects'] = this.examAspects!.map((v) => v.toJson()).toList();
    }
    data['total_max'] = this.totalMax;
    return data;
  }
}

class StandardId {
  int? id;
  String? name;

  StandardId({this.id, this.name});

  StandardId.fromJson(Map<String, dynamic> json) {
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
  List<List>? additionInv;
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
      this.additionInv,
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
    if (json['addition_inv'] != null) {
      additionInv = <List>[];
      json['addition_inv'].forEach((v) {
        // additionInv!.add( List.fromJson(v));
      });
    }
    sLastUpdate = json['__last_update'];
    displayName = json['display_name'];
    if (json['create_uid'] != null) {
      createUid = <List>[];
      json['create_uid'].forEach((v) {
        //createUid!.add(new List.fromJson(v)); });
      });
      createDate = json['create_date'];
      if (json['write_uid'] != null) {
        writeUid = <List>[];
        json['write_uid'].forEach((v) {
          //writeUid!.add(new List.fromJson(v)); });
        });
        writeDate = json['write_date'];
      }
    }
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
    if (this.additionInv != null) {
      // data['addition_inv'] = this.additionInv!.map((v) => v.toJson()).toList();
    }
    data['__last_update'] = this.sLastUpdate;
    data['display_name'] = this.displayName;
    if (this.createUid != null) {
      // data['create_uid'] = this.createUid!.map((v) => v.toJson()).toList();
    }
    data['create_date'] = this.createDate;
    if (this.writeUid != null) {
      // data['write_uid'] = this.writeUid!.map((v) => v.toJson()).toList();
    }
    data['write_date'] = this.writeDate;
    return data;
  }
}
