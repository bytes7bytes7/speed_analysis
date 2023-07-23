part of 'analysis_bloc.dart';

@freezed
class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent.pickFile() = _PickFileEvent;
}
