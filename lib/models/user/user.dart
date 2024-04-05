import 'package:digit_assignment/models/role/role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required dynamic tenantId,
    required dynamic userName,
    required List<Role> roles,
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}
