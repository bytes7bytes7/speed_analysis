// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_result_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalysisResultVM {
  String get timePeriod => throw _privateConstructorUsedError;
  List<String> get averageSpeed => throw _privateConstructorUsedError;
  String get totalTime => throw _privateConstructorUsedError;
  Map<String, String> get percentOfAverageSpeed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisResultVMCopyWith<AnalysisResultVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisResultVMCopyWith<$Res> {
  factory $AnalysisResultVMCopyWith(
          AnalysisResultVM value, $Res Function(AnalysisResultVM) then) =
      _$AnalysisResultVMCopyWithImpl<$Res, AnalysisResultVM>;
  @useResult
  $Res call(
      {String timePeriod,
      List<String> averageSpeed,
      String totalTime,
      Map<String, String> percentOfAverageSpeed});
}

/// @nodoc
class _$AnalysisResultVMCopyWithImpl<$Res, $Val extends AnalysisResultVM>
    implements $AnalysisResultVMCopyWith<$Res> {
  _$AnalysisResultVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? averageSpeed = null,
    Object? totalTime = null,
    Object? percentOfAverageSpeed = null,
  }) {
    return _then(_value.copyWith(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfAverageSpeed: null == percentOfAverageSpeed
          ? _value.percentOfAverageSpeed
          : percentOfAverageSpeed // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalysisResultVMCopyWith<$Res>
    implements $AnalysisResultVMCopyWith<$Res> {
  factory _$$_AnalysisResultVMCopyWith(
          _$_AnalysisResultVM value, $Res Function(_$_AnalysisResultVM) then) =
      __$$_AnalysisResultVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timePeriod,
      List<String> averageSpeed,
      String totalTime,
      Map<String, String> percentOfAverageSpeed});
}

/// @nodoc
class __$$_AnalysisResultVMCopyWithImpl<$Res>
    extends _$AnalysisResultVMCopyWithImpl<$Res, _$_AnalysisResultVM>
    implements _$$_AnalysisResultVMCopyWith<$Res> {
  __$$_AnalysisResultVMCopyWithImpl(
      _$_AnalysisResultVM _value, $Res Function(_$_AnalysisResultVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? averageSpeed = null,
    Object? totalTime = null,
    Object? percentOfAverageSpeed = null,
  }) {
    return _then(_$_AnalysisResultVM(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _value._averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfAverageSpeed: null == percentOfAverageSpeed
          ? _value._percentOfAverageSpeed
          : percentOfAverageSpeed // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_AnalysisResultVM implements _AnalysisResultVM {
  const _$_AnalysisResultVM(
      {required this.timePeriod,
      required final List<String> averageSpeed,
      required this.totalTime,
      required final Map<String, String> percentOfAverageSpeed})
      : _averageSpeed = averageSpeed,
        _percentOfAverageSpeed = percentOfAverageSpeed;

  @override
  final String timePeriod;
  final List<String> _averageSpeed;
  @override
  List<String> get averageSpeed {
    if (_averageSpeed is EqualUnmodifiableListView) return _averageSpeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_averageSpeed);
  }

  @override
  final String totalTime;
  final Map<String, String> _percentOfAverageSpeed;
  @override
  Map<String, String> get percentOfAverageSpeed {
    if (_percentOfAverageSpeed is EqualUnmodifiableMapView)
      return _percentOfAverageSpeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_percentOfAverageSpeed);
  }

  @override
  String toString() {
    return 'AnalysisResultVM(timePeriod: $timePeriod, averageSpeed: $averageSpeed, totalTime: $totalTime, percentOfAverageSpeed: $percentOfAverageSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalysisResultVM &&
            (identical(other.timePeriod, timePeriod) ||
                other.timePeriod == timePeriod) &&
            const DeepCollectionEquality()
                .equals(other._averageSpeed, _averageSpeed) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            const DeepCollectionEquality()
                .equals(other._percentOfAverageSpeed, _percentOfAverageSpeed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      timePeriod,
      const DeepCollectionEquality().hash(_averageSpeed),
      totalTime,
      const DeepCollectionEquality().hash(_percentOfAverageSpeed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalysisResultVMCopyWith<_$_AnalysisResultVM> get copyWith =>
      __$$_AnalysisResultVMCopyWithImpl<_$_AnalysisResultVM>(this, _$identity);
}

abstract class _AnalysisResultVM implements AnalysisResultVM {
  const factory _AnalysisResultVM(
          {required final String timePeriod,
          required final List<String> averageSpeed,
          required final String totalTime,
          required final Map<String, String> percentOfAverageSpeed}) =
      _$_AnalysisResultVM;

  @override
  String get timePeriod;
  @override
  List<String> get averageSpeed;
  @override
  String get totalTime;
  @override
  Map<String, String> get percentOfAverageSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_AnalysisResultVMCopyWith<_$_AnalysisResultVM> get copyWith =>
      throw _privateConstructorUsedError;
}
