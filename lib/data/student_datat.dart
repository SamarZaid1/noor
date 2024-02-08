class Student {
  bool? success;
  int? responseCode;
  String? message;
  Data? data;

  Student({this.success, this.responseCode, this.message, this.data});

  Student.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    responseCode = json['responseCode'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
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
  String? contactPhone;
  String? contactMobile;
  int? rollNo;
  String? photo;
  UserId? year;
  String? admissionDate;
  String? middle;
  String? last;
  String? gender;
  String? dateOfBirth;
  String? age;
  String? maritualStatus;
  List<Null>? referenceIds;
  List<Null>? previousSchoolIds;
  String? doctor;
  String? designation;
  String? doctorPhone;
  String? bloodGroup;
  String? height;
  String? weight;
  String? eye;
  String? ear;
  String? noseThroat;
  String? respiratory;
  String? cardiovascular;
  String? neurological;
  String? muskoskeletal;
  String? dermatological;
  String? bloodPressure;
  String? remark;
  UserId? schoolId;
  String? state;
  List<Null>? historyIds;
  List<Null>? certificateIds;
  List<Null>? studentDisciplineLine;
  List<Null>? document;
  List<Null>? description;
  List<Null>? awardList;
  String? acadamicYear;
  UserId? divisionId;
  UserId? sectionId;
  UserId? standardId;
  String? terminateReason;
  bool? active;
  String? teachrUserGrp;
  String? idNationalType;
  String? number;
  String? record;
  String? paperRecord;
  String? releasePlace;
  String? releaseDate;
  String? documentNumber;
  String? graduationPlace;
  String? mangerialEducation;
  String? educationBranch;
  String? graduationYear;
  String? finalGrade;
  String? iraqiNationalityPlace;
  String? nationalityNo;
  String? nationalityDate;
  String? previousAddress;
  String? currentAddress;
  String? nearestPoint;
  String? eduType;
  String? docNo2;
  String? noSend;
  String? originalDoc;
  String? medicalExamination;
  String? pic;
  String? eduCust;
  String? unified;
  String? card;
  String? nation;
  String? residenceCard;
  String? tamoin;
  String? privateChannel;
  String? nocosatNotes;
  String? title;
  String? studentResult;
  String? failYears;
  String? managerOrder;
  String? acceptanceChannel;
  String? managerOrder1;
  String? yearAccept;
  String? acceptanceStudent;
  String? statusStudent;
  String? eduYearOrder;
  String? empStudent;
  String? birthPlace;
  String? fatherPhone;
  String? fatherJob;
  String? motherPhone;
  String? motherJob;
  String? teachingRelation;
  String? schoolType;
  String? schoolGraduationYear;
  String? noLessons;
  String? noAdded;
  String? level;
  String? title1;
  String? studentBirth;
  String? studentResponsible;
  String? motherJob1;
  String? studBirth;
  List<Null>? examResultsIds;

  Data(
      {this.id,
      this.displayName,
      this.familyConIds,
      this.userId,
      this.pid,
      this.regCode,
      this.studentCode,
      this.contactPhone,
      this.contactMobile,
      this.rollNo,
      this.photo,
      this.year,
      this.admissionDate,
      this.middle,
      this.last,
      this.gender,
      this.dateOfBirth,
      this.age,
      this.maritualStatus,
      this.referenceIds,
      this.previousSchoolIds,
      this.doctor,
      this.designation,
      this.doctorPhone,
      this.bloodGroup,
      this.height,
      this.weight,
      this.eye,
      this.ear,
      this.noseThroat,
      this.respiratory,
      this.cardiovascular,
      this.neurological,
      this.muskoskeletal,
      this.dermatological,
      this.bloodPressure,
      this.remark,
      this.schoolId,
      this.state,
      this.historyIds,
      this.certificateIds,
      this.studentDisciplineLine,
      this.document,
      this.description,
      this.awardList,
      this.acadamicYear,
      this.divisionId,
      this.sectionId,
      this.standardId,
      this.terminateReason,
      this.active,
      this.teachrUserGrp,
      this.idNationalType,
      this.number,
      this.record,
      this.paperRecord,
      this.releasePlace,
      this.releaseDate,
      this.documentNumber,
      this.graduationPlace,
      this.mangerialEducation,
      this.educationBranch,
      this.graduationYear,
      this.finalGrade,
      this.iraqiNationalityPlace,
      this.nationalityNo,
      this.nationalityDate,
      this.previousAddress,
      this.currentAddress,
      this.nearestPoint,
      this.eduType,
      this.docNo2,
      this.noSend,
      this.originalDoc,
      this.medicalExamination,
      this.pic,
      this.eduCust,
      this.unified,
      this.card,
      this.nation,
      this.residenceCard,
      this.tamoin,
      this.privateChannel,
      this.nocosatNotes,
      this.title,
      this.studentResult,
      this.failYears,
      this.managerOrder,
      this.acceptanceChannel,
      this.managerOrder1,
      this.yearAccept,
      this.acceptanceStudent,
      this.statusStudent,
      this.eduYearOrder,
      this.empStudent,
      this.birthPlace,
      this.fatherPhone,
      this.fatherJob,
      this.motherPhone,
      this.motherJob,
      this.teachingRelation,
      this.schoolType,
      this.schoolGraduationYear,
      this.noLessons,
      this.noAdded,
      this.level,
      this.title1,
      this.studentBirth,
      this.studentResponsible,
      this.motherJob1,
      this.studBirth,
      this.examResultsIds});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    if (json['family_con_ids'] != null) {
      familyConIds = <Null>[];
      json['family_con_ids'].forEach((v) {
        //  familyConIds!.add(new Null.fromJson(v));
      });
    }
    userId =
        json['user_id'] != null ? new UserId.fromJson(json['user_id']) : null;
    pid = json['pid'];
    regCode = json['reg_code'];
    studentCode = json['student_code'];
    contactPhone = json['contact_phone'].toString();
    contactMobile = json['contact_mobile'];
    rollNo = json['roll_no'];
    photo = json['photo'];
    year = json['year'] != null ? new UserId.fromJson(json['year']) : null;
    admissionDate = json['admission_date'];
    middle = json['middle'];
    last = json['last'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'].toString();
    age = json['age'];
    maritualStatus = json['maritual_status'];
    if (json['reference_ids'] != null) {
      referenceIds = <Null>[];
      json['reference_ids'].forEach((v) {
        //  referenceIds!.add(new Null.fromJson(v));
      });
    }
    if (json['previous_school_ids'] != null) {
      previousSchoolIds = <Null>[];
      json['previous_school_ids'].forEach((v) {
        // previousSchoolIds!.add(new Null.fromJson(v));
      });
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
    schoolId = json['school_id'] != null
        ? new UserId.fromJson(json['school_id'])
        : null;
    state = json['state'];
    if (json['history_ids'] != null) {
      historyIds = <Null>[];
      json['history_ids'].forEach((v) {
        //  historyIds!.add(new Null.fromJson(v));
      });
    }
    if (json['certificate_ids'] != null) {
      certificateIds = <Null>[];
      json['certificate_ids'].forEach((v) {
        // certificateIds!.add(new Null.fromJson(v));
      });
    }
    if (json['student_discipline_line'] != null) {
      studentDisciplineLine = <Null>[];
      json['student_discipline_line'].forEach((v) {
        // studentDisciplineLine!.add(new Null.fromJson(v));
      });
    }
    if (json['document'] != null) {
      document = <Null>[];
      json['document'].forEach((v) {
        // document!.add(new Null.fromJson(v));
      });
    }
    if (json['description'] != null) {
      description = <Null>[];
      json['description'].forEach((v) {
        // description!.add(new Null.fromJson(v));
      });
    }
    if (json['award_list'] != null) {
      awardList = <Null>[];
      json['award_list'].forEach((v) {
        //awardList!.add(new Null.fromJson(v));
      });
    }
    acadamicYear = json['Acadamic_year'];
    divisionId = json['division_id'] != null
        ? new UserId.fromJson(json['division_id'])
        : null;
    sectionId = json['section_id'] != null
        ? new UserId.fromJson(json['section_id'])
        : null;
    standardId = json['standard_id'] != null
        ? new UserId.fromJson(json['standard_id'])
        : null;
    terminateReason = json['terminate_reason'];
    active = json['active'];
    teachrUserGrp = json['teachr_user_grp'];
    idNationalType = json['id_national_type'].toString();
    number = json['number'];
    record = json['record'];
    paperRecord = json['paper_record'];
    releasePlace = json['release_place'];
    releaseDate = json['release_date'].toString();
    documentNumber = json['document_number'];
    graduationPlace = json['graduation_place'].toString();
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
    eduType = json['edu_type'].toString();
    docNo2 = json['doc_no2'];
    noSend = json['no_send'];
    originalDoc = json['original_doc'];
    medicalExamination = json['medical_examination'];
    pic = json['pic'];
    eduCust = json['edu_cust'];
    unified = json['unified'];
    card = json['card'];
    nation = json['nation'];
    residenceCard = json['residence_card'];
    tamoin = json['tamoin'];
    privateChannel = json['private_channel'].toString();
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
    teachingRelation = json['teaching_relation'];
    schoolType = json['school_type'];
    schoolGraduationYear = json['school_graduation_year'];
    noLessons = json['no_lessons'];
    noAdded = json['no_added'];
    level = json['level'];
    title1 = json['title_1'];
    studentBirth = json['student_birth'];
    studentResponsible = json['student_responsible'];
    motherJob1 = json['mother_job1'];
    studBirth = json['stud_birth'];
    if (json['exam_results_ids'] != null) {
      examResultsIds = <Null>[];
      json['exam_results_ids'].forEach((v) {
        // examResultsIds!.add(new Null.fromJson(v));
      });
    }
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
