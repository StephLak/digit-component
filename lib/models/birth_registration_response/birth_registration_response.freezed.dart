// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirthRegistrationResponse _$BirthRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _BirthRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$BirthRegistrationResponse {
  List<BirthRegistrationApplication> get birthRegistrationApplications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthRegistrationResponseCopyWith<BirthRegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthRegistrationResponseCopyWith<$Res> {
  factory $BirthRegistrationResponseCopyWith(BirthRegistrationResponse value,
          $Res Function(BirthRegistrationResponse) then) =
      _$BirthRegistrationResponseCopyWithImpl<$Res, BirthRegistrationResponse>;
  @useResult
  $Res call({List<BirthRegistrationApplication> birthRegistrationApplications});
}

/// @nodoc
class _$BirthRegistrationResponseCopyWithImpl<$Res,
        $Val extends BirthRegistrationResponse>
    implements $BirthRegistrationResponseCopyWith<$Res> {
  _$BirthRegistrationResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$BirthRegistrationResponseImplCopyWith<$Res>
    implements $BirthRegistrationResponseCopyWith<$Res> {
  factory _$$BirthRegistrationResponseImplCopyWith(
          _$BirthRegistrationResponseImpl value,
          $Res Function(_$BirthRegistrationResponseImpl) then) =
      __$$BirthRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BirthRegistrationApplication> birthRegistrationApplications});
}

/// @nodoc
class __$$BirthRegistrationResponseImplCopyWithImpl<$Res>
    extends _$BirthRegistrationResponseCopyWithImpl<$Res,
        _$BirthRegistrationResponseImpl>
    implements _$$BirthRegistrationResponseImplCopyWith<$Res> {
  __$$BirthRegistrationResponseImplCopyWithImpl(
      _$BirthRegistrationResponseImpl _value,
      $Res Function(_$BirthRegistrationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthRegistrationApplications = null,
  }) {
    return _then(_$BirthRegistrationResponseImpl(
      birthRegistrationApplications: null == birthRegistrationApplications
          ? _value._birthRegistrationApplications
          : birthRegistrationApplications // ignore: cast_nullable_to_non_nullable
              as List<BirthRegistrationApplication>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthRegistrationResponseImpl implements _BirthRegistrationResponse {
  const _$BirthRegistrationResponseImpl(
      {required final List<BirthRegistrationApplication>
          birthRegistrationApplications})
      : _birthRegistrationApplications = birthRegistrationApplications;

  factory _$BirthRegistrationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthRegistrationResponseImplFromJson(json);

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
    return 'BirthRegistrationResponse(birthRegistrationApplications: $birthRegistrationApplications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthRegistrationResponseImpl &&
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
  _$$BirthRegistrationResponseImplCopyWith<_$BirthRegistrationResponseImpl>
      get copyWith => __$$BirthRegistrationResponseImplCopyWithImpl<
          _$BirthRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _BirthRegistrationResponse implements BirthRegistrationResponse {
  const factory _BirthRegistrationResponse(
      {required final List<BirthRegistrationApplication>
          birthRegistrationApplications}) = _$BirthRegistrationResponseImpl;

  factory _BirthRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$BirthRegistrationResponseImpl.fromJson;

  @override
  List<BirthRegistrationApplication> get birthRegistrationApplications;
  @override
  @JsonKey(ignore: true)
  _$$BirthRegistrationResponseImplCopyWith<_$BirthRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
