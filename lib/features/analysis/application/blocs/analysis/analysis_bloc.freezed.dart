// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalysisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFileEvent value) pickFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickFileEvent value)? pickFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFileEvent value)? pickFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisEventCopyWith<$Res> {
  factory $AnalysisEventCopyWith(
          AnalysisEvent value, $Res Function(AnalysisEvent) then) =
      _$AnalysisEventCopyWithImpl<$Res, AnalysisEvent>;
}

/// @nodoc
class _$AnalysisEventCopyWithImpl<$Res, $Val extends AnalysisEvent>
    implements $AnalysisEventCopyWith<$Res> {
  _$AnalysisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PickFileEventCopyWith<$Res> {
  factory _$$_PickFileEventCopyWith(
          _$_PickFileEvent value, $Res Function(_$_PickFileEvent) then) =
      __$$_PickFileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickFileEventCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$_PickFileEvent>
    implements _$$_PickFileEventCopyWith<$Res> {
  __$$_PickFileEventCopyWithImpl(
      _$_PickFileEvent _value, $Res Function(_$_PickFileEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PickFileEvent implements _PickFileEvent {
  const _$_PickFileEvent();

  @override
  String toString() {
    return 'AnalysisEvent.pickFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickFileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
  }) {
    return pickFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
  }) {
    return pickFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFileEvent value) pickFile,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickFileEvent value)? pickFile,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFileEvent value)? pickFile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _PickFileEvent implements AnalysisEvent {
  const factory _PickFileEvent() = _$_PickFileEvent;
}

/// @nodoc
mixin _$AnalysisState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  AnalysisResult? get result => throw _privateConstructorUsedError;
  double? get timePeriod => throw _privateConstructorUsedError;
  List<String> get timePeriods => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisStateCopyWith<AnalysisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
          AnalysisState value, $Res Function(AnalysisState) then) =
      _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      AnalysisResult? result,
      double? timePeriod,
      List<String> timePeriods});

  $AnalysisResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? result = freezed,
    Object? timePeriod = freezed,
    Object? timePeriods = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AnalysisResult?,
      timePeriod: freezed == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as double?,
      timePeriods: null == timePeriods
          ? _value.timePeriods
          : timePeriods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalysisResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AnalysisResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnalysisStateCopyWith<$Res>
    implements $AnalysisStateCopyWith<$Res> {
  factory _$$_AnalysisStateCopyWith(
          _$_AnalysisState value, $Res Function(_$_AnalysisState) then) =
      __$$_AnalysisStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      AnalysisResult? result,
      double? timePeriod,
      List<String> timePeriods});

  @override
  $AnalysisResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_AnalysisStateCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$_AnalysisState>
    implements _$$_AnalysisStateCopyWith<$Res> {
  __$$_AnalysisStateCopyWithImpl(
      _$_AnalysisState _value, $Res Function(_$_AnalysisState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? result = freezed,
    Object? timePeriod = freezed,
    Object? timePeriods = null,
  }) {
    return _then(_$_AnalysisState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AnalysisResult?,
      timePeriod: freezed == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as double?,
      timePeriods: null == timePeriods
          ? _value._timePeriods
          : timePeriods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AnalysisState extends _AnalysisState {
  const _$_AnalysisState(
      {this.isLoading = false,
      this.error = '',
      this.result,
      this.timePeriod,
      final List<String> timePeriods = const []})
      : _timePeriods = timePeriods,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  final AnalysisResult? result;
  @override
  final double? timePeriod;
  final List<String> _timePeriods;
  @override
  @JsonKey()
  List<String> get timePeriods {
    if (_timePeriods is EqualUnmodifiableListView) return _timePeriods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timePeriods);
  }

  @override
  String toString() {
    return 'AnalysisState(isLoading: $isLoading, error: $error, result: $result, timePeriod: $timePeriod, timePeriods: $timePeriods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalysisState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.timePeriod, timePeriod) ||
                other.timePeriod == timePeriod) &&
            const DeepCollectionEquality()
                .equals(other._timePeriods, _timePeriods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, result,
      timePeriod, const DeepCollectionEquality().hash(_timePeriods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalysisStateCopyWith<_$_AnalysisState> get copyWith =>
      __$$_AnalysisStateCopyWithImpl<_$_AnalysisState>(this, _$identity);
}

abstract class _AnalysisState extends AnalysisState {
  const factory _AnalysisState(
      {final bool isLoading,
      final String error,
      final AnalysisResult? result,
      final double? timePeriod,
      final List<String> timePeriods}) = _$_AnalysisState;
  const _AnalysisState._() : super._();

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  AnalysisResult? get result;
  @override
  double? get timePeriod;
  @override
  List<String> get timePeriods;
  @override
  @JsonKey(ignore: true)
  _$$_AnalysisStateCopyWith<_$_AnalysisState> get copyWith =>
      throw _privateConstructorUsedError;
}
