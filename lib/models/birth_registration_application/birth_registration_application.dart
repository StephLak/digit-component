import 'package:digit_assignment/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_registration_application.freezed.dart';
part 'birth_registration_application.g.dart';

@freezed
class BirthRegistrationApplication with _$BirthRegistrationApplication {
  const factory BirthRegistrationApplication({
    dynamic id,
    required dynamic tenantId,
    dynamic applicationNumber,
    required dynamic babyFirstName,
    required User father,
    required User mother,
    required dynamic doctorName,
    required dynamic hospitalName,
    required dynamic placeOfBirth,
}) = _BirthRegistrationApplication;

  factory BirthRegistrationApplication.fromJson(Map<String, dynamic> json) => _$BirthRegistrationApplicationFromJson(json);

}
