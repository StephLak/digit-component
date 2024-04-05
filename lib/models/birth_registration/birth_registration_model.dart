import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_registration_model.freezed.dart';
part 'birth_registration_model.g.dart';

@freezed
class BirthRegistrationModel with _$BirthRegistrationModel {
  const factory BirthRegistrationModel({
    required int? id,
    required String babyFirstName,
    required String doctorName,
    required String father,
    required String hospitalName,
    required String mother,
    required String placeOfBirth,
    required String tenantId,
}) = _BirthRegistrationModel;

  factory BirthRegistrationModel.fromJson(Map<String, dynamic> json) => _$BirthRegistrationModelFromJson(json);

}
