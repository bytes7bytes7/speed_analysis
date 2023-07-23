part of 'analysis_bloc.dart';

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState({
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _AnalysisState;
}
