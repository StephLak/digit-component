// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthRegistrationResponseImpl _$$BirthRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BirthRegistrationResponseImpl(
      birthRegistrationApplications: (json['birthRegistrationApplications']
              as List<dynamic>)
          .map((e) =>
              BirthRegistrationApplication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BirthRegistrationResponseImplToJson(
        _$BirthRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'birthRegistrationApplications': instance.birthRegistrationApplications,
    };
