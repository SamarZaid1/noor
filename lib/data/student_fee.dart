class StudentFee {
  bool? success;
  int? responseCode;
  String? message;
  List<Data>? data;

  StudentFee({this.success, this.responseCode, this.message, this.data});

  StudentFee.fromJson(Map<String, dynamic> json) {
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
  FeesStructureId? feesStructureId;
  FeesStructureId? standardId;
  FeesStructureId? divisionId;
  FeesStructureId? registerId;
  String? number;
  String? date;
  double? total;
  String? state;
  FeesStructureId? journalId;
  String? paidAmount;
  double? dueAmount;
  FeesStructureId? currencyId;
  String? currencySymbol;
  String? paymentDate;
  String? type;
  FeesStructureId? companyId;
  String? numWordAmount;
  String? sequence;
  bool? useInstallment;
  String? downPayment;
  String? monthInstallment;
  String? remainInstallment;
  String? installmentAmount;
  FeesStructureId? accountId;
  String? paidDone;
  List<Installments>? installments;

  Data(
      {this.id,
        this.displayName,
        this.feesStructureId,
        this.standardId,
        this.divisionId,
        this.registerId,
        this.number,
        this.date,
        this.total,
        this.state,
        this.journalId,
        this.paidAmount,
        this.dueAmount,
        this.currencyId,
        this.currencySymbol,
        this.paymentDate,
        this.type,
        this.companyId,
        this.numWordAmount,
        this.sequence,
        this.useInstallment,
        this.downPayment,
        this.monthInstallment,
        this.remainInstallment,
        this.installmentAmount,
        this.accountId,
        this.paidDone,
        this.installments});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    feesStructureId = json['fees_structure_id'] != null
        ? new FeesStructureId.fromJson(json['fees_structure_id'])
        : null;
    standardId = json['standard_id'] != null
        ? new FeesStructureId.fromJson(json['standard_id'])
        : null;
    divisionId = json['division_id'] != null
        ? new FeesStructureId.fromJson(json['division_id'])
        : null;
    registerId = json['register_id'] != null
        ? new FeesStructureId.fromJson(json['register_id'])
        : null;
    number = json['number'];
    date = json['date'];
    total = json['total'];
    state = json['state'];
    journalId = json['journal_id'] != null
        ? new FeesStructureId.fromJson(json['journal_id'])
        : null;
    paidAmount = json['paid_amount'];
    dueAmount = json['due_amount'];
    currencyId = json['currency_id'] != null
        ? new FeesStructureId.fromJson(json['currency_id'])
        : null;
    currencySymbol = json['currency_symbol'];
    paymentDate = json['payment_date'];
    type = json['type'];
    companyId = json['company_id'] != null
        ? new FeesStructureId.fromJson(json['company_id'])
        : null;
    numWordAmount = json['num_word_amount'];
    sequence = json['sequence'];
    useInstallment = json['use_installment'];
    downPayment = json['down_payment'];
    monthInstallment = json['month_installment'];
    remainInstallment = json['remain_installment'];
    installmentAmount = json['installment_amount'];
    accountId = json['account_id'] != null
        ? new FeesStructureId.fromJson(json['account_id'])
        : null;
    paidDone = json['paid_done'];
    if (json['installments'] != null) {
      installments = <Installments>[];
      json['installments'].forEach((v) {
        installments!.add(new Installments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    if (this.feesStructureId != null) {
      data['fees_structure_id'] = this.feesStructureId!.toJson();
    }
    if (this.standardId != null) {
      data['standard_id'] = this.standardId!.toJson();
    }
    if (this.divisionId != null) {
      data['division_id'] = this.divisionId!.toJson();
    }
    if (this.registerId != null) {
      data['register_id'] = this.registerId!.toJson();
    }
    data['number'] = this.number;
    data['date'] = this.date;
    data['total'] = this.total;
    data['state'] = this.state;
    if (this.journalId != null) {
      data['journal_id'] = this.journalId!.toJson();
    }
    data['paid_amount'] = this.paidAmount;
    data['due_amount'] = this.dueAmount;
    if (this.currencyId != null) {
      data['currency_id'] = this.currencyId!.toJson();
    }
    data['currency_symbol'] = this.currencySymbol;
    data['payment_date'] = this.paymentDate;
    data['type'] = this.type;
    if (this.companyId != null) {
      data['company_id'] = this.companyId!.toJson();
    }
    data['num_word_amount'] = this.numWordAmount;
    data['sequence'] = this.sequence;
    data['use_installment'] = this.useInstallment;
    data['down_payment'] = this.downPayment;
    data['month_installment'] = this.monthInstallment;
    data['remain_installment'] = this.remainInstallment;
    data['installment_amount'] = this.installmentAmount;
    if (this.accountId != null) {
      data['account_id'] = this.accountId!.toJson();
    }
    data['paid_done'] = this.paidDone;
    if (this.installments != null) {
      data['installments'] = this.installments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeesStructureId {
  int? id;
  String? name;

  FeesStructureId({this.id, this.name});

  FeesStructureId.fromJson(Map<String, dynamic> json) {
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

class Installments {
  int? id;
  String? displayName;
  String? no;
  String? paymentDate;
  double? amount;
  String? description;
  String? state;
  FeesStructureId? installmentInv;
  FeesStructureId? accountId;
  String? paidDone;
  FeesStructureId? invoiceId;
  String? isPrint;
  String? numWordAmounts;

  Installments(
      {this.id,
        this.displayName,
        this.no,
        this.paymentDate,
        this.amount,
        this.description,
        this.state,
        this.installmentInv,
        this.accountId,
        this.paidDone,
        this.invoiceId,
        this.isPrint,
        this.numWordAmounts});

  Installments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    no = json['no'];
    paymentDate = json['payment_date'];
    amount = json['amount'];
    description = json['description'];
    state = json['state'];
    installmentInv = json['installment_inv'] != null
        ? new FeesStructureId.fromJson(json['installment_inv'])
        : null;
    accountId = json['account_id'] != null
        ? new FeesStructureId.fromJson(json['account_id'])
        : null;
    paidDone = json['paid_done'].toString();
    invoiceId = json['invoice_id'] != null
        ? new FeesStructureId.fromJson(json['invoice_id'])
        : null;
    isPrint = json['is_print'];
    numWordAmounts = json['num_word_amounts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display_name'] = this.displayName;
    data['no'] = this.no;
    data['payment_date'] = this.paymentDate;
    data['amount'] = this.amount;
    data['description'] = this.description;
    data['state'] = this.state;
    if (this.installmentInv != null) {
      data['installment_inv'] = this.installmentInv!.toJson();
    }
    if (this.accountId != null) {
      data['account_id'] = this.accountId!.toJson();
    }
    data['paid_done'] = this.paidDone;
    if (this.invoiceId != null) {
      data['invoice_id'] = this.invoiceId!.toJson();
    }
    data['is_print'] = this.isPrint;
    data['num_word_amounts'] = this.numWordAmounts;
    return data;
  }
}