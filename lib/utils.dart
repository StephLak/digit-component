import 'package:reactive_forms/reactive_forms.dart';

class AppUtils {
  static String babyFirstNameKey = 'babyFirstName';
  static String fatherKey = 'father';
  static String motherKey = 'mother';
  static String doctorNameKey = 'doctorName';
  static String hospitalNameKey = 'hospitalName';
  static String placeOfBirthKey = 'placeOfBirth';
  static String tenantIdKey = 'tenantId';

  static List<Map<String, dynamic>? Function(AbstractControl<dynamic>)>
      validators = [
    Validators.required,
    Validators.minLength(2),
    Validators.maxLength(100),
  ];

  static Map<String, String Function(Object)>? getValidationMessage(
      String name) {
    return {
      'required': (_) => '$name is required',
      'minLength': (_) => '$name must be minimum of 2 characters',
      'maxLength': (_) => '$name must be maximum of 100 characters',
    };
  }
}
