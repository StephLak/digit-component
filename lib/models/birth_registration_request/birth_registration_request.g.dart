// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthRegistrationRequestImpl _$$BirthRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BirthRegistrationRequestImpl(
      birthRegistrationApplications: (json['birthRegistrationApplications']
              as List<dynamic>)
          .map((e) =>
              BirthRegistrationApplication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BirthRegistrationRequestImplToJson(
        _$BirthRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'birthRegistrationApplications': instance.birthRegistrationApplications,
    };
