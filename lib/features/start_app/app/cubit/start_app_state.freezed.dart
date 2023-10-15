// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartAppState {
  bool get isLogged => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get showOnboarding => throw _privateConstructorUsedError;
  AppVersionConfig? get appVersionConfig => throw _privateConstructorUsedError;
  bool get waitOneSecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartAppStateCopyWith<StartAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartAppStateCopyWith<$Res> {
  factory $StartAppStateCopyWith(
          StartAppState value, $Res Function(StartAppState) then) =
      _$StartAppStateCopyWithImpl<$Res, StartAppState>;
  @useResult
  $Res call(
      {bool isLogged,
      bool error,
      bool showOnboarding,
      AppVersionConfig? appVersionConfig,
      bool waitOneSecond});

  $AppVersionConfigCopyWith<$Res>? get appVersionConfig;
}

/// @nodoc
class _$StartAppStateCopyWithImpl<$Res, $Val extends StartAppState>
    implements $StartAppStateCopyWith<$Res> {
  _$StartAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = null,
    Object? error = null,
    Object? showOnboarding = null,
    Object? appVersionConfig = freezed,
    Object? waitOneSecond = null,
  }) {
    return _then(_value.copyWith(
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
      appVersionConfig: freezed == appVersionConfig
          ? _value.appVersionConfig
          : appVersionConfig // ignore: cast_nullable_to_non_nullable
              as AppVersionConfig?,
      waitOneSecond: null == waitOneSecond
          ? _value.waitOneSecond
          : waitOneSecond // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppVersionConfigCopyWith<$Res>? get appVersionConfig {
    if (_value.appVersionConfig == null) {
      return null;
    }

    return $AppVersionConfigCopyWith<$Res>(_value.appVersionConfig!, (value) {
      return _then(_value.copyWith(appVersionConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartAppStateImplCopyWith<$Res>
    implements $StartAppStateCopyWith<$Res> {
  factory _$$StartAppStateImplCopyWith(
          _$StartAppStateImpl value, $Res Function(_$StartAppStateImpl) then) =
      __$$StartAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLogged,
      bool error,
      bool showOnboarding,
      AppVersionConfig? appVersionConfig,
      bool waitOneSecond});

  @override
  $AppVersionConfigCopyWith<$Res>? get appVersionConfig;
}

/// @nodoc
class __$$StartAppStateImplCopyWithImpl<$Res>
    extends _$StartAppStateCopyWithImpl<$Res, _$StartAppStateImpl>
    implements _$$StartAppStateImplCopyWith<$Res> {
  __$$StartAppStateImplCopyWithImpl(
      _$StartAppStateImpl _value, $Res Function(_$StartAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = null,
    Object? error = null,
    Object? showOnboarding = null,
    Object? appVersionConfig = freezed,
    Object? waitOneSecond = null,
  }) {
    return _then(_$StartAppStateImpl(
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
      appVersionConfig: freezed == appVersionConfig
          ? _value.appVersionConfig
          : appVersionConfig // ignore: cast_nullable_to_non_nullable
              as AppVersionConfig?,
      waitOneSecond: null == waitOneSecond
          ? _value.waitOneSecond
          : waitOneSecond // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartAppStateImpl implements _StartAppState {
  const _$StartAppStateImpl(
      {this.isLogged = false,
      this.error = false,
      this.showOnboarding = false,
      this.appVersionConfig,
      this.waitOneSecond = false});

  @override
  @JsonKey()
  final bool isLogged;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool showOnboarding;
  @override
  final AppVersionConfig? appVersionConfig;
  @override
  @JsonKey()
  final bool waitOneSecond;

  @override
  String toString() {
    return 'StartAppState(isLogged: $isLogged, error: $error, showOnboarding: $showOnboarding, appVersionConfig: $appVersionConfig, waitOneSecond: $waitOneSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartAppStateImpl &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.showOnboarding, showOnboarding) ||
                other.showOnboarding == showOnboarding) &&
            (identical(other.appVersionConfig, appVersionConfig) ||
                other.appVersionConfig == appVersionConfig) &&
            (identical(other.waitOneSecond, waitOneSecond) ||
                other.waitOneSecond == waitOneSecond));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged, error, showOnboarding,
      appVersionConfig, waitOneSecond);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      __$$StartAppStateImplCopyWithImpl<_$StartAppStateImpl>(this, _$identity);
}

abstract class _StartAppState implements StartAppState {
  const factory _StartAppState(
      {final bool isLogged,
      final bool error,
      final bool showOnboarding,
      final AppVersionConfig? appVersionConfig,
      final bool waitOneSecond}) = _$StartAppStateImpl;

  @override
  bool get isLogged;
  @override
  bool get error;
  @override
  bool get showOnboarding;
  @override
  AppVersionConfig? get appVersionConfig;
  @override
  bool get waitOneSecond;
  @override
  @JsonKey(ignore: true)
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
