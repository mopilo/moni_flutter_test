class MyClusterResponse {
  bool? success;
  String? message;
  Data? data;

  MyClusterResponse({this.success, this.message, this.data});

  MyClusterResponse.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    if (this.data != null) {
      data["data"] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  int? clusterPurseBalance;
  int? totalInterestEarned;
  int? totalOwedByMembers;
  List<dynamic>? overdueAgents;
  String? clusterName;
  double? clusterRepaymentRate;
  String? clusterRepaymentDay;
  List<dynamic>? dueAgents;
  List<ActiveAgents>? activeAgents;
  List<InactiveAgents>? inactiveAgents;

  Data(
      {this.clusterPurseBalance,
      this.totalInterestEarned,
      this.totalOwedByMembers,
      this.overdueAgents,
      this.clusterName,
      this.clusterRepaymentRate,
      this.clusterRepaymentDay,
      this.dueAgents,
      this.activeAgents,
      this.inactiveAgents});

  Data.fromJson(Map<String, dynamic> json) {
    clusterPurseBalance = json["cluster_purse_balance"];
    totalInterestEarned = json["total_interest_earned"];
    totalOwedByMembers = json["total_owed_by_members"];
    overdueAgents = json["overdue_agents"] ?? [];
    clusterName = json["cluster_name"];
    clusterRepaymentRate = json["cluster_repayment_rate"];
    clusterRepaymentDay = json["cluster_repayment_day"];
    dueAgents = json["due_agents"] ?? [];
    activeAgents = json["active_agents"] == null
        ? null
        : (json["active_agents"] as List)
            .map((e) => ActiveAgents.fromJson(e))
            .toList();
    inactiveAgents = json["inactive_agents"] == null
        ? null
        : (json["inactive_agents"] as List)
            .map((e) => InactiveAgents.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["cluster_purse_balance"] = clusterPurseBalance;
    data["total_interest_earned"] = totalInterestEarned;
    data["total_owed_by_members"] = totalOwedByMembers;
    if (overdueAgents != null) {
      data["overdue_agents"] = overdueAgents;
    }
    data["cluster_name"] = clusterName;
    data["cluster_repayment_rate"] = clusterRepaymentRate;
    data["cluster_repayment_day"] = clusterRepaymentDay;
    if (dueAgents != null) {
      data["due_agents"] = dueAgents;
    }
    if (activeAgents != null) {
      data["active_agents"] = activeAgents?.map((e) => e.toJson()).toList();
    }
    if (inactiveAgents != null) {
      data["inactive_agents"] = inactiveAgents?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class InactiveAgents {
  String? id;
  String? userId;
  String? agentId;
  String? clusterId;
  int? statusId;
  String? acceptedAt;
  String? createdAt;
  Agent? agent;

  InactiveAgents(
      {this.id,
      this.userId,
      this.agentId,
      this.clusterId,
      this.statusId,
      this.acceptedAt,
      this.createdAt,
      this.agent});

  InactiveAgents.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    agentId = json["agent_id"];
    clusterId = json["cluster_id"];
    statusId = json["status_id"];
    acceptedAt = json["accepted_at"];
    createdAt = json["created_at"];
    agent = json["agent"] == null ? null : Agent.fromJson(json["agent"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["agent_id"] = agentId;
    data["cluster_id"] = clusterId;
    data["status_id"] = statusId;
    data["accepted_at"] = acceptedAt;
    data["created_at"] = createdAt;
    if (agent != null) {
      data["agent"] = agent?.toJson();
    }
    return data;
  }
}

// class Agent1 {
//   String? id;
//   String? userId;
//   dynamic? moniId;
//   String? eligibleLoanId;
//   String? firstName;
//   dynamic? middleName;
//   String? lastName;
//   String? nickname;
//   String? birthDate;
//   String? gender;
//   String? businessName;
//   String? maritalStatus;
//   String? education;
//   String? houseAddress;
//   String? shopAddress;
//   String? lga;
//   String? city;
//   String? state;
//   dynamic? country;
//   String? phoneNumber;
//   String? emailAddress;
//   String? bvn;
//   int? hasCreditHistory;
//   int? verified;
//   String? referralLink;
//   dynamic? mediaUrl;
//   String? channel;
//   int? agentRepaymentRate;
//   int? bvnVerifiedAfter;
//   int? loanEnabled;
//   int? statusId;
//   String? eligibleLoanModifiedAt;
//   String? createdAt;
//   String? modifiedAt;
//   int? capAgentLoan;
//   int? loanCount;
//   RecentLoan1? recentLoan;
//   bool? suspended;
//
//   Agent1(
//       {this.id,
//       this.userId,
//       this.moniId,
//       this.eligibleLoanId,
//       this.firstName,
//       this.middleName,
//       this.lastName,
//       this.nickname,
//       this.birthDate,
//       this.gender,
//       this.businessName,
//       this.maritalStatus,
//       this.education,
//       this.houseAddress,
//       this.shopAddress,
//       this.lga,
//       this.city,
//       this.state,
//       this.country,
//       this.phoneNumber,
//       this.emailAddress,
//       this.bvn,
//       this.hasCreditHistory,
//       this.verified,
//       this.referralLink,
//       this.mediaUrl,
//       this.channel,
//       this.agentRepaymentRate,
//       this.bvnVerifiedAfter,
//       this.loanEnabled,
//       this.statusId,
//       this.eligibleLoanModifiedAt,
//       this.createdAt,
//       this.modifiedAt,
//       this.capAgentLoan,
//       this.loanCount,
//       this.recentLoan,
//       this.suspended});
//
//   Agent1.fromJson(Map<String, dynamic> json) {
//     id = json["id"];
//     userId = json["user_id"];
//     moniId = json["moni_id"];
//     eligibleLoanId = json["eligible_loan_id"];
//     firstName = json["first_name"];
//     middleName = json["middle_name"];
//     lastName = json["last_name"];
//     nickname = json["nickname"];
//     birthDate = json["birth_date"];
//     gender = json["gender"];
//     businessName = json["business_name"];
//     maritalStatus = json["marital_status"];
//     education = json["education"];
//     houseAddress = json["house_address"];
//     shopAddress = json["shop_address"];
//     lga = json["lga"];
//     city = json["city"];
//     state = json["state"];
//     country = json["country"];
//     phoneNumber = json["phone_number"];
//     emailAddress = json["email_address"];
//     bvn = json["bvn"];
//     hasCreditHistory = json["has_credit_history"];
//     verified = json["verified"];
//     referralLink = json["referral_link"];
//     mediaUrl = json["media_url"];
//     channel = json["channel"];
//     agentRepaymentRate = json["agent_repayment_rate"];
//     bvnVerifiedAfter = json["bvn_verified_after"];
//     loanEnabled = json["loan_enabled"];
//     statusId = json["status_id"];
//     eligibleLoanModifiedAt = json["eligible_loan_modified_at"];
//     createdAt = json["created_at"];
//     modifiedAt = json["modified_at"];
//     capAgentLoan = json["cap_agent_loan"];
//     loanCount = json["loan_count"];
//     recentLoan = json["recent_loan"] == null
//         ? null
//         : RecentLoan1.fromJson(json["recent_loan"]);
//     suspended = json["suspended"];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data["id"] = id;
//     data["user_id"] = userId;
//     data["moni_id"] = moniId;
//     data["eligible_loan_id"] = eligibleLoanId;
//     data["first_name"] = firstName;
//     data["middle_name"] = middleName;
//     data["last_name"] = lastName;
//     data["nickname"] = nickname;
//     data["birth_date"] = birthDate;
//     data["gender"] = gender;
//     data["business_name"] = businessName;
//     data["marital_status"] = maritalStatus;
//     data["education"] = education;
//     data["house_address"] = houseAddress;
//     data["shop_address"] = shopAddress;
//     data["lga"] = lga;
//     data["city"] = city;
//     data["state"] = state;
//     data["country"] = country;
//     data["phone_number"] = phoneNumber;
//     data["email_address"] = emailAddress;
//     data["bvn"] = bvn;
//     data["has_credit_history"] = hasCreditHistory;
//     data["verified"] = verified;
//     data["referral_link"] = referralLink;
//     data["media_url"] = mediaUrl;
//     data["channel"] = channel;
//     data["agent_repayment_rate"] = agentRepaymentRate;
//     data["bvn_verified_after"] = bvnVerifiedAfter;
//     data["loan_enabled"] = loanEnabled;
//     data["status_id"] = statusId;
//     data["eligible_loan_modified_at"] = eligibleLoanModifiedAt;
//     data["created_at"] = createdAt;
//     data["modified_at"] = modifiedAt;
//     data["cap_agent_loan"] = capAgentLoan;
//     data["loan_count"] = loanCount;
//     if (recentLoan != null) {
//       data["recent_loan"] = recentLoan?.toJson();
//     }
//     data["suspended"] = suspended;
//     return data;
//   }
// }

class RecentLoan1 {
  String? id;
  String? agentId;
  String? clusterId;
  String? agentLoanId;
  int? loanAmount;
  String? createdAt;
  AgentLoan1? agentLoan;

  RecentLoan1(
      {this.id,
      this.agentId,
      this.clusterId,
      this.agentLoanId,
      this.loanAmount,
      this.createdAt,
      this.agentLoan});

  RecentLoan1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    agentId = json["agent_id"];
    clusterId = json["cluster_id"];
    agentLoanId = json["agent_loan_id"];
    loanAmount = json["loan_amount"];
    createdAt = json["created_at"];
    agentLoan = json["agent_loan"] == null
        ? null
        : AgentLoan1.fromJson(json["agent_loan"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["agent_id"] = agentId;
    data["cluster_id"] = clusterId;
    data["agent_loan_id"] = agentLoanId;
    data["loan_amount"] = loanAmount;
    data["created_at"] = createdAt;
    if (agentLoan != null) data["agent_loan"] = agentLoan?.toJson();
    return data;
  }
}

class AgentLoan1 {
  String? id;
  String? agentId;
  String? agentCreditScoreId;
  String? loanId;
  String? agentCardId;
  String? interestType;
  double? interestValue;
  String? loanDurationType;
  int? loanDuration;
  String? loanDueDate;
  int? daysPastDue;
  int? loanAmount;
  int? loanAmountDue;
  int? loanInterestDue;
  String? loanPaymentDate;
  int? loanPaymentRate;
  int? loanAmountPaid;
  int? penaltyOutstanding;
  int? penaltyPaid;
  int? principalPaid;
  int? principalOutstanding;
  int? interestPaid;
  int? interestOutstanding;
  int? penaltyAmount;
  LoanStatus1? loanStatus;
  int? isMax;
  int? statusId;
  int? acceptTerms;
  String? createdAt;
  String? modifiedAt;
  Status1? status;

  AgentLoan1(
      {this.id,
      this.agentId,
      this.agentCreditScoreId,
      this.loanId,
      this.agentCardId,
      this.interestType,
      this.interestValue,
      this.loanDurationType,
      this.loanDuration,
      this.loanDueDate,
      this.daysPastDue,
      this.loanAmount,
      this.loanAmountDue,
      this.loanInterestDue,
      this.loanPaymentDate,
      this.loanPaymentRate,
      this.loanAmountPaid,
      this.penaltyOutstanding,
      this.penaltyPaid,
      this.principalPaid,
      this.principalOutstanding,
      this.interestPaid,
      this.interestOutstanding,
      this.penaltyAmount,
      this.loanStatus,
      this.isMax,
      this.statusId,
      this.acceptTerms,
      this.createdAt,
      this.modifiedAt,
      this.status});

  AgentLoan1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    agentId = json["agent_id"];
    agentCreditScoreId = json["agent_credit_score_id"];
    loanId = json["loan_id"];
    agentCardId = json["agent_card_id"];
    interestType = json["interest_type"];
    interestValue = json["interest_value"];
    loanDurationType = json["loan_duration_type"];
    loanDuration = json["loan_duration"];
    loanDueDate = json["loan_due_date"];
    daysPastDue = json["days_past_due"];
    loanAmount = json["loan_amount"];
    loanAmountDue = json["loan_amount_due"];
    loanInterestDue = json["loan_interest_due"];
    loanPaymentDate = json["loan_payment_date"];
    loanPaymentRate = json["loan_payment_rate"];
    loanAmountPaid = json["loan_amount_paid"];
    penaltyOutstanding = json["penalty_outstanding"];
    penaltyPaid = json["penalty_paid"];
    principalPaid = json["principal_paid"];
    principalOutstanding = json["principal_outstanding"];
    interestPaid = json["interest_paid"];
    interestOutstanding = json["interest_outstanding"];
    penaltyAmount = json["penalty_amount"];
    loanStatus = json["loan_status"] == null
        ? null
        : LoanStatus1.fromJson(json["loan_status"]);
    isMax = json["is_max"];
    statusId = json["status_id"];
    acceptTerms = json["accept_terms"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
    status = json["status"] == null ? null : Status1.fromJson(json["status"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = id;
    data["agent_id"] = agentId;
    data["agent_credit_score_id"] = agentCreditScoreId;
    data["loan_id"] = loanId;
    data["agent_card_id"] = agentCardId;
    data["interest_type"] = interestType;
    data["interest_value"] = interestValue;
    data["loan_duration_type"] = loanDurationType;
    data["loan_duration"] = loanDuration;
    data["loan_due_date"] = loanDueDate;
    data["days_past_due"] = daysPastDue;
    data["loan_amount"] = loanAmount;
    data["loan_amount_due"] = loanAmountDue;
    data["loan_interest_due"] = loanInterestDue;
    data["loan_payment_date"] = loanPaymentDate;
    data["loan_payment_rate"] = loanPaymentRate;
    data["loan_amount_paid"] = loanAmountPaid;
    data["penalty_outstanding"] = penaltyOutstanding;
    data["penalty_paid"] = penaltyPaid;
    data["principal_paid"] = principalPaid;
    data["principal_outstanding"] = principalOutstanding;
    data["interest_paid"] = interestPaid;
    data["interest_outstanding"] = interestOutstanding;
    data["penalty_amount"] = penaltyAmount;
    if (loanStatus != null) {
      data["loan_status"] = loanStatus?.toJson();
    }
    data["is_max"] = isMax;
    data["status_id"] = statusId;
    data["accept_terms"] = acceptTerms;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    if (status != null) data["status"] = status?.toJson();
    return data;
  }
}

class Status1 {
  int? id;
  String? name;
  String? label;
  String? description;
  String? createdAt;
  String? modifiedAt;

  Status1(
      {this.id,
      this.name,
      this.label,
      this.description,
      this.createdAt,
      this.modifiedAt});

  Status1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    label = json["label"];
    description = json["description"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["label"] = label;
    data["description"] = description;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    return data;
  }
}

class LoanStatus1 {
  int? id;
  String? name;
  String? label;
  String? description;
  String? createdAt;
  String? modifiedAt;

  LoanStatus1(
      {this.id,
      this.name,
      this.label,
      this.description,
      this.createdAt,
      this.modifiedAt});

  LoanStatus1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    label = json["label"];
    description = json["description"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["label"] = label;
    data["description"] = description;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    return data;
  }
}

class ActiveAgents {
  String? id;
  String? userId;
  String? agentId;
  String? clusterId;
  int? statusId;
  String? acceptedAt;
  String? createdAt;
  Agent? agent;

  ActiveAgents(
      {this.id,
      this.userId,
      this.agentId,
      this.clusterId,
      this.statusId,
      this.acceptedAt,
      this.createdAt,
      this.agent});

  ActiveAgents.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    agentId = json["agent_id"];
    clusterId = json["cluster_id"];
    statusId = json["status_id"];
    acceptedAt = json["accepted_at"];
    createdAt = json["created_at"];
    agent = json["agent"] == null ? null : Agent.fromJson(json["agent"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["agent_id"] = agentId;
    data["cluster_id"] = clusterId;
    data["status_id"] = statusId;
    data["accepted_at"] = acceptedAt;
    data["created_at"] = createdAt;
    if (agent != null) data["agent"] = agent?.toJson();
    return data;
  }
}

class Agent {
  String? id;
  String? userId;
  dynamic? moniId;
  String? eligibleLoanId;
  String? firstName;
  dynamic? middleName;
  String? lastName;
  String? nickname;
  String? birthDate;
  String? gender;
  String? businessName;
  String? maritalStatus;
  String? education;
  String? houseAddress;
  String? shopAddress;
  String? lga;
  String? city;
  String? state;
  dynamic? country;
  String? phoneNumber;
  String? emailAddress;
  String? bvn;
  int? hasCreditHistory;
  int? verified;
  String? referralLink;
  dynamic? mediaUrl;
  String? channel;
  int? agentRepaymentRate;
  int? bvnVerifiedAfter;
  int? loanEnabled;
  int? statusId;
  String? eligibleLoanModifiedAt;
  String? createdAt;
  String? modifiedAt;
  int? capAgentLoan;
  int? loanCount;
  RecentLoan? recentLoan;
  bool? suspended;

  Agent(
      {this.id,
      this.userId,
      this.moniId,
      this.eligibleLoanId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.nickname,
      this.birthDate,
      this.gender,
      this.businessName,
      this.maritalStatus,
      this.education,
      this.houseAddress,
      this.shopAddress,
      this.lga,
      this.city,
      this.state,
      this.country,
      this.phoneNumber,
      this.emailAddress,
      this.bvn,
      this.hasCreditHistory,
      this.verified,
      this.referralLink,
      this.mediaUrl,
      this.channel,
      this.agentRepaymentRate,
      this.bvnVerifiedAfter,
      this.loanEnabled,
      this.statusId,
      this.eligibleLoanModifiedAt,
      this.createdAt,
      this.modifiedAt,
      this.capAgentLoan,
      this.loanCount,
      this.recentLoan,
      this.suspended});

  Agent.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    moniId = json["moni_id"];
    eligibleLoanId = json["eligible_loan_id"];
    firstName = json["first_name"];
    middleName = json["middle_name"];
    lastName = json["last_name"];
    nickname = json["nickname"];
    birthDate = json["birth_date"];
    gender = json["gender"];
    businessName = json["business_name"];
    maritalStatus = json["marital_status"];
    education = json["education"];
    houseAddress = json["house_address"];
    shopAddress = json["shop_address"];
    lga = json["lga"];
    city = json["city"];
    state = json["state"];
    country = json["country"];
    phoneNumber = json["phone_number"];
    emailAddress = json["email_address"];
    bvn = json["bvn"];
    hasCreditHistory = json["has_credit_history"];
    verified = json["verified"];
    referralLink = json["referral_link"];
    mediaUrl = json["media_url"];
    channel = json["channel"];
    agentRepaymentRate = json["agent_repayment_rate"];
    bvnVerifiedAfter = json["bvn_verified_after"];
    loanEnabled = json["loan_enabled"];
    statusId = json["status_id"];
    eligibleLoanModifiedAt = json["eligible_loan_modified_at"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
    capAgentLoan = json["cap_agent_loan"];
    loanCount = json["loan_count"];
    recentLoan = json["recent_loan"] == null
        ? null
        : RecentLoan.fromJson(json["recent_loan"]);
    suspended = json["suspended"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["moni_id"] = moniId;
    data["eligible_loan_id"] = eligibleLoanId;
    data["first_name"] = firstName;
    data["middle_name"] = middleName;
    data["last_name"] = lastName;
    data["nickname"] = nickname;
    data["birth_date"] = birthDate;
    data["gender"] = gender;
    data["business_name"] = businessName;
    data["marital_status"] = maritalStatus;
    data["education"] = education;
    data["house_address"] = houseAddress;
    data["shop_address"] = shopAddress;
    data["lga"] = lga;
    data["city"] = city;
    data["state"] = state;
    data["country"] = country;
    data["phone_number"] = phoneNumber;
    data["email_address"] = emailAddress;
    data["bvn"] = bvn;
    data["has_credit_history"] = hasCreditHistory;
    data["verified"] = verified;
    data["referral_link"] = referralLink;
    data["media_url"] = mediaUrl;
    data["channel"] = channel;
    data["agent_repayment_rate"] = agentRepaymentRate;
    data["bvn_verified_after"] = bvnVerifiedAfter;
    data["loan_enabled"] = loanEnabled;
    data["status_id"] = statusId;
    data["eligible_loan_modified_at"] = eligibleLoanModifiedAt;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    data["cap_agent_loan"] = capAgentLoan;
    data["loan_count"] = loanCount;
    if (recentLoan != null) {
      data["recent_loan"] = recentLoan?.toJson();
    }
    data["suspended"] = suspended;
    return data;
  }
}

class RecentLoan {
  String? id;
  String? agentId;
  String? clusterId;
  String? agentLoanId;
  int? loanAmount;
  String? createdAt;
  AgentLoan? agentLoan;

  RecentLoan(
      {this.id,
      this.agentId,
      this.clusterId,
      this.agentLoanId,
      this.loanAmount,
      this.createdAt,
      this.agentLoan});

  RecentLoan.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    agentId = json["agent_id"];
    clusterId = json["cluster_id"];
    agentLoanId = json["agent_loan_id"];
    loanAmount = json["loan_amount"];
    createdAt = json["created_at"];
    agentLoan = json["agent_loan"] == null
        ? null
        : AgentLoan.fromJson(json["agent_loan"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["agent_id"] = agentId;
    data["cluster_id"] = clusterId;
    data["agent_loan_id"] = agentLoanId;
    data["loan_amount"] = loanAmount;
    data["created_at"] = createdAt;
    if (agentLoan != null) data["agent_loan"] = agentLoan?.toJson();
    return data;
  }
}

class AgentLoan {
  String? id;
  String? agentId;
  String? agentCreditScoreId;
  String? loanId;
  String? agentCardId;
  String? interestType;
  double? interestValue;
  String? loanDurationType;
  int? loanDuration;
  String? loanDueDate;
  dynamic? daysPastDue;
  int? loanAmount;
  int? loanAmountDue;
  int? loanInterestDue;
  dynamic? loanPaymentDate;
  dynamic? loanPaymentRate;
  int? loanAmountPaid;
  int? penaltyOutstanding;
  int? penaltyPaid;
  int? principalPaid;
  int? principalOutstanding;
  int? interestPaid;
  int? interestOutstanding;
  int? penaltyAmount;
  LoanStatus? loanStatus;
  int? isMax;
  int? statusId;
  int? acceptTerms;
  String? createdAt;
  String? modifiedAt;
  Status? status;

  AgentLoan(
      {this.id,
      this.agentId,
      this.agentCreditScoreId,
      this.loanId,
      this.agentCardId,
      this.interestType,
      this.interestValue,
      this.loanDurationType,
      this.loanDuration,
      this.loanDueDate,
      this.daysPastDue,
      this.loanAmount,
      this.loanAmountDue,
      this.loanInterestDue,
      this.loanPaymentDate,
      this.loanPaymentRate,
      this.loanAmountPaid,
      this.penaltyOutstanding,
      this.penaltyPaid,
      this.principalPaid,
      this.principalOutstanding,
      this.interestPaid,
      this.interestOutstanding,
      this.penaltyAmount,
      this.loanStatus,
      this.isMax,
      this.statusId,
      this.acceptTerms,
      this.createdAt,
      this.modifiedAt,
      this.status});

  AgentLoan.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    agentId = json["agent_id"];
    agentCreditScoreId = json["agent_credit_score_id"];
    loanId = json["loan_id"];
    agentCardId = json["agent_card_id"];
    interestType = json["interest_type"];
    interestValue = json["interest_value"];
    loanDurationType = json["loan_duration_type"];
    loanDuration = json["loan_duration"];
    loanDueDate = json["loan_due_date"];
    daysPastDue = json["days_past_due"];
    loanAmount = json["loan_amount"];
    loanAmountDue = json["loan_amount_due"];
    loanInterestDue = json["loan_interest_due"];
    loanPaymentDate = json["loan_payment_date"];
    loanPaymentRate = json["loan_payment_rate"];
    loanAmountPaid = json["loan_amount_paid"];
    penaltyOutstanding = json["penalty_outstanding"];
    penaltyPaid = json["penalty_paid"];
    principalPaid = json["principal_paid"];
    principalOutstanding = json["principal_outstanding"];
    interestPaid = json["interest_paid"];
    interestOutstanding = json["interest_outstanding"];
    penaltyAmount = json["penalty_amount"];
    loanStatus = json["loan_status"] == null
        ? null
        : LoanStatus.fromJson(json["loan_status"]);
    isMax = json["is_max"];
    statusId = json["status_id"];
    acceptTerms = json["accept_terms"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
    status = json["status"] == null ? null : Status.fromJson(json["status"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["agent_id"] = agentId;
    data["agent_credit_score_id"] = agentCreditScoreId;
    data["loan_id"] = loanId;
    data["agent_card_id"] = agentCardId;
    data["interest_type"] = interestType;
    data["interest_value"] = interestValue;
    data["loan_duration_type"] = loanDurationType;
    data["loan_duration"] = loanDuration;
    data["loan_due_date"] = loanDueDate;
    data["days_past_due"] = daysPastDue;
    data["loan_amount"] = loanAmount;
    data["loan_amount_due"] = loanAmountDue;
    data["loan_interest_due"] = loanInterestDue;
    data["loan_payment_date"] = loanPaymentDate;
    data["loan_payment_rate"] = loanPaymentRate;
    data["loan_amount_paid"] = loanAmountPaid;
    data["penalty_outstanding"] = penaltyOutstanding;
    data["penalty_paid"] = penaltyPaid;
    data["principal_paid"] = principalPaid;
    data["principal_outstanding"] = principalOutstanding;
    data["interest_paid"] = interestPaid;
    data["interest_outstanding"] = interestOutstanding;
    data["penalty_amount"] = penaltyAmount;
    if (loanStatus != null) {
      data["loan_status"] = loanStatus?.toJson();
    }
    data["is_max"] = isMax;
    data["status_id"] = statusId;
    data["accept_terms"] = acceptTerms;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    if (status != null) data["status"] = status?.toJson();
    return data;
  }
}

class Status {
  int? id;
  String? name;
  String? label;
  String? description;
  String? createdAt;
  String? modifiedAt;

  Status(
      {this.id,
      this.name,
      this.label,
      this.description,
      this.createdAt,
      this.modifiedAt});

  Status.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    label = json["label"];
    description = json["description"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["label"] = label;
    data["description"] = description;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    return data;
  }
}

class LoanStatus {
  int? id;
  String? name;
  String? label;
  String? description;
  String? createdAt;
  String? modifiedAt;

  LoanStatus(
      {this.id,
      this.name,
      this.label,
      this.description,
      this.createdAt,
      this.modifiedAt});

  LoanStatus.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    label = json["label"];
    description = json["description"];
    createdAt = json["created_at"];
    modifiedAt = json["modified_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["label"] = label;
    data["description"] = description;
    data["created_at"] = createdAt;
    data["modified_at"] = modifiedAt;
    return data;
  }
}
