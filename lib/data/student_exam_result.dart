
class StudentExamResults {
  bool? success;
  int? responseCode;
  String? message;
  Data? data;

  StudentExamResults({this.success, this.responseCode, this.message, this.data});

  StudentExamResults.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    responseCode = json['responseCode'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['responseCode'] = this.responseCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? displayName;
  List<Null>? familyConIds;
  UserId? userId;
  String? pid;
  String? regCode;
  String? studentCode;
  bool? contactPhone;
  bool? contactMobile;
  int? rollNo;
  String? photo;
  String? admissionDate;
  String? middle;
  String? last;
  String? gender;
  String? dateOfBirth;
  int? age;
  bool? maritualStatus;
  List<Null>? referenceIds;
  List<Null>? previousSchoolIds;
  bool? doctor;
  bool? designation;
  bool? doctorPhone;
  bool? bloodGroup;
  int? height;
  int? weight;
  bool? eye;
  bool? ear;
  bool? noseThroat;
  bool? respiratory;
  bool? cardiovascular;
  bool? neurological;
  bool? muskoskeletal;
  bool? dermatological;
  bool? bloodPressure;
  bool? remark;
  UserId? schoolId;
  String? state;
  List<Null>? historyIds;
  List<Null>? certificateIds;
  List<Null>? studentDisciplineLine;
  List<Null>? document;
  List<Null>? description;
  List<Null>? awardList;
  bool? acadamicYear;
  UserId? divisionId;
  UserId? standardId;
  bool? terminateReason;
  bool? active;
  bool? teachrUserGrp;
  bool? idNationalType;
  bool? number;
  bool? record;
  bool? paperRecord;
  bool? releasePlace;
  bool? releaseDate;
  bool? documentNumber;
  bool? graduationPlace;
  bool? mangerialEducation;
  bool? educationBranch;
  bool? graduationYear;
  bool? finalGrade;
  bool? iraqiNationalityPlace;
  bool? nationalityNo;
  bool? nationalityDate;
  bool? previousAddress;
  bool? currentAddress;
  bool? nearestPoint;
  bool? eduType;
  bool? originalDoc;
  bool? medicalExamination;
  bool? pic;
  bool? eduCust;
  bool? unified;
  bool? card;
  bool? nation;
  bool? residenceCard;
  bool? tamoin;
  bool? privateChannel;
  bool? nocosatNotes;
  bool? title;
  bool? studentResult;
  bool? failYears;
  bool? managerOrder;
  bool? acceptanceChannel;
  bool? managerOrder1;
  bool? yearAccept;
  bool? acceptanceStudent;
  String? statusStudent;
  bool? eduYearOrder;
  bool? empStudent;
  bool? birthPlace;
  bool? fatherPhone;
  bool? fatherJob;
  bool? motherPhone;
  bool? motherJob;
  List<Null>? examResultsIds;
  List<ExamResults>? examResults;

  Data({this.id, this.displayName, this.familyConIds, this.userId, this.pid, this.regCode, this.studentCode, this.contactPhone, this.contactMobile, this.rollNo, this.photo, this.admissionDate, this.middle, this.last, this.gender, this.dateOfBirth, this.age, this.maritualStatus, this.referenceIds, this.previousSchoolIds, this.doctor, this.designation, this.doctorPhone, this.bloodGroup, this.height, this.weight, this.eye, this.ear, this.noseThroat, this.respiratory, this.cardiovascular, this.neurological, this.muskoskeletal, this.dermatological, this.bloodPressure, this.remark, this.schoolId, this.state, this.historyIds, this.certificateIds, this.studentDisciplineLine, this.document, this.description, this.awardList, this.acadamicYear, this.divisionId, this.standardId, this.terminateReason, this.active, this.teachrUserGrp, this.idNationalType, this.number, this.record, this.paperRecord, this.releasePlace, this.releaseDate, this.documentNumber, this.graduationPlace, this.mangerialEducation, this.educationBranch, this.graduationYear, this.finalGrade, this.iraqiNationalityPlace, this.nationalityNo, this.nationalityDate, this.previousAddress, this.currentAddress, this.nearestPoint, this.eduType, this.originalDoc, this.medicalExamination, this.pic, this.eduCust, this.unified, this.card, this.nation, this.residenceCard, this.tamoin, this.privateChannel, this.nocosatNotes, this.title, this.studentResult, this.failYears, this.managerOrder, this.acceptanceChannel, this.managerOrder1, this.yearAccept, this.acceptanceStudent, this.statusStudent, this.eduYearOrder, this.empStudent, this.birthPlace, this.fatherPhone, this.fatherJob, this.motherPhone, this.motherJob, this.examResultsIds, this.examResults});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    if (json['family_con_ids'] != null) {
      familyConIds = <Null>[];
     // json['family_con_ids'].forEach((v) { familyConIds!.add(new Null.fromJson(v)); });
    }
    userId = json['user_id'] != null ? new UserId.fromJson(json['user_id']) : null;
    pid = json['pid'];
    regCode = json['reg_code'];
    studentCode = json['student_code'];
    contactPhone = json['contact_phone'];
    contactMobile = json['contact_mobile'];
    rollNo = json['roll_no'];
    photo = json['photo'];
    admissionDate = json['admission_date'];
    middle = json['middle'];
    last = json['last'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'];
    age = json['age'];
    maritualStatus = json['maritual_status'];
    if (json['reference_ids'] != null) {
      referenceIds = <Null>[];
    //  json['reference_ids'].forEach((v) { referenceIds!.add(new Null.fromJson(v)); });
    }
    if (json['previous_school_ids'] != null) {
      previousSchoolIds = <Null>[];
     // json['previous_school_ids'].forEach((v) { previousSchoolIds!.add(new Null.fromJson(v)); });
    }
    doctor = json['doctor'];
    designation = json['designation'];
    doctorPhone = json['doctor_phone'];
    bloodGroup = json['blood_group'];
    height = json['height'];
    weight = json['weight'];
    eye = json['eye'];
    ear = json['ear'];
    noseThroat = json['nose_throat'];
    respiratory = json['respiratory'];
    cardiovascular = json['cardiovascular'];
    neurological = json['neurological'];
    muskoskeletal = json['muskoskeletal'];
    dermatological = json['dermatological'];
    bloodPressure = json['blood_pressure'];
    remark = json['remark'];
    schoolId = json['school_id'] != null ? new UserId.fromJson(json['school_id']) : null;
    state = json['state'];
    if (json['history_ids'] != null) {
      historyIds = <Null>[];
     // json['history_ids'].forEach((v) { historyIds!.add(new Null.fromJson(v)); });
    }
    if (json['certificate_ids'] != null) {
      certificateIds = <Null>[];
      //json['certificate_ids'].forEach((v) { certificateIds!.add(new Null.fromJson(v)); });
    }
    if (json['student_discipline_line'] != null) {
      studentDisciplineLine = <Null>[];
     // json['student_discipline_line'].forEach((v) { studentDisciplineLine!.add(new Null.fromJson(v)); });
    }
    if (json['document'] != null) {
      document = <Null>[];
     // json['document'].forEach((v) { document!.add(new Null.fromJson(v)); });
    }
    if (json['description'] != null) {
      description = <Null>[];
     // json['description'].forEach((v) { description!.add(new Null.fromJson(v)); });
    }
    if (json['award_list'] != null) {
      awardList = <Null>[];
      //json['award_list'].forEach((v) { awardList!.add(new Null.fromJson(v)); });
    }
    acadamicYear = json['Acadamic_year'];
    divisionId = json['division_id'] != null ? new UserId.fromJson(json['division_id']) : null;
    standardId = json['standard_id'] != null ? new UserId.fromJson(json['standard_id']) : null;
    terminateReason = json['terminate_reason'];
    active = json['active'];
    teachrUserGrp = json['teachr_user_grp'];
    idNationalType = json['id_national_type'];
    number = json['number'];
    record = json['record'];
    paperRecord = json['paper_record'];
    releasePlace = json['release_place'];
    releaseDate = json['release_date'];
    documentNumber = json['document_number'];
    graduationPlace = json['graduation_place'];
    mangerialEducation = json['mangerial_education'];
    educationBranch = json['education_branch'];
    graduationYear = json['graduation_year'];
    finalGrade = json['final_grade'];
    iraqiNationalityPlace = json['iraqi_nationality_place'];
    nationalityNo = json['nationality_no'];
    nationalityDate = json['nationality_date'];
    previousAddress = json['previous_address'];
    currentAddress = json['current_address'];
    nearestPoint = json['nearest_point'];
    eduType = json['edu_type'];
    originalDoc = json['original_doc'];
    medicalExamination = json['medical_examination'];
    pic = json['pic'];
    eduCust = json['edu_cust'];
    unified = json['unified'];
    card = json['card'];
    nation = json['nation'];
    residenceCard = json['residence_card'];
    tamoin = json['tamoin'];
    privateChannel = json['private_channel'];
    nocosatNotes = json['nocosat_notes'];
    title = json['title'];
    studentResult = json['student_result'];
    failYears = json['fail_years'];
    managerOrder = json['manager_order'];
    acceptanceChannel = json['acceptance_channel'];
    managerOrder1 = json['manager_order1'];
    yearAccept = json['year_accept'];
    acceptanceStudent = json['acceptance_student'];
    statusStudent = json['status_student'];
    eduYearOrder = json['edu_year_order'];
    empStudent = json['emp_student'];
    birthPlace = json['birth_place'];
    fatherPhone = json['father_phone'];
    fatherJob = json['father_job'];
    motherPhone = json['mother_phone'];
    motherJob = json['mother_job'];
    if (json['exam_results_ids'] != null) {
      examResultsIds = <Null>[];
     // json['exam_results_ids'].forEach((v) { examResultsIds!.add(new Null.fromJson(v)); });
    }
    if (json['exam_results'] != null) {
      examResults = <ExamResults>[];
      json['exam_results'].forEach((v) { examResults!.add(new ExamResults.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.familyConIds != null) {
     // data['family_con_ids'] = this.familyConIds!.map((v) => v.toJson()).toList();
    }
    if (this.userId != null) {
      data['user_id'] = this.userId!.toJson();
    }
    data['pid'] = this.pid;
    data['reg_code'] = this.regCode;
    data['student_code'] = this.studentCode;
    data['contact_phone'] = this.contactPhone;
    data['contact_mobile'] = this.contactMobile;
    data['roll_no'] = this.rollNo;
    data['photo'] = this.photo;
    data['admission_date'] = this.admissionDate;
    data['middle'] = this.middle;
    data['last'] = this.last;
    data['gender'] = this.gender;
    data['date_of_birth'] = this.dateOfBirth;
    data['age'] = this.age;
    data['maritual_status'] = this.maritualStatus;
    if (this.referenceIds != null) {
    //  data['reference_ids'] = this.referenceIds!.map((v) => v.toJson()).toList();
    }
    if (this.previousSchoolIds != null) {
     // data['previous_school_ids'] = this.previousSchoolIds!.map((v) => v.toJson()).toList();
    }
    data['doctor'] = this.doctor;
    data['designation'] = this.designation;
    data['doctor_phone'] = this.doctorPhone;
    data['blood_group'] = this.bloodGroup;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['eye'] = this.eye;
    data['ear'] = this.ear;
    data['nose_throat'] = this.noseThroat;
    data['respiratory'] = this.respiratory;
    data['cardiovascular'] = this.cardiovascular;
    data['neurological'] = this.neurological;
    data['muskoskeletal'] = this.muskoskeletal;
    data['dermatological'] = this.dermatological;
    data['blood_pressure'] = this.bloodPressure;
    data['remark'] = this.remark;
    if (this.schoolId != null) {
      data['school_id'] = this.schoolId!.toJson();
    }
    data['state'] = this.state;
    if (this.historyIds != null) {
     // data['history_ids'] = this.historyIds!.map((v) => v.toJson()).toList();
    }
    if (this.certificateIds != null) {
     // data['certificate_ids'] = this.certificateIds!.map((v) => v.toJson()).toList();
    }
    if (this.studentDisciplineLine != null) {
     // data['student_discipline_line'] = this.studentDisciplineLine!.map((v) => v.toJson()).toList();
    }
    if (this.document != null) {
      //data['document'] = this.document!.map((v) => v.toJson()).toList();
    }
    if (this.description != null) {
     // data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.awardList != null) {
   //   data['award_list'] = this.awardList!.map((v) => v.toJson()).toList();
    }
    data['Acadamic_year'] = this.acadamicYear;
    if (this.divisionId != null) {
      data['division_id'] = this.divisionId!.toJson();
    }
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    data['terminate_reason'] = this.terminateReason;
    data['active'] = this.active;
    data['teachr_user_grp'] = this.teachrUserGrp;
    data['id_national_type'] = this.idNationalType;
    data['number'] = this.number;
    data['record'] = this.record;
    data['paper_record'] = this.paperRecord;
    data['release_place'] = this.releasePlace;
    data['release_date'] = this.releaseDate;
    data['document_number'] = this.documentNumber;
    data['graduation_place'] = this.graduationPlace;
    data['mangerial_education'] = this.mangerialEducation;
    data['education_branch'] = this.educationBranch;
    data['graduation_year'] = this.graduationYear;
    data['final_grade'] = this.finalGrade;
    data['iraqi_nationality_place'] = this.iraqiNationalityPlace;
    data['nationality_no'] = this.nationalityNo;
    data['nationality_date'] = this.nationalityDate;
    data['previous_address'] = this.previousAddress;
    data['current_address'] = this.currentAddress;
    data['nearest_point'] = this.nearestPoint;
    data['edu_type'] = this.eduType;
    data['original_doc'] = this.originalDoc;
    data['medical_examination'] = this.medicalExamination;
    data['pic'] = this.pic;
    data['edu_cust'] = this.eduCust;
    data['unified'] = this.unified;
    data['card'] = this.card;
    data['nation'] = this.nation;
    data['residence_card'] = this.residenceCard;
    data['tamoin'] = this.tamoin;
    data['private_channel'] = this.privateChannel;
    data['nocosat_notes'] = this.nocosatNotes;
    data['title'] = this.title;
    data['student_result'] = this.studentResult;
    data['fail_years'] = this.failYears;
    data['manager_order'] = this.managerOrder;
    data['acceptance_channel'] = this.acceptanceChannel;
    data['manager_order1'] = this.managerOrder1;
    data['year_accept'] = this.yearAccept;
    data['acceptance_student'] = this.acceptanceStudent;
    data['status_student'] = this.statusStudent;
    data['edu_year_order'] = this.eduYearOrder;
    data['emp_student'] = this.empStudent;
    data['birth_place'] = this.birthPlace;
    data['father_phone'] = this.fatherPhone;
    data['father_job'] = this.fatherJob;
    data['mother_phone'] = this.motherPhone;
    data['mother_job'] = this.motherJob;
    if (this.examResultsIds != null) {
    //  data['exam_results_ids'] = this.examResultsIds!.map((v) => v.toJson()).toList();
    }
    if (this.examResults != null) {
      data['exam_results'] = this.examResults!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserId {
  int? id;
  String? name;

  UserId({this.id, this.name});

  UserId.fromJson(Map<String, dynamic> json) {
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

class ExamResults {
  int? id;
  String? displayName;
  String? state;
  UserId? aExamId;
  UserId? studentId;
  int? rollNo;
  UserId? standardId;
  int? obtainMarks;
  String? result;
  bool? active;
  List<ExamAspects>? examAspects;
  bool? isFaild;

  ExamResults({this.id, this.displayName, this.state, this.aExamId, this.studentId, this.rollNo, this.standardId, this.obtainMarks, this.result, this.active, this.examAspects, this.isFaild});

  ExamResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    state = json['state'];
    aExamId = json['a_exam_id'] != null ? new UserId.fromJson(json['a_exam_id']) : null;
    studentId = json['student_id'] != null ? new UserId.fromJson(json['student_id']) : null;
    rollNo = json['roll_no'];
    standardId = json['standard_id'] != null ? new UserId.fromJson(json['standard_id']) : null;
    obtainMarks = json['obtain_marks'];
    result = json['result'];
    active = json['active'];
    if (json['exam_aspects'] != null) {
      examAspects = <ExamAspects>[];
      json['exam_aspects'].forEach((v) { examAspects!.add(new ExamAspects.fromJson(v)); });
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
    if (this.studentId != null) {
      data['student_id'] = this.studentId!.toJson();
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
  int? studentMark;
  String? sLastUpdate;
  String? displayName;
  List<List>? createUid;
  String? createDate;
  List<List>? writeUid;
  String? writeDate;

  ExamAspects({this.id, this.name, this.examType, this.examDate, this.maximumMarks, this.minimumMarks, this.isStandalone, this.isFailed, this.additionInvResult, this.studentMark, this.sLastUpdate, this.displayName, this.createUid, this.createDate, this.writeUid, this.writeDate});

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
    //  json['addition_inv_result'].forEach((v) { additionInvResult!.add(new List.fromJson(v)); });
    }
    studentMark = json['student_mark'];
    sLastUpdate = json['__last_update'];
    displayName = json['display_name'];
    if (json['create_uid'] != null) {
      createUid = <List>[];
     // json['create_uid'].forEach((v) { createUid!.add(new List.fromJson(v)); });
    }
    createDate = json['create_date'];
    if (json['write_uid'] != null) {
      writeUid = <List>[];
     // json['write_uid'].forEach((v) { writeUid!.add(new List.fromJson(v)); });
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
      //data['write_uid'] = this.writeUid!.map((v) => v.toJson()).toList();
    }
    data['write_date'] = this.writeDate;
    return data;
  }
}

class AdditionInvResult {


  AdditionInvResult();

AdditionInvResult.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}

class Data2 {
  int? id;
  String? displayName;
  List<Null>? familyConIds;
  UserId? userId;
  String? pid;
  String? regCode;
  String? studentCode;
  bool? contactPhone;
  bool? contactMobile;
  int? rollNo;
  String? photo;
  String? admissionDate;
  String? middle;
  String? last;
  String? gender;
  String? dateOfBirth;
  int? age;
  bool? maritualStatus;
  List<Null>? referenceIds;
  List<Null>? previousSchoolIds;
  bool? doctor;
  bool? designation;
  bool? doctorPhone;
  bool? bloodGroup;
  int? height;
  int? weight;
  bool? eye;
  bool? ear;
  bool? noseThroat;
  bool? respiratory;
  bool? cardiovascular;
  bool? neurological;
  bool? muskoskeletal;
  bool? dermatological;
  bool? bloodPressure;
  bool? remark;
  UserId? schoolId;
  String? state;
  List<Null>? historyIds;
  List<Null>? certificateIds;
  List<Null>? studentDisciplineLine;
  List<Null>? document;
  List<Null>? description;
  List<Null>? awardList;
  bool? acadamicYear;
  UserId? divisionId;
  UserId? standardId;
  bool? terminateReason;
  bool? active;
  bool? teachrUserGrp;
  bool? idNationalType;
  bool? number;
  bool? record;
  bool? paperRecord;
  bool? releasePlace;
  bool? releaseDate;
  bool? documentNumber;
  bool? graduationPlace;
  bool? mangerialEducation;
  bool? educationBranch;
  bool? graduationYear;
  bool? finalGrade;
  bool? iraqiNationalityPlace;
  bool? nationalityNo;
  bool? nationalityDate;
  bool? previousAddress;
  bool? currentAddress;
  bool? nearestPoint;
  bool? eduType;
  bool? originalDoc;
  bool? medicalExamination;
  bool? pic;
  bool? eduCust;
  bool? unified;
  bool? card;
  bool? nation;
  bool? residenceCard;
  bool? tamoin;
  bool? privateChannel;
  bool? nocosatNotes;
  bool? title;
  bool? studentResult;
  bool? failYears;
  bool? managerOrder;
  bool? acceptanceChannel;
  bool? managerOrder1;
  bool? yearAccept;
  bool? acceptanceStudent;
  String? statusStudent;
  bool? eduYearOrder;
  bool? empStudent;
  bool? birthPlace;
  bool? fatherPhone;
  bool? fatherJob;
  bool? motherPhone;
  bool? motherJob;
  List<Null>? examResultsIds;
  List<ExamResults>? examResults;

  Data2({this.id, this.displayName, this.familyConIds, this.userId, this.pid, this.regCode, this.studentCode, this.contactPhone, this.contactMobile, this.rollNo, this.photo, this.admissionDate, this.middle, this.last, this.gender, this.dateOfBirth, this.age, this.maritualStatus, this.referenceIds, this.previousSchoolIds, this.doctor, this.designation, this.doctorPhone, this.bloodGroup, this.height, this.weight, this.eye, this.ear, this.noseThroat, this.respiratory, this.cardiovascular, this.neurological, this.muskoskeletal, this.dermatological, this.bloodPressure, this.remark, this.schoolId, this.state, this.historyIds, this.certificateIds, this.studentDisciplineLine, this.document, this.description, this.awardList, this.acadamicYear, this.divisionId, this.standardId, this.terminateReason, this.active, this.teachrUserGrp, this.idNationalType, this.number, this.record, this.paperRecord, this.releasePlace, this.releaseDate, this.documentNumber, this.graduationPlace, this.mangerialEducation, this.educationBranch, this.graduationYear, this.finalGrade, this.iraqiNationalityPlace, this.nationalityNo, this.nationalityDate, this.previousAddress, this.currentAddress, this.nearestPoint, this.eduType, this.originalDoc, this.medicalExamination, this.pic, this.eduCust, this.unified, this.card, this.nation, this.residenceCard, this.tamoin, this.privateChannel, this.nocosatNotes, this.title, this.studentResult, this.failYears, this.managerOrder, this.acceptanceChannel, this.managerOrder1, this.yearAccept, this.acceptanceStudent, this.statusStudent, this.eduYearOrder, this.empStudent, this.birthPlace, this.fatherPhone, this.fatherJob, this.motherPhone, this.motherJob, this.examResultsIds, this.examResults});

  Data2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    if (json['family_con_ids'] != null) {
      familyConIds = <Null>[];
      //json['family_con_ids'].forEach((v) { familyConIds!.add(new Null.fromJson(v)); });
    }
    userId = json['user_id'] != null ? new UserId.fromJson(json['user_id']) : null;
    pid = json['pid'];
    regCode = json['reg_code'];
    studentCode = json['student_code'];
    contactPhone = json['contact_phone'];
    contactMobile = json['contact_mobile'];
    rollNo = json['roll_no'];
    photo = json['photo'];
    admissionDate = json['admission_date'];
    middle = json['middle'];
    last = json['last'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'];
    age = json['age'];
    maritualStatus = json['maritual_status'];
    if (json['reference_ids'] != null) {
      referenceIds = <Null>[];
      //json['reference_ids'].forEach((v) { referenceIds!.add(new Null.fromJson(v)); });
    }
    if (json['previous_school_ids'] != null) {
      previousSchoolIds = <Null>[];
    //  json['previous_school_ids'].forEach((v) { previousSchoolIds!.add(new Null.fromJson(v)); });
    }
    doctor = json['doctor'];
    designation = json['designation'];
    doctorPhone = json['doctor_phone'];
    bloodGroup = json['blood_group'];
    height = json['height'];
    weight = json['weight'];
    eye = json['eye'];
    ear = json['ear'];
    noseThroat = json['nose_throat'];
    respiratory = json['respiratory'];
    cardiovascular = json['cardiovascular'];
    neurological = json['neurological'];
    muskoskeletal = json['muskoskeletal'];
    dermatological = json['dermatological'];
    bloodPressure = json['blood_pressure'];
    remark = json['remark'];
    schoolId = json['school_id'] != null ? new UserId.fromJson(json['school_id']) : null;
    state = json['state'];
    if (json['history_ids'] != null) {
      historyIds = <Null>[];
    //  json['history_ids'].forEach((v) { historyIds!.add(new Null.fromJson(v)); });
    }
    if (json['certificate_ids'] != null) {
      certificateIds = <Null>[];
      //json['certificate_ids'].forEach((v) { certificateIds!.add(new Null.fromJson(v)); });
    }
    if (json['student_discipline_line'] != null) {
      studentDisciplineLine = <Null>[];
//      json['student_discipline_line'].forEach((v) { studentDisciplineLine!.add(new Null.fromJson(v)); });
    }
    if (json['document'] != null) {
      document = <Null>[];
     // json['document'].forEach((v) { document!.add(new Null.fromJson(v)); });
    }
    if (json['description'] != null) {
      description = <Null>[];
     // json['description'].forEach((v) { description!.add(new Null.fromJson(v)); });
    }
    if (json['award_list'] != null) {
      awardList = <Null>[];
      //json['award_list'].forEach((v) { awardList!.add(new Null.fromJson(v)); });
    }
    acadamicYear = json['Acadamic_year'];
    divisionId = json['division_id'] != null ? new UserId.fromJson(json['division_id']) : null;
    standardId = json['standard_id'] != null ? new UserId.fromJson(json['standard_id']) : null;
    terminateReason = json['terminate_reason'];
    active = json['active'];
    teachrUserGrp = json['teachr_user_grp'];
    idNationalType = json['id_national_type'];
    number = json['number'];
    record = json['record'];
    paperRecord = json['paper_record'];
    releasePlace = json['release_place'];
    releaseDate = json['release_date'];
    documentNumber = json['document_number'];
    graduationPlace = json['graduation_place'];
    mangerialEducation = json['mangerial_education'];
    educationBranch = json['education_branch'];
    graduationYear = json['graduation_year'];
    finalGrade = json['final_grade'];
    iraqiNationalityPlace = json['iraqi_nationality_place'];
    nationalityNo = json['nationality_no'];
    nationalityDate = json['nationality_date'];
    previousAddress = json['previous_address'];
    currentAddress = json['current_address'];
    nearestPoint = json['nearest_point'];
    eduType = json['edu_type'];
    originalDoc = json['original_doc'];
    medicalExamination = json['medical_examination'];
    pic = json['pic'];
    eduCust = json['edu_cust'];
    unified = json['unified'];
    card = json['card'];
    nation = json['nation'];
    residenceCard = json['residence_card'];
    tamoin = json['tamoin'];
    privateChannel = json['private_channel'];
    nocosatNotes = json['nocosat_notes'];
    title = json['title'];
    studentResult = json['student_result'];
    failYears = json['fail_years'];
    managerOrder = json['manager_order'];
    acceptanceChannel = json['acceptance_channel'];
    managerOrder1 = json['manager_order1'];
    yearAccept = json['year_accept'];
    acceptanceStudent = json['acceptance_student'];
    statusStudent = json['status_student'];
    eduYearOrder = json['edu_year_order'];
    empStudent = json['emp_student'];
    birthPlace = json['birth_place'];
    fatherPhone = json['father_phone'];
    fatherJob = json['father_job'];
    motherPhone = json['mother_phone'];
    motherJob = json['mother_job'];
    if (json['exam_results_ids'] != null) {
      examResultsIds = <Null>[];
      //json['exam_results_ids'].forEach((v) { examResultsIds!.add(new Null.fromJson(v)); });
    }
    if (json['exam_results'] != null) {
      examResults = <ExamResults>[];
      json['exam_results'].forEach((v) { examResults!.add(new ExamResults.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.familyConIds != null) {
     // data['family_con_ids'] = this.familyConIds!.map((v) => v.toJson()).toList();
    }
    if (this.userId != null) {
      data['user_id'] = this.userId!.toJson();
    }
    data['pid'] = this.pid;
    data['reg_code'] = this.regCode;
    data['student_code'] = this.studentCode;
    data['contact_phone'] = this.contactPhone;
    data['contact_mobile'] = this.contactMobile;
    data['roll_no'] = this.rollNo;
    data['photo'] = this.photo;
    data['admission_date'] = this.admissionDate;
    data['middle'] = this.middle;
    data['last'] = this.last;
    data['gender'] = this.gender;
    data['date_of_birth'] = this.dateOfBirth;
    data['age'] = this.age;
    data['maritual_status'] = this.maritualStatus;
    if (this.referenceIds != null) {
     // data['reference_ids'] = this.referenceIds!.map((v) => v.toJson()).toList();
    }
    if (this.previousSchoolIds != null) {
     // data['previous_school_ids'] = this.previousSchoolIds!.map((v) => v.toJson()).toList();
    }
    data['doctor'] = this.doctor;
    data['designation'] = this.designation;
    data['doctor_phone'] = this.doctorPhone;
    data['blood_group'] = this.bloodGroup;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['eye'] = this.eye;
    data['ear'] = this.ear;
    data['nose_throat'] = this.noseThroat;
    data['respiratory'] = this.respiratory;
    data['cardiovascular'] = this.cardiovascular;
    data['neurological'] = this.neurological;
    data['muskoskeletal'] = this.muskoskeletal;
    data['dermatological'] = this.dermatological;
    data['blood_pressure'] = this.bloodPressure;
    data['remark'] = this.remark;
    if (this.schoolId != null) {
      data['school_id'] = this.schoolId!.toJson();
    }
    data['state'] = this.state;
    if (this.historyIds != null) {
     // data['history_ids'] = this.historyIds!.map((v) => v.toJson()).toList();
    }
    if (this.certificateIds != null) {
     // data['certificate_ids'] = this.certificateIds!.map((v) => v.toJson()).toList();
    }
    if (this.studentDisciplineLine != null) {
     // data['student_discipline_line'] = this.studentDisciplineLine!.map((v) => v.toJson()).toList();
    }
    if (this.document != null) {
     // data['document'] = this.document!.map((v) => v.toJson()).toList();
    }
    if (this.description != null) {
     // data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.awardList != null) {
     // data['award_list'] = this.awardList!.map((v) => v.toJson()).toList();
    }
    data['Acadamic_year'] = this.acadamicYear;
    if (this.divisionId != null) {
      data['division_id'] = this.divisionId!.toJson();
    }
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    data['terminate_reason'] = this.terminateReason;
    data['active'] = this.active;
    data['teachr_user_grp'] = this.teachrUserGrp;
    data['id_national_type'] = this.idNationalType;
    data['number'] = this.number;
    data['record'] = this.record;
    data['paper_record'] = this.paperRecord;
    data['release_place'] = this.releasePlace;
    data['release_date'] = this.releaseDate;
    data['document_number'] = this.documentNumber;
    data['graduation_place'] = this.graduationPlace;
    data['mangerial_education'] = this.mangerialEducation;
    data['education_branch'] = this.educationBranch;
    data['graduation_year'] = this.graduationYear;
    data['final_grade'] = this.finalGrade;
    data['iraqi_nationality_place'] = this.iraqiNationalityPlace;
    data['nationality_no'] = this.nationalityNo;
    data['nationality_date'] = this.nationalityDate;
    data['previous_address'] = this.previousAddress;
    data['current_address'] = this.currentAddress;
    data['nearest_point'] = this.nearestPoint;
    data['edu_type'] = this.eduType;
    data['original_doc'] = this.originalDoc;
    data['medical_examination'] = this.medicalExamination;
    data['pic'] = this.pic;
    data['edu_cust'] = this.eduCust;
    data['unified'] = this.unified;
    data['card'] = this.card;
    data['nation'] = this.nation;
    data['residence_card'] = this.residenceCard;
    data['tamoin'] = this.tamoin;
    data['private_channel'] = this.privateChannel;
    data['nocosat_notes'] = this.nocosatNotes;
    data['title'] = this.title;
    data['student_result'] = this.studentResult;
    data['fail_years'] = this.failYears;
    data['manager_order'] = this.managerOrder;
    data['acceptance_channel'] = this.acceptanceChannel;
    data['manager_order1'] = this.managerOrder1;
    data['year_accept'] = this.yearAccept;
    data['acceptance_student'] = this.acceptanceStudent;
    data['status_student'] = this.statusStudent;
    data['edu_year_order'] = this.eduYearOrder;
    data['emp_student'] = this.empStudent;
    data['birth_place'] = this.birthPlace;
    data['father_phone'] = this.fatherPhone;
    data['father_job'] = this.fatherJob;
    data['mother_phone'] = this.motherPhone;
    data['mother_job'] = this.motherJob;
    if (this.examResultsIds != null) {
     // data['exam_results_ids'] = this.examResultsIds!.map((v) => v.toJson()).toList();
    }
    if (this.examResults != null) {
      data['exam_results'] = this.examResults!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExamResults2 {
  int? id;
  String? displayName;
  String? state;
  UserId? aExamId;
  UserId? studentId;
  int? rollNo;
  UserId? standardId;
  int? obtainMarks;
  String? result;
  bool? active;
  List<ExamAspects>? examAspects;
  bool? isFaild;

  ExamResults2({this.id, this.displayName, this.state, this.aExamId, this.studentId, this.rollNo, this.standardId, this.obtainMarks, this.result, this.active, this.examAspects, this.isFaild});

  ExamResults2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    state = json['state'];
    aExamId = json['a_exam_id'] != null ? new UserId.fromJson(json['a_exam_id']) : null;
    studentId = json['student_id'] != null ? new UserId.fromJson(json['student_id']) : null;
    rollNo = json['roll_no'];
    standardId = json['standard_id'] != null ? new UserId.fromJson(json['standard_id']) : null;
    obtainMarks = json['obtain_marks'];
    result = json['result'];
    active = json['active'];
    if (json['exam_aspects'] != null) {
      examAspects = <ExamAspects>[];
      json['exam_aspects'].forEach((v) { examAspects!.add(new ExamAspects.fromJson(v)); });
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
    if (this.studentId != null) {
      data['student_id'] = this.studentId!.toJson();
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