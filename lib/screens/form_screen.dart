import 'dart:ffi';

import 'package:digit_assignment/models/birth_registration/birth_registration_model.dart';
import 'package:digit_assignment/models/dummy_data.dart';
import 'package:digit_assignment/screens/search_screen.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FormScreen extends StatefulWidget {
  final String title;
  final BirthRegistrationModel? details;
  const FormScreen({required this.title, this.details, super.key});

  @override
  FormScreenState createState() => FormScreenState();
}

class FormScreenState extends State<FormScreen> {
  String babyFirstNameKey = 'babyFirstName';
  String fatherKey = 'father';
  String motherKey = 'mother';
  String doctorNameKey = 'doctorName';
  String hospitalNameKey = 'hospitalName';
  String placeOfBirthKey = 'placeOfBirth';
  String tenantIdKey = 'tenantId';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: ReactiveFormBuilder(
                form: buildForm,
                builder: (context, form, child) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DigitTextFormField(
                          label: "Baby's First Name",
                          formControlName: babyFirstNameKey,
                          isRequired: true,
                          validationMessages: {
                            'required': (_) => 'Name is required',
                            'minLength': (_) =>
                                'Name should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Name should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: fatherKey,
                          isRequired: true,
                          label: "Father's Name",
                          validationMessages: {
                            'required': (_) => 'Father name is required',
                            'minLength': (_) =>
                                'Father name should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Father name should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: motherKey,
                          isRequired: true,
                          label: "Mother's Name",
                          validationMessages: {
                            'required': (_) => 'Mother name is required',
                            'minLength': (_) =>
                                'Mother name should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Mother name should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: doctorNameKey,
                          isRequired: true,
                          label: "Doctor's Name",
                          validationMessages: {
                            'required': (_) => 'Doctor name is required',
                            'minLength': (_) =>
                                'Doctor name should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Doctor name should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: hospitalNameKey,
                          isRequired: true,
                          label: "Hospital Name",
                          validationMessages: {
                            'required': (_) => 'Hospital name is required',
                            'minLength': (_) =>
                                'Hospital name should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Hospital name should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: placeOfBirthKey,
                          isRequired: true,
                          label: "Place of Birth",
                          validationMessages: {
                            'required': (_) => 'Place of Birth is required',
                            'minLength': (_) =>
                                'Place of Birth should be minimum of 2 characters',
                            'maxLength': (_) =>
                                'Place of Birth should be maximum of 128 characters',
                          },
                        ),
                        DigitTextFormField(
                          formControlName: tenantIdKey,
                          isRequired: true,
                          label: "TenantId",
                          validationMessages: {
                            'required': (_) => 'TenantId is required',
                            'minLength': (_) =>
                            'TenantId should be minimum of 2 characters',
                            'maxLength': (_) =>
                            'TenantId should be maximum of 128 characters',
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DigitElevatedButton(
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
                                            if (form.valid) {
                                              if (widget.details != null) {
                                                int index = DummyData.dummyList.indexWhere((element) => element.id == widget.details?.id);
                                                if (index != -1) {
                                                  DummyData.dummyList[index] = BirthRegistrationModel.fromJson(form.value).copyWith(id: widget.details!.id);
                                                  form.reset();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          'Yay ! Details Updated')));
                                                }

                                              } else {
                                                final newModel = BirthRegistrationModel.fromJson(form.value);
                                                final maxId = DummyData.dummyList.map((model) => model.id).fold(0, (prev, id) => id! > prev ? id : prev);
                                                DummyData.dummyList.add(newModel.copyWith(id: maxId + 1));
                                                form.reset();
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        'Yay ! Details Submitted')));
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          'Oops ! Please fill the mandatory details')));
                                            }
                                            Navigator.of(context).pushAndRemoveUntil(
                                                MaterialPageRoute(builder: (context) => const SearchScreen()),
                                                    (Route<dynamic> route) => false);
                                            },
                                        ),
                                        secondaryAction: DigitDialogActions(
                                          label: 'Back',
                                          action: (BuildContext context) =>
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop(),
                                        )));
                              },
                              child: const Text('Submit')),
                        )
                      ],
                    ),
                  );
                })
        ),
      ),
    );
  }

  FormGroup buildForm() {
    Map<String, Object> initialValues = {
      babyFirstNameKey: '',
      fatherKey: '',
      motherKey: '',
      doctorNameKey: '',
      hospitalNameKey: '',
      placeOfBirthKey: '',
      tenantIdKey: '',
    };

    if (widget.details != null) {
      initialValues.forEach((key, value) {
        if (widget.details!.toJson().containsKey(key)) {
          initialValues[key] = widget.details!.toJson()[key];
        }
      });
    }

    return fb.group(<String, Object>{
      babyFirstNameKey: FormControl<String>(
        value: initialValues[babyFirstNameKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      fatherKey: FormControl<String>(
        value: initialValues[fatherKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      motherKey: FormControl<String>(
        value: initialValues[motherKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      doctorNameKey: FormControl<String>(
        value: initialValues[doctorNameKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      hospitalNameKey: FormControl<String>(
        value: initialValues[hospitalNameKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      placeOfBirthKey: FormControl<String>(
        value: initialValues[placeOfBirthKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
      tenantIdKey: FormControl<String>(
        value: initialValues[tenantIdKey] as String,
        validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128),
        ],
      ),
    });
  }
}
