import 'package:digit_assignment/models/birth_registration_application/birth_registration_application.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_registration_response.freezed.dart';
part 'birth_registration_response.g.dart';

@freezed
class BirthRegistrationResponse with _$BirthRegistrationResponse {
  const factory BirthRegistrationResponse({
    required List<BirthRegistrationApplication> birthRegistrationApplications,
  }) = _BirthRegistrationResponse;

  factory BirthRegistrationResponse.fromJson(Map<String, dynamic> json) => _$BirthRegistrationResponseFromJson(json);

}