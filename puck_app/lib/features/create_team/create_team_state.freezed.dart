// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_team_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTeamState {
  AlphaInput get location => throw _privateConstructorUsedError;
  AlphaInput get nickname => throw _privateConstructorUsedError;
  AbbreviationInput get abbreviation => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTeamStateCopyWith<CreateTeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeamStateCopyWith<$Res> {
  factory $CreateTeamStateCopyWith(
          CreateTeamState value, $Res Function(CreateTeamState) then) =
      _$CreateTeamStateCopyWithImpl<$Res, CreateTeamState>;
  @useResult
  $Res call(
      {AlphaInput location,
      AlphaInput nickname,
      AbbreviationInput abbreviation,
      FormzSubmissionStatus status,
      bool isFormValid,
      String? errorMsg});
}

/// @nodoc
class _$CreateTeamStateCopyWithImpl<$Res, $Val extends CreateTeamState>
    implements $CreateTeamStateCopyWith<$Res> {
  _$CreateTeamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? nickname = null,
    Object? abbreviation = null,
    Object? status = null,
    Object? isFormValid = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AlphaInput,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as AlphaInput,
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as AbbreviationInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeamStateImplCopyWith<$Res>
    implements $CreateTeamStateCopyWith<$Res> {
  factory _$$CreateTeamStateImplCopyWith(_$CreateTeamStateImpl value,
          $Res Function(_$CreateTeamStateImpl) then) =
      __$$CreateTeamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AlphaInput location,
      AlphaInput nickname,
      AbbreviationInput abbreviation,
      FormzSubmissionStatus status,
      bool isFormValid,
      String? errorMsg});
}

/// @nodoc
class __$$CreateTeamStateImplCopyWithImpl<$Res>
    extends _$CreateTeamStateCopyWithImpl<$Res, _$CreateTeamStateImpl>
    implements _$$CreateTeamStateImplCopyWith<$Res> {
  __$$CreateTeamStateImplCopyWithImpl(
      _$CreateTeamStateImpl _value, $Res Function(_$CreateTeamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? nickname = null,
    Object? abbreviation = null,
    Object? status = null,
    Object? isFormValid = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$CreateTeamStateImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AlphaInput,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as AlphaInput,
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as AbbreviationInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateTeamStateImpl implements _CreateTeamState {
  const _$CreateTeamStateImpl(
      {this.location = const AlphaInput.pure(),
      this.nickname = const AlphaInput.pure(),
      this.abbreviation = const AbbreviationInput.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.isFormValid = false,
      this.errorMsg});

  @override
  @JsonKey()
  final AlphaInput location;
  @override
  @JsonKey()
  final AlphaInput nickname;
  @override
  @JsonKey()
  final AbbreviationInput abbreviation;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isFormValid;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'CreateTeamState(location: $location, nickname: $nickname, abbreviation: $abbreviation, status: $status, isFormValid: $isFormValid, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeamStateImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, nickname, abbreviation,
      status, isFormValid, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeamStateImplCopyWith<_$CreateTeamStateImpl> get copyWith =>
      __$$CreateTeamStateImplCopyWithImpl<_$CreateTeamStateImpl>(
          this, _$identity);
}

abstract class _CreateTeamState implements CreateTeamState {
  const factory _CreateTeamState(
      {final AlphaInput location,
      final AlphaInput nickname,
      final AbbreviationInput abbreviation,
      final FormzSubmissionStatus status,
      final bool isFormValid,
      final String? errorMsg}) = _$CreateTeamStateImpl;

  @override
  AlphaInput get location;
  @override
  AlphaInput get nickname;
  @override
  AbbreviationInput get abbreviation;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isFormValid;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$CreateTeamStateImplCopyWith<_$CreateTeamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
