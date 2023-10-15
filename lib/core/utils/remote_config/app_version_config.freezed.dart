// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppVersionConfig {
  bool get isLatestVersion => throw _privateConstructorUsedError;
  bool get needShowUpdate => throw _privateConstructorUsedError;
  bool get isVersionNotAllowed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionConfigCopyWith<AppVersionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionConfigCopyWith<$Res> {
  factory $AppVersionConfigCopyWith(
          AppVersionConfig value, $Res Function(AppVersionConfig) then) =
      _$AppVersionConfigCopyWithImpl<$Res, AppVersionConfig>;
  @useResult
  $Res call(
      {bool isLatestVersion, bool needShowUpdate, bool isVersionNotAllowed});
}

/// @nodoc
class _$AppVersionConfigCopyWithImpl<$Res, $Val extends AppVersionConfig>
    implements $AppVersionConfigCopyWith<$Res> {
  _$AppVersionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLatestVersion = null,
    Object? needShowUpdate = null,
    Object? isVersionNotAllowed = null,
  }) {
    return _then(_value.copyWith(
      isLatestVersion: null == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      needShowUpdate: null == needShowUpdate
          ? _value.needShowUpdate
          : needShowUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isVersionNotAllowed: null == isVersionNotAllowed
          ? _value.isVersionNotAllowed
          : isVersionNotAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionConfigImplCopyWith<$Res>
    implements $AppVersionConfigCopyWith<$Res> {
  factory _$$AppVersionConfigImplCopyWith(_$AppVersionConfigImpl value,
          $Res Function(_$AppVersionConfigImpl) then) =
      __$$AppVersionConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLatestVersion, bool needShowUpdate, bool isVersionNotAllowed});
}

/// @nodoc
class __$$AppVersionConfigImplCopyWithImpl<$Res>
    extends _$AppVersionConfigCopyWithImpl<$Res, _$AppVersionConfigImpl>
    implements _$$AppVersionConfigImplCopyWith<$Res> {
  __$$AppVersionConfigImplCopyWithImpl(_$AppVersionConfigImpl _value,
      $Res Function(_$AppVersionConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLatestVersion = null,
    Object? needShowUpdate = null,
    Object? isVersionNotAllowed = null,
  }) {
    return _then(_$AppVersionConfigImpl(
      isLatestVersion: null == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      needShowUpdate: null == needShowUpdate
          ? _value.needShowUpdate
          : needShowUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isVersionNotAllowed: null == isVersionNotAllowed
          ? _value.isVersionNotAllowed
          : isVersionNotAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppVersionConfigImpl implements _AppVersionConfig {
  const _$AppVersionConfigImpl(
      {required this.isLatestVersion,
      required this.needShowUpdate,
      required this.isVersionNotAllowed});

  @override
  final bool isLatestVersion;
  @override
  final bool needShowUpdate;
  @override
  final bool isVersionNotAllowed;

  @override
  String toString() {
    return 'AppVersionConfig(isLatestVersion: $isLatestVersion, needShowUpdate: $needShowUpdate, isVersionNotAllowed: $isVersionNotAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionConfigImpl &&
            (identical(other.isLatestVersion, isLatestVersion) ||
                other.isLatestVersion == isLatestVersion) &&
            (identical(other.needShowUpdate, needShowUpdate) ||
                other.needShowUpdate == needShowUpdate) &&
            (identical(other.isVersionNotAllowed, isVersionNotAllowed) ||
                other.isVersionNotAllowed == isVersionNotAllowed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLatestVersion, needShowUpdate, isVersionNotAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionConfigImplCopyWith<_$AppVersionConfigImpl> get copyWith =>
      __$$AppVersionConfigImplCopyWithImpl<_$AppVersionConfigImpl>(
          this, _$identity);
}

abstract class _AppVersionConfig implements AppVersionConfig {
  const factory _AppVersionConfig(
      {required final bool isLatestVersion,
      required final bool needShowUpdate,
      required final bool isVersionNotAllowed}) = _$AppVersionConfigImpl;

  @override
  bool get isLatestVersion;
  @override
  bool get needShowUpdate;
  @override
  bool get isVersionNotAllowed;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionConfigImplCopyWith<_$AppVersionConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
