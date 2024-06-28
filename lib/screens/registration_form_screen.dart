import 'package:digit_assignment/models/birth_registration/birth_registration_model.dart';
import 'package:digit_assignment/models/dummy_data.dart';
import 'package:digit_assignment/screens/home_screen.dart';
import 'package:digit_assignment/utils.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegistrationFormScreen extends StatefulWidget {
  final BirthRegistrationModel? details;
  const RegistrationFormScreen({this.details, super.key});

  @override
  RegistrationFormScreenState createState() => RegistrationFormScreenState();
}

class RegistrationFormScreenState extends State<RegistrationFormScreen> {
  @override
  void initState() {
    super.initState();
  }

  void submitData(FormGroup form, BuildContext passedContext) {
    if (form.valid) {
      if (widget.details != null) {
        int index = DummyData.dummyList
            .indexWhere((element) => element.id == widget.details?.id);
        if (index != -1) {
          DummyData.dummyList[index] =
              BirthRegistrationModel.fromJson(form.value)
                  .copyWith(id: widget.details!.id);
          form.reset();
          ScaffoldMessenger.of(passedContext).showSnackBar(
              const SnackBar(content: Text('Details successfully updated')));
        }
      } else {
        final newModel = BirthRegistrationModel.fromJson(form.value);
        final maxId = DummyData.dummyList
            .map((model) => model.id)
            .fold(0, (prev, id) => id! > prev ? id : prev);
        DummyData.dummyList.add(newModel.copyWith(id: maxId + 1));
        form.reset();
        ScaffoldMessenger.of(passedContext).showSnackBar(
            const SnackBar(content: Text('Data submitted successfully')));
      }
    } else {
      ScaffoldMessenger.of(passedContext).showSnackBar(
          const SnackBar(content: Text('Please fill the mandatory details')));
    }
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (passedContext) => const HomeScreen()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Birth Certificate Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: SingleChildScrollView(
            child: ReactiveFormBuilder(
                form: initializeForm,
                builder: (context, form, child) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DigitTextFormField(
                          label: "Baby's first name",
                          formControlName: AppUtils.babyFirstNameKey,
                          isRequired: true,
                          validationMessages:
                              AppUtils.getValidationMessage("Name"),
                        ),
                        DigitTextFormField(
                          formControlName: AppUtils.fatherKey,
                          isRequired: true,
                          label: "Father's name",
                          validationMessages:
                              AppUtils.getValidationMessage("Father name"),
                        ),
                        DigitTextFormField(
                          formControlName: AppUtils.motherKey,
                          isRequired: true,
                          label: "Mother's name",
                          validationMessages:
                              AppUtils.getValidationMessage("Mother name"),
                        ),
                        DigitTextFormField(
                          formControlName: AppUtils.doctorNameKey,
                          isRequired: true,
                          label: "Doctor's name",
                          validationMessages:
                              AppUtils.getValidationMessage("Doctor name"),
                        ),
                        DigitTextFormField(
                          formControlName: AppUtils.hospitalNameKey,
                          isRequired: true,
                          label: "Hospital name",
                          validationMessages:
                              AppUtils.getValidationMessage("Hospital name"),
                        ),
                        DigitTextFormField(
                          formControlName: AppUtils.placeOfBirthKey,
                          isRequired: true,
                          label: "Place of birth",
                          validationMessages:
                              AppUtils.getValidationMessage("Place of birth"),
                        ),
                        DigitTextFormField(
                            formControlName: AppUtils.tenantIdKey,
                            isRequired: true,
                            label: "Tenant ID",
                            validationMessages:
                                AppUtils.getValidationMessage("Tenant ID")),
                        DigitElevatedButton(
                            onPressed: () {
                              form.markAllAsTouched();
                              if (!form.valid) return;
                              DigitDialog.show(context,
                                  options: DigitDialogOptions(
                                      titleIcon: const Icon(
                                        Icons.warning,
                                        color: Colors.red,
                                      ),
                                      titleText: 'Warning',
                                      contentText:
                                          'Please confirm your details before submitting',
                                      primaryAction: DigitDialogActions(
                                        label: 'Confirm',
                                        action: (BuildContext context) {
                                          submitData(form, context);
                                        },
                                      ),
                                      secondaryAction: DigitDialogActions(
                                        label: 'Cancel',
                                        action: (BuildContext context) =>
                                            Navigator.of(context,
                                                    rootNavigator: true)
                                                .pop(),
                                      )));
                            },
                            child: const Text('Submit'))
                      ],
                    ),
                  );
                })),
      ),
    );
  }

  FormGroup initializeForm() {
    Map<String, Object> initialValues = {
      AppUtils.babyFirstNameKey: '',
      AppUtils.fatherKey: '',
      AppUtils.motherKey: '',
      AppUtils.doctorNameKey: '',
      AppUtils.hospitalNameKey: '',
      AppUtils.placeOfBirthKey: '',
      AppUtils.tenantIdKey: '',
    };

    if (widget.details != null) {
      initialValues.forEach((key, value) {
        if (widget.details!.toJson().containsKey(key)) {
          initialValues[key] = widget.details!.toJson()[key];
        }
      });
    }

    return fb.group(<String, Object>{
      AppUtils.babyFirstNameKey: FormControl<String>(
        value: initialValues[AppUtils.babyFirstNameKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.fatherKey: FormControl<String>(
        value: initialValues[AppUtils.fatherKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.motherKey: FormControl<String>(
        value: initialValues[AppUtils.motherKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.doctorNameKey: FormControl<String>(
        value: initialValues[AppUtils.doctorNameKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.hospitalNameKey: FormControl<String>(
        value: initialValues[AppUtils.hospitalNameKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.placeOfBirthKey: FormControl<String>(
        value: initialValues[AppUtils.placeOfBirthKey] as String,
        validators: AppUtils.validators,
      ),
      AppUtils.tenantIdKey: FormControl<String>(
        value: initialValues[AppUtils.tenantIdKey] as String,
        validators: AppUtils.validators,
      ),
    });
  }
}
