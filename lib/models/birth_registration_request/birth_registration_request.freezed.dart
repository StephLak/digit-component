// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirthRegistrationRequest _$BirthRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _BirthRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$BirthRegistrationRequest {
  List<BirthRegistrationApplication> get birthRegistrationApplications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthRegistrationRequestCopyWith<BirthRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthRegistrationRequestCopyWith<$Res> {
  factory $BirthRegistrationRequestCopyWith(BirthRegistrationRequest value,
          $Res Function(BirthRegistrationRequest) then) =
      _$BirthRegistrationRequestCopyWithImpl<$Res, BirthRegistrationRequest>;
  @useResult
  $Res call({List<BirthRegistrationApplication> birthRegistrationApplications});
}

/// @nodoc
class _$BirthRegistrationRequestCopyWithImpl<$Res,
        $Val extends BirthRegistrationRequest>
    implements $BirthRegistrationRequestCopyWith<$Res> {
  _$BirthRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthRegistrationApplications = null,
  }) {
    return _then(_value.copyWith(
      birthRegistrationApplications: null == birthRegistrationApplications
          ? _value.birthRegistrationApplications
          : birthRegistrationApplications // ignore: cast_nullable_to_non_nullable
              as List<BirthRegistrationApplication>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirthRegistrationRequestImplCopyWith<$Res>
    implements $BirthRegistrationRequestCopyWith<$Res> {
  factory _$$BirthRegistrationRequestImplCopyWith(
          _$BirthRegistrationRequestImpl value,
          $Res Function(_$BirthRegistrationRequestImpl) then) =
      __$$BirthRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BirthRegistrationApplication> birthRegistrationApplications});
}

/// @nodoc
class __$$BirthRegistrationRequestImplCopyWithImpl<$Res>
    extends _$BirthRegistrationRequestCopyWithImpl<$Res,
        _$BirthRegistrationRequestImpl>
    implements _$$BirthRegistrationRequestImplCopyWith<$Res> {
  __$$BirthRegistrationRequestImplCopyWithImpl(
      _$BirthRegistrationRequestImpl _value,
      $Res Function(_$BirthRegistrationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthRegistrationApplications = null,
  }) {
    return _then(_$BirthRegistrationRequestImpl(
      birthRegistrationApplications: null == birthRegistrationApplications
          ? _value._birthRegistrationApplications
          : birthRegistrationApplications // ignore: cast_nullable_to_non_nullable
              as List<BirthRegistrationApplication>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthRegistrationRequestImpl implements _BirthRegistrationRequest {
  const _$BirthRegistrationRequestImpl(
      {required final List<BirthRegistrationApplication>
          birthRegistrationApplications})
      : _birthRegistrationApplications = birthRegistrationApplications;

  factory _$BirthRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthRegistrationRequestImplFromJson(json);

  final List<BirthRegistrationApplication> _birthRegistrationApplications;
  @override
  List<BirthRegistrationApplication> get birthRegistrationApplications {
    if (_birthRegistrationApplications is EqualUnmodifiableListView)
      return _birthRegistrationApplications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birthRegistrationApplications);
  }

  @override
  String toString() {
    return 'BirthRegistrationRequest(birthRegistrationApplications: $birthRegistrationApplications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthRegistrationRequestImpl &&
            const DeepCollectionEquality().equals(
                other._birthRegistrationApplications,
                _birthRegistrationApplications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_birthRegistrationApplications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthRegistrationRequestImplCopyWith<_$BirthRegistrationRequestImpl>
      get copyWith => __$$BirthRegistrationRequestImplCopyWithImpl<
          _$BirthRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _BirthRegistrationRequest implements BirthRegistrationRequest {
  const factory _BirthRegistrationRequest(
      {required final List<BirthRegistrationApplication>
          birthRegistrationApplications}) = _$BirthRegistrationRequestImpl;

  factory _BirthRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$BirthRegistrationRequestImpl.fromJson;

  @override
  List<BirthRegistrationApplication> get birthRegistrationApplications;
  @override
  @JsonKey(ignore: true)
  _$$BirthRegistrationRequestImplCopyWith<_$BirthRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
