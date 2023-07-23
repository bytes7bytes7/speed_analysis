import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_result_vm.freezed.dart';

@freezed
class AnalysisResultVM with _$AnalysisResultVM {
  const factory AnalysisResultVM({
    required String timePeriod,
    required List<String> averageSpeed,
    required String totalTime,
    required Map<String, String> percentOfAverageSpeed,
  }) = _AnalysisResultVM;
}
