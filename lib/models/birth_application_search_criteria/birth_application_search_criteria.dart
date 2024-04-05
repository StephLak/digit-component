import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_application_search_criteria.freezed.dart';
part 'birth_application_search_criteria.g.dart';

@freezed
class BirthApplicationSearchCriteria with _$BirthApplicationSearchCriteria {
  const factory BirthApplicationSearchCriteria({
    required String tenantId
}) = _BirthApplicationSearchCriteria;

  factory BirthApplicationSearchCriteria.fromJson(Map<String, dynamic> json) => _$BirthApplicationSearchCriteriaFromJson(json);

}