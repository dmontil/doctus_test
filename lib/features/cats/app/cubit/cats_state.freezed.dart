// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatsState {
  List<Cat> get cats => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatsStateCopyWith<CatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatsStateCopyWith<$Res> {
  factory $CatsStateCopyWith(CatsState value, $Res Function(CatsState) then) =
      _$CatsStateCopyWithImpl<$Res, CatsState>;
  @useResult
  $Res call({List<Cat> cats, Status status});
}

/// @nodoc
class _$CatsStateCopyWithImpl<$Res, $Val extends CatsState>
    implements $CatsStateCopyWith<$Res> {
  _$CatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cats = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      cats: null == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as List<Cat>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatsStateImplCopyWith<$Res>
    implements $CatsStateCopyWith<$Res> {
  factory _$$CatsStateImplCopyWith(
          _$CatsStateImpl value, $Res Function(_$CatsStateImpl) then) =
      __$$CatsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cat> cats, Status status});
}

/// @nodoc
class __$$CatsStateImplCopyWithImpl<$Res>
    extends _$CatsStateCopyWithImpl<$Res, _$CatsStateImpl>
    implements _$$CatsStateImplCopyWith<$Res> {
  __$$CatsStateImplCopyWithImpl(
      _$CatsStateImpl _value, $Res Function(_$CatsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cats = null,
    Object? status = null,
  }) {
    return _then(_$CatsStateImpl(
      cats: null == cats
          ? _value._cats
          : cats // ignore: cast_nullable_to_non_nullable
              as List<Cat>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$CatsStateImpl implements _CatsState {
  const _$CatsStateImpl({required final List<Cat> cats, required this.status})
      : _cats = cats;

  final List<Cat> _cats;
  @override
  List<Cat> get cats {
    if (_cats is EqualUnmodifiableListView) return _cats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cats);
  }

  @override
  final Status status;

  @override
  String toString() {
    return 'CatsState(cats: $cats, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatsStateImpl &&
            const DeepCollectionEquality().equals(other._cats, _cats) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cats), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatsStateImplCopyWith<_$CatsStateImpl> get copyWith =>
      __$$CatsStateImplCopyWithImpl<_$CatsStateImpl>(this, _$identity);
}

abstract class _CatsState implements CatsState {
  const factory _CatsState(
      {required final List<Cat> cats,
      required final Status status}) = _$CatsStateImpl;

  @override
  List<Cat> get cats;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$CatsStateImplCopyWith<_$CatsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
