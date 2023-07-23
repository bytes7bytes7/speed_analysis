part of 'analysis_bloc.dart';

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState({
    @Default(false) bool isLoading,
    @Default('') String info,
    @Default([]) List<SpeedTime> data,
    AnalysisResult? result,
    int? timePeriod,
    @Default([]) List<int> timePeriodsInMin,
  }) = _AnalysisState;

  const AnalysisState._();

  bool get hasResult {
    return result != null;
  }
}
