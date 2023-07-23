// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speed_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpeedTime {
  double get speed => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeedTimeCopyWith<SpeedTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeedTimeCopyWith<$Res> {
  factory $SpeedTimeCopyWith(SpeedTime value, $Res Function(SpeedTime) then) =
      _$SpeedTimeCopyWithImpl<$Res, SpeedTime>;
  @useResult
  $Res call({double speed, double time, double x, double y});
}

/// @nodoc
class _$SpeedTimeCopyWithImpl<$Res, $Val extends SpeedTime>
    implements $SpeedTimeCopyWith<$Res> {
  _$SpeedTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? time = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeedTimeCopyWith<$Res> implements $SpeedTimeCopyWith<$Res> {
  factory _$$_SpeedTimeCopyWith(
          _$_SpeedTime value, $Res Function(_$_SpeedTime) then) =
      __$$_SpeedTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, double time, double x, double y});
}

/// @nodoc
class __$$_SpeedTimeCopyWithImpl<$Res>
    extends _$SpeedTimeCopyWithImpl<$Res, _$_SpeedTime>
    implements _$$_SpeedTimeCopyWith<$Res> {
  __$$_SpeedTimeCopyWithImpl(
      _$_SpeedTime _value, $Res Function(_$_SpeedTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? time = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_SpeedTime(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SpeedTime implements _SpeedTime {
  const _$_SpeedTime(
      {required this.speed,
      required this.time,
      required this.x,
      required this.y});

  @override
  final double speed;
  @override
  final double time;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'SpeedTime(speed: $speed, time: $time, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeedTime &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speed, time, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeedTimeCopyWith<_$_SpeedTime> get copyWith =>
      __$$_SpeedTimeCopyWithImpl<_$_SpeedTime>(this, _$identity);
}

abstract class _SpeedTime implements SpeedTime {
  const factory _SpeedTime(
      {required final double speed,
      required final double time,
      required final double x,
      required final double y}) = _$_SpeedTime;

  @override
  double get speed;
  @override
  double get time;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_SpeedTimeCopyWith<_$_SpeedTime> get copyWith =>
      throw _privateConstructorUsedError;
}
