// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_registration_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthRegistrationApplicationImpl _$$BirthRegistrationApplicationImplFromJson(
        Map<String, dynamic> json) =>
    _$BirthRegistrationApplicationImpl(
      id: json['id'],
      tenantId: json['tenantId'],
      applicationNumber: json['applicationNumber'],
      babyFirstName: json['babyFirstName'],
      father: User.fromJson(json['father'] as Map<String, dynamic>),
      mother: User.fromJson(json['mother'] as Map<String, dynamic>),
      doctorName: json['doctorName'],
      hospitalName: json['hospitalName'],
      placeOfBirth: json['placeOfBirth'],
    );

Map<String, dynamic> _$$BirthRegistrationApplicationImplToJson(
        _$BirthRegistrationApplicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'applicationNumber': instance.applicationNumber,
      'babyFirstName': instance.babyFirstName,
      'father': instance.father,
      'mother': instance.mother,
      'doctorName': instance.doctorName,
      'hospitalName': instance.hospitalName,
      'placeOfBirth': instance.placeOfBirth,
    };
