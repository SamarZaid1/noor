
class StudentSubject {
  bool? success;
  int? responseCode;
  String? message;
  Data? data;

  StudentSubject({this.success, this.responseCode, this.message, this.data});

  StudentSubject.fromJson(Map<String, dynamic> json) {
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
  List<FamilyConIds>? familyConIds;
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
  UserId? sectionId;
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
  List<Subjects>? subjects;

  Data({this.id, this.displayName, this.familyConIds, this.userId, this.pid, this.regCode, this.studentCode, this.contactPhone, this.contactMobile, this.rollNo, this.photo, this.admissionDate, this.middle, this.last, this.gender, this.dateOfBirth, this.age, this.maritualStatus, this.referenceIds, this.previousSchoolIds, this.doctor, this.designation, this.doctorPhone, this.bloodGroup, this.height, this.weight, this.eye, this.ear, this.noseThroat, this.respiratory, this.cardiovascular, this.neurological, this.muskoskeletal, this.dermatological, this.bloodPressure, this.remark, this.schoolId, this.state, this.historyIds, this.certificateIds, this.studentDisciplineLine, this.document, this.description, this.awardList, this.acadamicYear, this.sectionId, this.terminateReason, this.active, this.teachrUserGrp, this.idNationalType, this.number, this.record, this.paperRecord, this.releasePlace, this.releaseDate, this.documentNumber, this.graduationPlace, this.mangerialEducation, this.educationBranch, this.graduationYear, this.finalGrade, this.iraqiNationalityPlace, this.nationalityNo, this.nationalityDate, this.previousAddress, this.currentAddress, this.nearestPoint, this.eduType, this.originalDoc, this.medicalExamination, this.pic, this.eduCust, this.unified, this.card, this.nation, this.residenceCard, this.tamoin, this.privateChannel, this.nocosatNotes, this.title, this.studentResult, this.failYears, this.managerOrder, this.acceptanceChannel, this.managerOrder1, this.yearAccept, this.acceptanceStudent, this.statusStudent, this.eduYearOrder, this.empStudent, this.birthPlace, this.fatherPhone, this.fatherJob, this.motherPhone, this.motherJob, this.examResultsIds, this.subjects});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    if (json['family_con_ids'] != null) {
      familyConIds = <FamilyConIds>[];
      json['family_con_ids'].forEach((v) {
        familyConIds!.add(new FamilyConIds.fromJson(v)); });
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
     // json['reference_ids'].forEach((v) { referenceIds!.add(new Null.fromJson(v)); });
    }
    if (json['previous_school_ids'] != null) {
      previousSchoolIds = <Null>[];
      //json['previous_school_ids'].forEach((v) { previousSchoolIds!.add(new Null.fromJson(v)); });
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
    //  json['award_list'].forEach((v) { awardList!.add(new Null.fromJson(v)); });
    }
    acadamicYear = json['Acadamic_year'];
    sectionId = json['section_id'] != null ? new UserId.fromJson(json['section_id']) : null;
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
    //  json['exam_results_ids'].forEach((v) { examResultsIds!.add(new Null.fromJson(v)); });
    }
    if (json['subjects'] != null) {
      subjects = <Subjects>[];
      json['subjects'].forEach((v) { subjects!.add(new Subjects.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.familyConIds != null) {
      data['family_con_ids'] = this.familyConIds!.map((v) => v.toJson()).toList();
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
      //data['document'] = this.document!.map((v) => v.toJson()).toList();
    }
    if (this.description != null) {
      //data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.awardList != null) {
     // data['award_list'] = this.awardList!.map((v) => v.toJson()).toList();
    }
    data['Acadamic_year'] = this.acadamicYear;
    if (this.sectionId != null) {
      data['section_id'] = this.sectionId!.toJson();
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
    if (this.subjects != null) {
      data['subjects'] = this.subjects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FamilyConIds {
  int? id;
  bool? name;
  List<List>? familyContactId;
  String? relName;
  List<Null>? userId;
  List<List>? stuName;
  List<List>? relation;
  String? phone;
  String? email;
  bool? relativeName;
  String? sLastUpdate;
  String? displayName;
  List<List>? createUid;
  String? createDate;
  List<List>? writeUid;
  String? writeDate;

  FamilyConIds({this.id, this.name, this.familyContactId, this.relName, this.userId, this.stuName, this.relation, this.phone, this.email, this.relativeName, this.sLastUpdate, this.displayName, this.createUid, this.createDate, this.writeUid, this.writeDate});

  FamilyConIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['family_contact_id'] != null) {
      familyContactId = <List>[];
     // json['family_contact_id'].forEach((v) { familyContactId!.add(new List.fromJson(v)); });
    }
    relName = json['rel_name'];
    if (json['user_id'] != null) {
      userId = <Null>[];
     // json['user_id'].forEach((v) { userId!.add(new Null.fromJson(v)); });
    }
    if (json['stu_name'] != null) {
      stuName = <List>[];
    //  json['stu_name'].forEach((v) { stuName!.add(new List.fromJson(v)); });
    }
    if (json['relation'] != null) {
      relation = <List>[];
     // json['relation'].forEach((v) { relation!.add(new List.fromJson(v)); });
    }
    phone = json['phone'];
    email = json['email'];
    relativeName = json['relative_name'];
    sLastUpdate = json['__last_update'];
    displayName = json['display_name'];
    if (json['create_uid'] != null) {
      createUid = <List>[];
     // json['create_uid'].forEach((v) { createUid!.add(new List.fromJson(v)); });
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
    if (this.familyContactId != null) {
   //   data['family_contact_id'] = this.familyContactId!.map((v) => v.toJson()).toList();
    }
    data['rel_name'] = this.relName;
    if (this.userId != null) {
     // data['user_id'] = this.userId!.map((v) => v.toJson()).toList();
    }
    if (this.stuName != null) {
    //  data['stu_name'] = this.stuName!.map((v) => v.toJson()).toList();
    }
    if (this.relation != null) {
    //  data['relation'] = this.relation!.map((v) => v.toJson()).toList();
    }
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['relative_name'] = this.relativeName;
    data['__last_update'] = this.sLastUpdate;
    data['display_name'] = this.displayName;
    if (this.createUid != null) {
    //  data['create_uid'] = this.createUid!.map((v) => v.toJson()).toList();
    }
    data['create_date'] = this.createDate;
    if (this.writeUid != null) {
    //  data['write_uid'] = this.writeUid!.map((v) => v.toJson()).toList();
    }
    data['write_date'] = this.writeDate;
    return data;
  }
}

class FamilyContactId {


  FamilyContactId();

FamilyContactId.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
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

class Subjects {
  int? id;
  String? displayName;
  String? code;
  int? maximumMarks;
  int? minimumMarks;
  int? weightage;
  bool? isPractical;
  UserId? schoolId;
  UserId? divisionId;

  Subjects({this.id, this.displayName, this.code, this.maximumMarks, this.minimumMarks, this.weightage, this.isPractical, this.schoolId, this.divisionId});

  Subjects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    code = json['code'];
    maximumMarks = json['maximum_marks'];
    minimumMarks = json['minimum_marks'];
    weightage = json['weightage'];
    isPractical = json['is_practical'];
    schoolId = json['school_id'] != null ? new UserId.fromJson(json['school_id']) : null;
    divisionId = json['division_id'] != null ? new UserId.fromJson(json['division_id']) : null;
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

class Data2 {
  int? id;
  String? displayName;
  List<FamilyConIds>? familyConIds;
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
  UserId? sectionId;
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
  List<Subjects>? subjects;

  Data2({this.id, this.displayName, this.familyConIds, this.userId, this.pid, this.regCode, this.studentCode, this.contactPhone, this.contactMobile, this.rollNo, this.photo, this.admissionDate, this.middle, this.last, this.gender, this.dateOfBirth, this.age, this.maritualStatus, this.referenceIds, this.previousSchoolIds, this.doctor, this.designation, this.doctorPhone, this.bloodGroup, this.height, this.weight, this.eye, this.ear, this.noseThroat, this.respiratory, this.cardiovascular, this.neurological, this.muskoskeletal, this.dermatological, this.bloodPressure, this.remark, this.schoolId, this.state, this.historyIds, this.certificateIds, this.studentDisciplineLine, this.document, this.description, this.awardList, this.acadamicYear, this.sectionId, this.terminateReason, this.active, this.teachrUserGrp, this.idNationalType, this.number, this.record, this.paperRecord, this.releasePlace, this.releaseDate, this.documentNumber, this.graduationPlace, this.mangerialEducation, this.educationBranch, this.graduationYear, this.finalGrade, this.iraqiNationalityPlace, this.nationalityNo, this.nationalityDate, this.previousAddress, this.currentAddress, this.nearestPoint, this.eduType, this.originalDoc, this.medicalExamination, this.pic, this.eduCust, this.unified, this.card, this.nation, this.residenceCard, this.tamoin, this.privateChannel, this.nocosatNotes, this.title, this.studentResult, this.failYears, this.managerOrder, this.acceptanceChannel, this.managerOrder1, this.yearAccept, this.acceptanceStudent, this.statusStudent, this.eduYearOrder, this.empStudent, this.birthPlace, this.fatherPhone, this.fatherJob, this.motherPhone, this.motherJob, this.examResultsIds, this.subjects});

  Data2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    if (json['family_con_ids'] != null) {
      familyConIds = <FamilyConIds>[];
      json['family_con_ids'].forEach((v) { familyConIds!.add(new FamilyConIds.fromJson(v)); });
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
     // json['reference_ids'].forEach((v) { referenceIds!.add(new Null.fromJson(v)); });
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
     // json['certificate_ids'].forEach((v) { certificateIds!.add(new Null.fromJson(v)); });
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
     // json['award_list'].forEach((v) { awardList!.add(new Null.fromJson(v)); });
    }
    acadamicYear = json['Acadamic_year'];
    sectionId = json['section_id'] != null ? new UserId.fromJson(json['section_id']) : null;
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
    if (json['subjects'] != null) {
      subjects = <Subjects>[];
      json['subjects'].forEach((v) { subjects!.add(new Subjects.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.familyConIds != null) {
      data['family_con_ids'] = this.familyConIds!.map((v) => v.toJson()).toList();
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
      //data['reference_ids'] = this.referenceIds!.map((v) => v.toJson()).toList();
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
    //  data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.awardList != null) {
     // data['award_list'] = this.awardList!.map((v) => v.toJson()).toList();
    }
    data['Acadamic_year'] = this.acadamicYear;
    if (this.sectionId != null) {
      data['section_id'] = this.sectionId!.toJson();
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
    if (this.subjects != null) {
      data['subjects'] = this.subjects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subjects1 {
  int? id;
  String? displayName;
  String? code;
  int? maximumMarks;
  int? minimumMarks;
  int? weightage;
  bool? isPractical;
  UserId? schoolId;
  UserId? divisionId;

  Subjects1({this.id, this.displayName, this.code, this.maximumMarks, this.minimumMarks, this.weightage, this.isPractical, this.schoolId, this.divisionId});

  Subjects1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    code = json['code'];
    maximumMarks = json['maximum_marks'];
    minimumMarks = json['minimum_marks'];
    weightage = json['weightage'];
    isPractical = json['is_practical'];
    schoolId = json['school_id'] != null ? new UserId.fromJson(json['school_id']) : null;
    divisionId = json['division_id'] != null ? new UserId.fromJson(json['division_id']) : null;
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