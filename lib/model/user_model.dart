class UserModel {
  late int loggedInUserId;
  late int id;
  late String userName;
  dynamic password;
  late String staffName;
  dynamic genderId;
  dynamic officeNo;
  late String companyEmail;
  late String mobileNo;
  late int categoryId;
  late int statusId;
  late int designationId;
  dynamic nationalityId;
  late String contractorId;
  dynamic grade;
  dynamic labourCostPerHour;
  late int locationId;
  dynamic companyName;
  late String customerName;
  late bool isDeleted;
  late bool isLocked;
  late String createdOn;
  late List<UserRoles>? userRoles;
  late List<Competencies>? competencies;
  late List<Services>? services;
  late List<Facilities>? facilities;
  dynamic employeeSpecialities;

  UserModel({
    required this.loggedInUserId,
    required this.id,
    required this.userName,
    required this.password,
    required this.staffName,
    required this.genderId,
    required this.officeNo,
    required this.companyEmail,
    required this.mobileNo,
    required this.categoryId,
    required this.statusId,
    required this.designationId,
    required this.nationalityId,
    required this.contractorId,
    required this.grade,
    required this.labourCostPerHour,
    required this.locationId,
    required this.companyName,
    required this.customerName,
    required this.isDeleted,
    required this.isLocked,
    required this.createdOn,
    required this.userRoles,
    required this.competencies,
    required this.services,
    required this.facilities,
    required this.employeeSpecialities,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    loggedInUserId = json["loggedInUserId"];
    id = json["id"];
    userName = json["userName"];
    password = json["password"];
    staffName = json["staffName"];
    genderId = json["genderId"];
    officeNo = json["officeNo"];
    companyEmail = json["companyEmail"];
    mobileNo = json["mobileNo"];
    categoryId = json["categoryId"];
    statusId = json["statusId"];
    designationId = json["designationId"];
    nationalityId = json["nationalityId"];
    contractorId = json["contractorId"].toString();
    grade = json["grade"];
    labourCostPerHour = json["labourCostPerHour"];
    locationId = json["locationID"];
    companyName = json["companyName"];
    customerName = json["customerName"].toString();
    isDeleted = json["isDeleted"];
    isLocked = json["isLocked"];
    createdOn = json["createdOn"];
    userRoles = json["userRoles"] == null
        ? null
        : (json["userRoles"] as List)
            .map((e) => UserRoles.fromJson(e))
            .toList();
    competencies = json["competencies"] == null
        ? null
        : (json["competencies"] as List)
            .map((e) => Competencies.fromJson(e))
            .toList();
    services = json["services"] == null
        ? null
        : (json["services"] as List).map((e) => Services.fromJson(e)).toList();
    facilities = json["facilities"] == null
        ? null
        : (json["facilities"] as List)
            .map((e) => Facilities.fromJson(e))
            .toList();
    employeeSpecialities = json["employeeSpecialities"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["loggedInUserId"] = loggedInUserId;
    data["id"] = id;
    data["userName"] = userName;
    data["password"] = password;
    data["staffName"] = staffName;
    data["genderId"] = genderId;
    data["officeNo"] = officeNo;
    data["companyEmail"] = companyEmail;
    data["mobileNo"] = mobileNo;
    data["categoryId"] = categoryId;
    data["statusId"] = statusId;
    data["designationId"] = designationId;
    data["nationalityId"] = nationalityId;
    data["contractorId"] = contractorId;
    data["grade"] = grade;
    data["labourCostPerHour"] = labourCostPerHour;
    data["locationID"] = locationId;
    data["companyName"] = companyName;
    data["customerName"] = customerName;
    data["isDeleted"] = isDeleted;
    data["isLocked"] = isLocked;
    data["createdOn"] = createdOn;
    data["userRoles"] = userRoles!.map((e) => e.toJson()).toList();
    data["competencies"] = competencies!.map((e) => e.toJson()).toList();
    data["services"] = services!.map((e) => e.toJson()).toList();
    data["facilities"] = facilities!.map((e) => e.toJson()).toList();
    data["employeeSpecialities"] = employeeSpecialities;
    return data;
  }
}

class Facilities {
  late int id;
  late int employeeGlobalId;
  late int facilityId;

  Facilities({
    required this.id,
    required this.employeeGlobalId,
    required this.facilityId,
  });

  Facilities.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    employeeGlobalId = json["employeeGlobalId"];
    facilityId = json["facilityId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["employeeGlobalId"] = employeeGlobalId;
    data["facilityId"] = facilityId;
    return data;
  }
}

class Services {
  late int id;
  late int loggedInUserId;
  late int serviceTypeId;

  Services({
    required this.id,
    required this.loggedInUserId,
    required this.serviceTypeId,
  });

  Services.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    loggedInUserId = json["loggedInUserId"];
    serviceTypeId = json["serviceTypeId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["loggedInUserId"] = loggedInUserId;
    data["serviceTypeId"] = serviceTypeId;
    return data;
  }
}

class Competencies {
  late int loggedInUserId;
  late int id;
  late int employeeGlobalId;
  late int skillId;
  late String createdOn;

  Competencies({
    required this.loggedInUserId,
    required this.id,
    required this.employeeGlobalId,
    required this.skillId,
    required this.createdOn,
  });

  Competencies.fromJson(Map<String, dynamic> json) {
    loggedInUserId = json["loggedInUserId"];
    id = json["id"];
    employeeGlobalId = json["employeeGlobalId"];
    skillId = json["skillId"];
    createdOn = json["createdOn"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["loggedInUserId"] = loggedInUserId;
    data["id"] = id;
    data["employeeGlobalId"] = employeeGlobalId;
    data["skillId"] = skillId;
    data["createdOn"] = createdOn;
    return data;
  }
}

class UserRoles {
  late int loggedInUserId;
  late int id;
  late int roleId;
  late List<RolesModulePermissions>? rolesModulePermissions;

  UserRoles({
    required this.loggedInUserId,
    required this.id,
    required this.roleId,
    required this.rolesModulePermissions,
  });

  UserRoles.fromJson(Map<String, dynamic> json) {
    loggedInUserId = json["loggedInUserId"];
    id = json["id"];
    roleId = json["roleId"];
    rolesModulePermissions = json["rolesModulePermissions"] == null
        ? null
        : (json["rolesModulePermissions"] as List)
            .map((e) => RolesModulePermissions.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["loggedInUserId"] = loggedInUserId;
    data["id"] = id;
    data["roleId"] = roleId;
    data["rolesModulePermissions"] =
        rolesModulePermissions!.map((e) => e.toJson()).toList();
    return data;
  }
}

class RolesModulePermissions {
  late int loggedInUserId;
  late int id;
  late int roleId;
  late int moduleHierarchyId;
  late int permissionValue;
  dynamic modulePermission;

  RolesModulePermissions(
      {required this.loggedInUserId,
      required this.id,
      required this.roleId,
      required this.moduleHierarchyId,
      required this.permissionValue,
      required this.modulePermission});

  RolesModulePermissions.fromJson(Map<String, dynamic> json) {
    loggedInUserId = json["loggedInUserId"];
    id = json["id"];
    roleId = json["roleId"];
    moduleHierarchyId = json["moduleHierarchyId"];
    permissionValue = json["permissionValue"];
    modulePermission = json["modulePermission"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["loggedInUserId"] = loggedInUserId;
    data["id"] = id;
    data["roleId"] = roleId;
    data["moduleHierarchyId"] = moduleHierarchyId;
    data["permissionValue"] = permissionValue;
    data["modulePermission"] = modulePermission;
    return data;
  }
}
