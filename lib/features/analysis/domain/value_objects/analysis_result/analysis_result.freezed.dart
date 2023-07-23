// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalysisResult {
  double get timePeriod => throw _privateConstructorUsedError;
  List<double> get averageSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisResultCopyWith<AnalysisResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisResultCopyWith<$Res> {
  factory $AnalysisResultCopyWith(
          AnalysisResult value, $Res Function(AnalysisResult) then) =
      _$AnalysisResultCopyWithImpl<$Res, AnalysisResult>;
  @useResult
  $Res call({double timePeriod, List<double> averageSpeed});
}

/// @nodoc
class _$AnalysisResultCopyWithImpl<$Res, $Val extends AnalysisResult>
    implements $AnalysisResultCopyWith<$Res> {
  _$AnalysisResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? averageSpeed = null,
  }) {
    return _then(_value.copyWith(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalysisResultCopyWith<$Res>
    implements $AnalysisResultCopyWith<$Res> {
  factory _$$_AnalysisResultCopyWith(
          _$_AnalysisResult value, $Res Function(_$_AnalysisResult) then) =
      __$$_AnalysisResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double timePeriod, List<double> averageSpeed});
}

/// @nodoc
class __$$_AnalysisResultCopyWithImpl<$Res>
    extends _$AnalysisResultCopyWithImpl<$Res, _$_AnalysisResult>
    implements _$$_AnalysisResultCopyWith<$Res> {
  __$$_AnalysisResultCopyWithImpl(
      _$_AnalysisResult _value, $Res Function(_$_AnalysisResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? averageSpeed = null,
  }) {
    return _then(_$_AnalysisResult(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: null == averageSpeed
          ? _value._averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_AnalysisResult extends _AnalysisResult {
  const _$_AnalysisResult(
      {required this.timePeriod, required final List<double> averageSpeed})
      : _averageSpeed = averageSpeed,
        super._();

  @override
  final double timePeriod;
  final List<double> _averageSpeed;
  @override
  List<double> get averageSpeed {
    if (_averageSpeed is EqualUnmodifiableListView) return _averageSpeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_averageSpeed);
  }

  @override
  String toString() {
    return 'AnalysisResult(timePeriod: $timePeriod, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalysisResult &&
            (identical(other.timePeriod, timePeriod) ||
                other.timePeriod == timePeriod) &&
            const DeepCollectionEquality()
                .equals(other._averageSpeed, _averageSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePeriod,
      const DeepCollectionEquality().hash(_averageSpeed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalysisResultCopyWith<_$_AnalysisResult> get copyWith =>
      __$$_AnalysisResultCopyWithImpl<_$_AnalysisResult>(this, _$identity);
}

abstract class _AnalysisResult extends AnalysisResult {
  const factory _AnalysisResult(
      {required final double timePeriod,
      required final List<double> averageSpeed}) = _$_AnalysisResult;
  const _AnalysisResult._() : super._();

  @override
  double get timePeriod;
  @override
  List<double> get averageSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_AnalysisResultCopyWith<_$_AnalysisResult> get copyWith =>
      throw _privateConstructorUsedError;
}
