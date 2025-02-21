// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_up_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountUpGameState {
  int get count => throw _privateConstructorUsedError;
  int get highScore => throw _privateConstructorUsedError;
  int get remainingSeconds => throw _privateConstructorUsedError;
  bool get isGameOver => throw _privateConstructorUsedError;

  /// Create a copy of CountUpGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountUpGameStateCopyWith<CountUpGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountUpGameStateCopyWith<$Res> {
  factory $CountUpGameStateCopyWith(
          CountUpGameState value, $Res Function(CountUpGameState) then) =
      _$CountUpGameStateCopyWithImpl<$Res, CountUpGameState>;
  @useResult
  $Res call({int count, int highScore, int remainingSeconds, bool isGameOver});
}

/// @nodoc
class _$CountUpGameStateCopyWithImpl<$Res, $Val extends CountUpGameState>
    implements $CountUpGameStateCopyWith<$Res> {
  _$CountUpGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountUpGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? highScore = null,
    Object? remainingSeconds = null,
    Object? isGameOver = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      highScore: null == highScore
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountUpGameStateImplCopyWith<$Res>
    implements $CountUpGameStateCopyWith<$Res> {
  factory _$$CountUpGameStateImplCopyWith(_$CountUpGameStateImpl value,
          $Res Function(_$CountUpGameStateImpl) then) =
      __$$CountUpGameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int highScore, int remainingSeconds, bool isGameOver});
}

/// @nodoc
class __$$CountUpGameStateImplCopyWithImpl<$Res>
    extends _$CountUpGameStateCopyWithImpl<$Res, _$CountUpGameStateImpl>
    implements _$$CountUpGameStateImplCopyWith<$Res> {
  __$$CountUpGameStateImplCopyWithImpl(_$CountUpGameStateImpl _value,
      $Res Function(_$CountUpGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountUpGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? highScore = null,
    Object? remainingSeconds = null,
    Object? isGameOver = null,
  }) {
    return _then(_$CountUpGameStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      highScore: null == highScore
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CountUpGameStateImpl implements _CountUpGameState {
  const _$CountUpGameStateImpl(
      {this.count = 0,
      this.highScore = 0,
      this.remainingSeconds = 10,
      this.isGameOver = false});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int highScore;
  @override
  @JsonKey()
  final int remainingSeconds;
  @override
  @JsonKey()
  final bool isGameOver;

  @override
  String toString() {
    return 'CountUpGameState(count: $count, highScore: $highScore, remainingSeconds: $remainingSeconds, isGameOver: $isGameOver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountUpGameStateImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.highScore, highScore) ||
                other.highScore == highScore) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.isGameOver, isGameOver) ||
                other.isGameOver == isGameOver));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, count, highScore, remainingSeconds, isGameOver);

  /// Create a copy of CountUpGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountUpGameStateImplCopyWith<_$CountUpGameStateImpl> get copyWith =>
      __$$CountUpGameStateImplCopyWithImpl<_$CountUpGameStateImpl>(
          this, _$identity);
}

abstract class _CountUpGameState implements CountUpGameState {
  const factory _CountUpGameState(
      {final int count,
      final int highScore,
      final int remainingSeconds,
      final bool isGameOver}) = _$CountUpGameStateImpl;

  @override
  int get count;
  @override
  int get highScore;
  @override
  int get remainingSeconds;
  @override
  bool get isGameOver;

  /// Create a copy of CountUpGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountUpGameStateImplCopyWith<_$CountUpGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
