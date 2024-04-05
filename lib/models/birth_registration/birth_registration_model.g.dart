// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthRegistrationModelImpl _$$BirthRegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BirthRegistrationModelImpl(
      id: json['id'] as int?,
      babyFirstName: json['babyFirstName'] as String,
      doctorName: json['doctorName'] as String,
      father: json['father'] as String,
      hospitalName: json['hospitalName'] as String,
      mother: json['mother'] as String,
      placeOfBirth: json['placeOfBirth'] as String,
      tenantId: json['tenantId'] as String,
    );

Map<String, dynamic> _$$BirthRegistrationModelImplToJson(
        _$BirthRegistrationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'babyFirstName': instance.babyFirstName,
      'doctorName': instance.doctorName,
      'father': instance.father,
      'hospitalName': instance.hospitalName,
      'mother': instance.mother,
      'placeOfBirth': instance.placeOfBirth,
      'tenantId': instance.tenantId,
    };
