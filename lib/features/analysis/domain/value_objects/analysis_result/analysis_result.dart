import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_result.freezed.dart';

@freezed
class AnalysisResult with _$AnalysisResult {
  const factory AnalysisResult({
    required int timePeriod,
    required List<double> averageSpeed,
  }) = _AnalysisResult;

  const AnalysisResult._();

  Map<double, double> get percentOfAverageSpeed {
    final singlePercentPart = 100 / averageSpeed.length;

    // {speed: percent}
    final result = <double, double>{};
    for (final e in averageSpeed) {
      final oldPercent = result[e] ?? 0;

      result[e] = oldPercent + singlePercentPart;
    }

    return result;
  }
}
