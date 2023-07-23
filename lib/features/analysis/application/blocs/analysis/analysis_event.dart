part of 'analysis_bloc.dart';

@freezed
class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent.getDataFromFile() = _PickFileEvent;

  const factory AnalysisEvent.doAnalysis() = _DoAnalysisEvent;

  const factory AnalysisEvent.setTimePeriod({required int period}) =
      _SetTimePeriodEvent;

  const factory AnalysisEvent.clear() = _ClearEvent;

  const factory AnalysisEvent.export({
    required Uint8List speedChatImage,
    required Uint8List percentCharImage,
  }) = _ExportEvent;
}
