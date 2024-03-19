import 'package:digit_assignment/models/role.dart';

class User {
  dynamic tenantId;
  dynamic userName;
  List<Role> roles;

  User({
    required this.tenantId,
    required this.userName,
    required this.roles,
  });
}
