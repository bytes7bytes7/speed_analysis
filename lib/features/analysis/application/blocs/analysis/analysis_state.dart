part of 'analysis_bloc.dart';

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState({
    @Default(false) bool isLoading,
    @Default('') String error,
    AnalysisResult? result,
    double? timePeriod,
    @Default([]) List<int> timePeriodsInMin,
  }) = _AnalysisState;

  const AnalysisState._();

  bool get hasResult {
    return result != null;
  }
}
