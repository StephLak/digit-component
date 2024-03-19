import 'package:digit_assignment/models/user.dart';

class BirthRegistrationApplication {
  dynamic id;
  dynamic tenantId;
  dynamic applicationNumber;
  dynamic babyFirstName;
  User father;
  User mother;
  dynamic doctorName;
  dynamic hospitalName;
  dynamic placeOfBirth;

  BirthRegistrationApplication({
    this.id,
    required this.tenantId,
    this.applicationNumber,
    required this.babyFirstName,
    required this.father,
    required this.mother,
    required this.doctorName,
    required this.hospitalName,
    required this.placeOfBirth
  });
}
