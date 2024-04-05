import 'package:digit_assignment/models/birth_registration_application/birth_registration_application.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_registration_request.freezed.dart';
part 'birth_registration_request.g.dart';

@freezed
class BirthRegistrationRequest with _$BirthRegistrationRequest {
  const factory BirthRegistrationRequest({
    required List<BirthRegistrationApplication> birthRegistrationApplications,
  }) = _BirthRegistrationRequest;

  factory BirthRegistrationRequest.fromJson(Map<String, dynamic> json) => _$BirthRegistrationRequestFromJson(json);

}